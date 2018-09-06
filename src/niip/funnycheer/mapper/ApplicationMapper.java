package niip.funnycheer.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import niip.funnycheer.pojo.AppComment;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;

/**
 * 应用和游戏的持久化接口
 * @author niip
 *
 */
public interface ApplicationMapper {
	/**
	 * 查找热门应用或游戏（根据分类的一级目录）,根据下载量排行，并且限制前8个【查找】
	 * @param app
	 * @return
	 */
	List<Application> getHotApplication(String appcategoryone);
	/**
	 * 根据appid查询App所有信息【查找】
	 * @param appid
	 * @return
	 */
	Application getApplicationByAppid(String appid);
	/**
	 * 根据developerid查询App所有信息【查找】
	 * @param developerid
	 * @return
	 */
	List<Application> getApplicationByDeveloperid(String developerid);
	/**
	 * 根据developerid查询开发者【查找】
	 * @param appid
	 * @return
	 */
	Developer getDeveloperByDevelpoerid(String developerid);
	/**
	 * 根据categoryid查询App所有信息【查找】
	 * @param categoryid
	 * @return
	 */
	List<Application> getApplicationByAppCategoryid(String categoryid);
	/**
	 * 通过 '应用' 或 '游戏' 在appcategory表中查找出所有分类id
	 * @param appcategoryone
	 * @return
	 */
	List<ApplicationCategory> getAppcategoryByAppcategoryOne(String appcategoryone);
	/**
	 * 获取所有Application总数【查找】
	 * @return
	 */
	Integer getApplicationCount();
	/**
	 * 根据当前一级目录（应用或游戏）获取所有Application总数【查找】
	 * @param appcategoryone
	 * @return
	 */
	Integer getApplicationCountByAppCategoryOne(String appcategoryone);
	/**
	 * 获取当前分类的Application总数【查找】
	 * @param string
	 * @return
	 */
	Integer getAppCountByCategoryid(String appcategoryid);
	/**
	 * 根据当前一级目录（应用或游戏）获取所有分类id（appcategoryid）的集合【查找】
	 * @param appcategoryone
	 * @return
	 */
	List<String> getAppCategoryidByAppCategoryOne(String appcategoryone);
	
	/**
	 * 根据分类id获取Application分页（startIndex,pagesize）
	 * @return
	 */
	List<Application> getAllApplicationByPage(@Param("list")List<String> list_appcategoryid,
												@Param("startindex")Integer startIndex,
												@Param("pagesize")Integer pagesize);
	
	/**
	 * 根据appid获取评论总数
	 * @param appid
	 * @return
	 */
	Integer getCommentsCountByAppid(String appid);
	
	/**
	 * 根据appid获取评论分页
	 * @param appid
	 * @param startIndex
	 * @param pagesize
	 * @return
	 */
	List<AppComment> getCommentsByAppidPage(@Param("appid")String appid,
											@Param("startindex")Integer startIndex,
											@Param("pagesize")Integer pagesize);
	/**
	 * 新增评论
	 * @param appComment
	 */
	void insertComments(AppComment appComment);
	/**
	 * Application的下载量增加
	 * @param appid
	 */
	void toCountDownload(String appid);
	
	
	
	
	
	//test1
	List<Application> test1(@Param("list")List<String> appcategoryid,
								@Param("startindex")Integer i,
								@Param("pagesize")Integer pagesize);
	
	List<Application> test(@Param("appname")String appname);
	
	
	
	
	
}
