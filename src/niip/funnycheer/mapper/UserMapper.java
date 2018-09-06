package niip.funnycheer.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import niip.funnycheer.pojo.User;

/**
 * 用户持久化接口
 * @author niip
 *
 */
public interface UserMapper {
	/**
	 * 向数据库中新增注册的用户
	 * @param user
	 */
	void insertUser(User user);
	
	/**
	 * 通过用户名来查找用户，作用场景：用户登录，注册
	 * @param username
	 * @return
	 */
	User getUserByUsername(String username);
	/**
	 * 通过用户昵称来查找用户，作用场景：注册，修改昵称
	 * @param usernickname
	 */
	User getUserByUserNickName(String usernickname);
	/**
	 * 通过用户邮箱来查找用户，作用场景：注册，修改邮箱
	 * @param useremail
	 * @return
	 */
	User getUserByUseremail(String useremail);
	/**
	 * 更新用户描述
	 * @param userdesc
	 */
	void updateUserDesc(@Param("userid")String userid,@Param("userdesc")String userdesc);
	/**
	 * 通过userid查询用户
	 * @param userid
	 * @return
	 */
	User getUserByUserid(String userid);
	/**
	 * 新增和更新用户基础信息
	 * @param userphone
	 * @param usersex
	 * @param userbirthday
	 */
	void updateUserBaseInfo(@Param("userid")String userid,
							@Param("userphone")String userphone, 
							@Param("usersex")String usersex, 
							@Param("userbirthday")String userbirthday,
							@Param("useridentity")Integer useridentity);
	/**
	 * 新增和更新专题主信息
	 * @param userid
	 * @param usertruename
	 * @param useraddress
	 * @param useridentitycard
	 */
	void updateUserSubjectInfo(@Param("userid")String userid, 
								@Param("usertruename")String usertruename, 
								@Param("useraddress")String useraddress, 
								@Param("useridentitycard")String useridentitycard);
}
