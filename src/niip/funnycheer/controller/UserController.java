package niip.funnycheer.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.accessibility.internal.resources.accessibility;

import net.sf.json.JSONArray;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.User;
import niip.funnycheer.service.ApplicationService;
import niip.funnycheer.service.UserService;
import niip.funnycheer.utils.UUIDUtils;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	private User user;
	/*@RequestMapping(value="home")
	public String toHome(HttpServletRequest request) {
		List<Application> list_app = applicationService.getHotApplication("应用");
		List<Application> list_game = applicationService.getHotApplication("游戏");
		request.setAttribute("listapp", list_app);
		request.setAttribute("listgame", list_game);
		//applicationController.getHotApp(request);
		return "home";
	}*/
	@RequestMapping(value="/")
	public String toHom() {
		
		return "home";
	}
	
	/**
	 * 跳转登录
	 * @return
	 */
	@RequestMapping(value="toLogin")
	public String toLogin() {
		return "login";
	}
	/**
	 * 跳转注册
	 * @return
	 */
	@RequestMapping(value="toRegist")
	public String toRegist() {
		return "register";
	}
	/**
	 * 	跳转应用分类
	 * @return
	 */
	@RequestMapping(value="toAppCategory")
	public String toAppCategory() {
		return "appcategory";
	}
	/**
	 * 	跳转游戏分类
	 * @return
	 */
	@RequestMapping(value="toGameCategoty")
	public String toGameCategoty() {
		return "gamecategory";
	}
	/**
	 * 用户注册
	 * @param username
	 * @param password
	 * @param useremail
	 * @param usernickname
	 * @return
	 */
	@RequestMapping(value="doRegist")
	public String doRegist(String username,String password,String useremail,
							String usernickname,HttpServletRequest request) {
		boolean f1 = userService.checkUserNicknameIsExist(usernickname);
		boolean f2 = userService.checkUsernameIsExist(username);
		boolean f3 = userService.checkUseremailIsExist(useremail);
		String usericon = "images/usericon/yysicon.png";
		if (f1&&f2&&f3) {
			User user = new User();
			user.setUserid(UUIDUtils.getId());//UUID随机生成不重复的用户id
			user.setUsername(username);//用户账号
			user.setPassword(password);
			user.setUseremail(useremail);
			user.setUsernickname(usernickname);
			user.setUsericon(usericon);//设置默认头像
			user.setUserregisttime(new Date());//注册时间
			user.setUseridentity(0);//用户身份默认0：普通用户
			//System.out.println(user);
			userService.insertUser(user);
			return "login";			
		} else {
			request.setAttribute("registFail", "都说了不行，还皮？作为惩罚清空输入框，重新再输一遍");
			return "register";
		}
	}
	
	/**
	 * ajax提示用户输入昵称是否有效。作用场所：注册，修改昵称
	 * @param usernickname
	 * @param request
	 * @return
	 */
    @RequestMapping("checkUserNickname")
    @ResponseBody
    public Map<String,Object> checkUserNickname(String usernickname,HttpServletRequest request){
    	//System.out.println(usernickname);
        Map<String,Object> resultMap = new HashMap<String, Object>();  
        boolean isExist = userService.checkUserNicknameIsExist(usernickname);
        //System.out.println(isExist);
        if(isExist == true){
            resultMap.put("resultNickname", "success");
            return resultMap;
        }else{
            resultMap.put("resultNickname", "notsuccess");
            return resultMap;
        }
    }
    /**
	 * ajax提示用户输入账号是否有效。作用场所：注册，登录
	 * @param usernickname
	 * @param request
	 * @return
	 */
    @RequestMapping("checkUsername")
    @ResponseBody
    public Map<String,Object> checkUsername(String username,HttpServletRequest request){
        //System.out.println(username);
    	Map<String,Object> resultMap = new HashMap<String, Object>();  
        boolean isExist = userService.checkUsernameIsExist(username);
        if(isExist == true){
            resultMap.put("resultUsername", "success");
            return resultMap;
        }else{
            resultMap.put("resultUsername", "notsuccess");
            return resultMap;
        }
    }
    /**
	 * ajax提示用户输入邮箱是否有效。作用场所：注册，修改邮箱
	 * @param usernickname
	 * @param request
	 * @return
	 */
    @RequestMapping("checkUseremail")
    @ResponseBody
    public Map<String,Object> checkUseremail(String useremail,HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();  
        boolean isExist = userService.checkUseremailIsExist(useremail);
        //System.out.println(useremail);
        if(isExist == true){
            resultMap.put("resultUseremail", "success");
            return resultMap;
        }else{
            resultMap.put("resultUseremail", "notsuccess");
            return resultMap;
        }
    }
	/**
	 * 用户登录
	 * @param username
	 * @param password
	 * @return
	 */
    @RequestMapping(value="doLogin")
    public String doLogin(String username,String password,HttpServletRequest request,HttpSession session) {
    	boolean flag = userService.checkUsernameIsExist(username);//判断用户输入的账号是否存在，不存在返回true,存在返回false
    	if (!flag) {//存在的情况
    		boolean flag2 = userService.userLogin(username,password);
    		if(flag2==true){
    			User user = userService.getUserByUsername(username);
    			session.setAttribute("user", user);
    			session.setMaxInactiveInterval(24*60*60);
    			//System.out.println("成功登录的用户："+user);
    			return "redirect:home";
    		}else {
    			request.setAttribute("msg1", "兄dei，密码出错了");
    			return "login";
			}
    	}else {
    		request.setAttribute("msg2", "兄dei，这么喜欢这个账号就去注册一个咯");
			return "login";
		}
    }
    @RequestMapping(value="toUserInfo")
    public String toUserInfo(String userid,HttpServletRequest request){
    	user = userService.getUserByUserid(userid);
    	request.setAttribute("user", user);
    	return "userinfo";
    }
    
    @RequestMapping(value="updateUserDesc")
    @ResponseBody
    public Map<String, Object> updateUserDesc(String userid,String userdesc){
    	userService.updateUserDesc(userid,userdesc);
    	user = userService.getUserByUserid(userid);
    	Map<String, Object>map = new HashMap<String, Object>();
    	map.put("user", user);
    	return map;
    }
    /**
     * 新增和修改用户基础信息
     * @param userid
     * @param userphone
     * @param usersex
     * @param userbirthday
     */
    @RequestMapping(value="updateUserBaseInfo")
    @ResponseBody
    public Map<String, Object> updateUserBaseInfo(String userid,String userphone,String usersex,String userbirthday,Integer useridentity){
    	System.out.println(userid+","+userphone+","+usersex+","+userbirthday);
    	userService.updateUserBaseInfo(userid,userphone,usersex,userbirthday,useridentity);
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("data", "更新成功，请刷新页面");
    	return map;
    }
    
    @RequestMapping(value="updateUserSubjectInfo")
    @ResponseBody
    public Map<String, Object> updateUserSubjectInfo(String userid,String usertruename,String useraddress,String useridentitycard) {
    	System.out.println(userid+","+usertruename+","+useraddress+","+useridentitycard);
    	userService.updateUserSubjectInfo(userid,usertruename,useraddress,useridentitycard);
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("data", "更新成功，请刷新页面");
    	return map;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /**
     *   用户退出
     * @param session
     * @return
     */
    @RequestMapping(value="exit")
	public String exit(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:home";
	}
}










