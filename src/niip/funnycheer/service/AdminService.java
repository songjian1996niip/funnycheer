package niip.funnycheer.service;

import java.util.List;

import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.User;

/**
 * 管理员业务逻辑接口
 * @author niip
 *
 */
public interface AdminService {
	/**
	 * 查询所有用户
	 * @return
	 */
	List<User> findAllUser();
	/**
	 * 查询所有开发者
	 * @return
	 */
	List<Developer> findAllDeveloper();
	/**
	 * 新增开发者
	 */
	void insertDeveloper(String developerid,String developername);
	/**
	 * 查询所有分类
	 * @return
	 */
	List<ApplicationCategory> findAllCategory();
	/**
	 * 新增分类
	 * @param appcategoryid
	 * @param appcategoryone
	 * @param appcategoryname
	 */
	void insertCategory(String appcategoryid, String appcategoryone, String appcategoryname);
	/**
	 * 查询所有应用
	 * @return
	 */
	List<Application> findAllApp();
	/**
	 * 新增App
	 * @param application
	 */
	void insertApplication(Application application);
	List<ApplicationCategory> getAppcategoryByOne(String appcategoryone);
}
