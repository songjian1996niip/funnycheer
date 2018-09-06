package niip.funnycheer.controller;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import niip.funnycheer.pojo.AppComment;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.PageBean;
import niip.funnycheer.service.ApplicationService;
import niip.funnycheer.utils.UUIDUtils;

/**
 * Application控制器
 * @author niip
 *
 */
@Controller
public class ApplicationController {
	
	@Autowired
	private ApplicationService applicationService;
	private Application application;
	private Developer developer;
	private AppComment appComment;
	
	/**
	 *  主页跳转并显示热门应用
	 * @return
	 */
	@RequestMapping(value="home")
	public String getHotApp(HttpServletRequest request) {
		List<Application> list_app = applicationService.getHotApplication("应用");
		List<Application> list_game = applicationService.getHotApplication("游戏"); 
		request.setAttribute("listapp", list_app);
		request.setAttribute("listgame", list_game);
		return "home";
	}
	/**
	 *  跳转到单个APP详情页面
	 * @return
	 */
	@RequestMapping(value="toSingleApp")//在这页面加载出第一页评论
    public String toSingleApp(String appid,@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,HttpServletRequest request) {
		//获取Application信息
		//通过appid获取对象
		application = applicationService.getApplicationByAppid(appid);
		request.setAttribute("application", application);
		//List<Application>list = applicationService.getApplicationByDeveloperid(application.getDeveloperid());
		//request.setAttribute("listsameDr", list);
		//获取同一开发者的所有Application
		//通过developerid获取开发者
		developer = applicationService.getDeveloperByDevelpoerid(application.getDeveloperid());
		request.setAttribute("developer", developer);
		//获取相似的（同一分类的）Application
		//通过categoryid获取分类对象
		List<Application> list2 = applicationService.getApplicationByAppCategoryid(application.getCategoryid());
		request.setAttribute("likelist", list2);
		PageBean<AppComment> pageBean = applicationService.getCommentsByAppidPage(appid, currentPage);
		request.setAttribute("pageBean", pageBean);
		//System.out.println(pageBean);
    	return "singleapp";
    }
	/**
	 *  跳转到所有应用页面,并分页显示
	 * @return
	 */
	@RequestMapping(value="toAllApplication")
	public String toAllApplication(@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,
										String appcategoryone,HttpServletRequest request) {
		//通过appcategoryone在appcategory表中查找出所有分类id
		List<ApplicationCategory> list_appcategory = applicationService.getAppcategoryByAppcategoryOne(appcategoryone);
		//用List集合封装appcategoryid
/*		List<String> appcategoryid = new ArrayList<String>();
		for (ApplicationCategory applicationCategory : list_appcategory) {
			appcategoryid.add(applicationCategory.getAppcategoryid());
		}*/
		PageBean<Application> pageBean = applicationService.getAllApplicationByPage(appcategoryone,currentPage); 
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("listappcategory", list_appcategory);
		return "allapplication";
	}
		
	@RequestMapping(value="toCategoryList")
	public String toCategoryList(@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,
									String appcategoryone,String appcategoryid,HttpServletRequest request) {
		List<ApplicationCategory> list_appcategory = applicationService.getAppcategoryByAppcategoryOne(appcategoryone);
		request.setAttribute("listappcategory", list_appcategory);
		PageBean<Application> pageBean = applicationService.getSelectCateByPage(appcategoryid,currentPage);
		request.setAttribute("pageBean", pageBean);
		return "allapplication";
	}
	@RequestMapping(value="toComment")
	@ResponseBody
	public JSONObject toComment(String usernickname,String appid,String comment,Integer score,
							@RequestParam(value="currentPage",defaultValue="1")Integer currentPage) {
		//System.out.println(userid+","+appid+","+comment+","+score);
		AppComment appComment =  new AppComment();
		appComment.setCommentid(UUIDUtils.getId());
		appComment.setAppid(appid);
		appComment.setUsernickname(usernickname);
		String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		appComment.setCommentdate(date);
		appComment.setCommentcontent(comment);
		appComment.setCommentscore(score);
		//System.out.println(appComment);
		applicationService.insertComments(appComment);
		PageBean<AppComment> pageBean = applicationService.getCommentsByAppidPage(appid,currentPage);
//		System.out.println(pageBean);
		JSONObject jsonObject = JSONObject.fromObject(pageBean);
		//System.out.println(jsonObject);
		return jsonObject;
	}
	/**
	 * ajax分页显示评论
	 * @param currentPage
	 * @param appid
	 * @return
	 */
	@RequestMapping(value="doCommentPage")
	@ResponseBody
	public JSONObject doCommentPage(@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,
								String appid) {
		//System.out.println(currentPage+","+appid);
		PageBean<AppComment> pageBean = applicationService.getCommentsByAppidPage(appid,currentPage);
		System.out.println("ajax分页："+pageBean);
		JSONObject jsonObject = JSONObject.fromObject(pageBean);
		//System.out.println(jsonObject);
		return jsonObject;
	}
	/**
	 * 点击下载后，下载量加1
	 * @param appid
	 */
	@RequestMapping(value="toCountDownload")
	@ResponseBody
	public void toCountDownload(String appid) {
		applicationService.toCountDownload(appid);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="test")
	@ResponseBody
	public String test(String data) {
		//List<Application> 
		//Map<String, List<Application>> map = new HashMap<String,List<Application>>();
		List<Application> list = applicationService.test(data);
		/*for (Application application : list) {
			System.out.println(application);
		}*/
		//map.put("list", list);
		JSONArray jsonArray = JSONArray.fromObject(list);
		//System.out.println(jsonArray);
		String string = jsonArray.toString();
		//System.out.println(string);
		//return list;
		return string;
	}
}
