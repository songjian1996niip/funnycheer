package niip.funnycheer.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import niip.funnycheer.mapper.UserMapper;
import niip.funnycheer.pojo.User;
import niip.funnycheer.service.UserService;
/**
 * 用户业务逻辑层实现类
 * @author niip
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	private User user;

	//用户注册
	public void insertUser(User user) {
		userMapper.insertUser(user);
	}
	
	//判断用户昵称是否存在
	public boolean checkUserNicknameIsExist(String usernickname) {
		user = userMapper.getUserByUserNickName(usernickname);
		//System.out.println("通过用户昵称查询出的："+user);
		if (user==null) {
			return true;
		}else {
			return false;
		}
	}

	//判断用户账号是否存在
	public boolean checkUsernameIsExist(String username) {
		user = userMapper.getUserByUsername(username);
		//System.out.println("通过用户昵称查询出的："+user);
		if (user==null) {
			return true;
		}else {
			return false;
		}
	}

	//判断用户邮箱是否存在
	public boolean checkUseremailIsExist(String useremail) {
		user = userMapper.getUserByUseremail(useremail);
		//System.out.println("通过用户昵称查询出的："+user);
		if (user==null) {
			return true;
		}else {
			return false;
		}
	}

	//用户登录
	public User getUserByUsername(String username) {
		return userMapper.getUserByUsername(username);		
	}
	//判断用户密码是否正确
	public boolean userLogin(String username, String password) {
		user = userMapper.getUserByUsername(username);
		if (user.getPassword().equals(password)) {
			//System.out.println("密码正确");
			return true;			
		}else {
			//System.out.println("密码错误");
			return false;
		}
	}

	//更新用户描述
	public void updateUserDesc(String userid,String userdesc) {
		userMapper.updateUserDesc(userid,userdesc);
	}
	//通过userid获取user对象
	public User getUserByUserid(String userid) {
		return userMapper.getUserByUserid(userid);
	}

	//新增和更新用户基本信息
	public void updateUserBaseInfo(String userid,String userphone, String usersex, String userbirthday,Integer useridentity) {
		userMapper.updateUserBaseInfo(userid, userphone,  usersex,  userbirthday,useridentity);
	}

	//新增和更新专题主信息
	public void updateUserSubjectInfo(String userid, String usertruename, String useraddress, String useridentitycard) {
		userMapper.updateUserSubjectInfo(userid, usertruename, useraddress,useridentitycard);
	}
}
