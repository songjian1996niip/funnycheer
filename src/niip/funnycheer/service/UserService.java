package niip.funnycheer.service;

import java.util.Date;

import niip.funnycheer.pojo.User;

/**
 * 用户业务逻辑层接口
 * @author niip
 *
 */
public interface UserService {
	
	/**
	 * 用户注册
	 * @param user
	 */
	void insertUser(User user);
	/**
	 * 判断用户昵称是否存在
	 * @param usernickname
	 * @return
	 */
	boolean checkUserNicknameIsExist(String usernickname);
	/**
	 * 判断用户账号是否存在
	 * @param username
	 * @return
	 */
	boolean checkUsernameIsExist(String username);
	/**
	 * 判断用户邮箱是否存在
	 * @param useremail
	 * @return
	 */
	boolean checkUseremailIsExist(String useremail);
	/**
	 *通过username获取user对象， 用户登录
	 * @param username
	 * @return
	 */
	User getUserByUsername(String username);
	/**
	 * 通过userid获取user对象
	 * @param userid
	 * @return
	 */
	User getUserByUserid(String userid);
	/**
	 * 判断用户是否账号密码匹配
	 * @param username
	 * @param password
	 * @return
	 */
	boolean userLogin(String username, String password);
	/**
	 *  更新用户描述
	 * @param userdesc
	 */
	void updateUserDesc(String userid,String userdesc);
	/**
	 * 新增和更新用户基础信息
	 * @param userphone
	 * @param usersex
	 * @param userbirthday
	 */
	void updateUserBaseInfo(String userid,String userphone, String usersex, String userbirthday,Integer useridentity);
	/**
	 * 新增和更新专题主信息
	 * @param userid
	 */
	void updateUserSubjectInfo(String userid,String usertruename,String useraddress,String useridentitycard);
}
