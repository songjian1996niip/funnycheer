package niip.funnycheer.service;

import java.util.List;

import niip.funnycheer.pojo.AppComment;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.PageBean;

/**
 * 应用和游戏的业务逻辑层接口
 * @author niip
 *
 */
public interface ApplicationService {

	/**
	 *  获取热门应用或游戏集合
	 * @param appcategory
	 * @return 
	 */
	List<Application> getHotApplication(String appcategoryone);
	
	/**
	 * 通过appid获取Application对象
	 * @param appid
	 * @return
	 */
	Application getApplicationByAppid(String appid);
	
	/**
	 *  通过developerid获取Application对象集合
	 * @param developerid
	 * @return
	 */
	List<Application> getApplicationByDeveloperid(String developerid);
	
	/**
	 *   通过分类id获取application对象集合
	 * @param categoryid
	 * @return
	 */
	List<Application> getApplicationByAppCategoryid(String categoryid);
	
	/**
	 *   获取开发者对象
	 * @param appid
	 * @return
	 */
	Developer getDeveloperByDevelpoerid(String appid);
	
	/**
	 *   通过 '应用' 或 '游戏' 在appcategory表中查找出所有分类id
	 * @param appcategoryone
	 * @return
	 */
	List<ApplicationCategory> getAppcategoryByAppcategoryOne(String appcategoryone);
	
	/**
	 * 获取所有Application总数
	 * @return
	 */
	Integer getApplicationCount();
	
	/**
	 * 获取对应分类的Application总数
	 * @param string
	 * @return
	 */
	Integer getAppCountByCategoryid(String string);
	/**
	 * 分页获取Application封装到PageBean对象中
	 * @param currentPage
	 * @param appcategoryone 
	 * @return
	 */
	PageBean<Application> getAllApplicationByPage(String appcategoryone,int currentPage);
	
	/**
	 * 分页获取选中二级分类的应用并封装到PageBean中
	 * @param appcategoryid
	 * @param currentPage
	 * @return
	 */
	PageBean<Application> getSelectCateByPage(String appcategoryid, Integer currentPage);
	
	/**
	 * 新增评论
	 * @param appComment
	 */
	void insertComments(AppComment appComment);
	/**
	 *根据appid获取分页评论
	 * @param appid
	 * @return
	 */
	PageBean<AppComment> getCommentsByAppidPage(String appid,Integer currentPage);
	/**
	 * 点击下载后，增加下载量
	 * @param appid
	 */
	void toCountDownload(String appid);
	
	
	
	
	
	//test
	List<Application> test1(List<String> appcategoryid,int currentPage);
	
	List<Application> test(String appname);





	
	
	
	
	
	
	
	
	
	
	
}
