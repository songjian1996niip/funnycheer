package niip.funnycheer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.User;

/**
 * 管理员持久层接口
 * @author niip
 *
 */
public interface AdminMapper {
	/**
	 * 查出所有用户
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
	 * @param appcategoryid
	 * @param appcategoryname
	 */
	void insertDeveloper(@Param("developerid")String developerid, @Param("developername")String developername);
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
	void insertCategory(@Param("appcategoryid")String appcategoryid, @Param("appcategoryone")String appcategoryone, @Param("appcategoryname")String appcategoryname);
	/**
	 * 查询所有App
	 * @return
	 */
	List<Application> findAllApp();
	/**
	 * 插入App
	 * @param application
	 */
	void insertApplication(Application application);
	/**
	 * 根据一级分类查询二级分类
	 * @param appcategoryone
	 * @return
	 */
	List<ApplicationCategory> getAppcategoryByOne(String appcategoryone);
}
