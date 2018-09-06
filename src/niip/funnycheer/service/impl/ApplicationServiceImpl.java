package niip.funnycheer.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.org.apache.bcel.internal.generic.NEW;

import niip.funnycheer.mapper.ApplicationMapper;
import niip.funnycheer.pojo.AppComment;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.PageBean;
import niip.funnycheer.service.ApplicationService;
/**
 * 应用和游戏的业务逻辑层实现类
 * @author niip
 *
 */
@Service
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	private ApplicationMapper applicationMapper;
	private Application application;
	private Developer developer;
	
	/**
	 * 获取热门应用或游戏[分类的一级目录]=》(List<Application>)
	 */
	public List<Application> getHotApplication(String appcategoryone) {
		List<Application> list= applicationMapper.getHotApplication(appcategoryone);
		return list;
	}
	
	/**
	 * 通过appid获取App对象[Application的id]=》(Application)
	 */
	public Application getApplicationByAppid(String appid) {
		return applicationMapper.getApplicationByAppid(appid);
	}
	
	/**
	 * 通过developerid获取App对象[Developer的id]=》(List<Application>)
	 * @param developerid
	 * @return
	 */
	public List<Application> getApplicationByDeveloperid(String developerid) {
		List<Application> list = applicationMapper.getApplicationByDeveloperid(developerid);
		return list;
	}
	
	/**
	 * 获取开发者[developerid]=》(包含了List<Application>的Developer)
	 */
	public Developer getDeveloperByDevelpoerid(String developerid) {
		List<Application> list = this.getApplicationByDeveloperid(developerid);
		developer = applicationMapper.getDeveloperByDevelpoerid(developerid);
		//把同一developerid的Application装到list集合中,并封装到developer对象中 
		developer.setList(list);
		return developer;
	}
	
	/**
	 * 通过categoryid获取App对象[categoryid]=》(List<Application>)
	 * @param categoryid
	 * @return
	 */
	public List<Application> getApplicationByAppCategoryid(String categoryid) {
		return applicationMapper.getApplicationByAppCategoryid(categoryid);
	}
	
	/**
	 * 通过一级目录（ 应用 或 游戏） 在appcategory表中查找出所有分类[appcategoryone]=》(List<ApplicationCategory>)
	 */
	public List<ApplicationCategory> getAppcategoryByAppcategoryOne(String appcategoryone) {
		return applicationMapper.getAppcategoryByAppcategoryOne(appcategoryone);
	}
	
	/**
	 * 获取所有Application总数
	 * @return
	 */
	public Integer getApplicationCount() {
		return applicationMapper.getApplicationCount();
	}
	
	/**
	 * 获取对应分类的Application总数
	 */
	public Integer getAppCountByCategoryid(String string) {
		return applicationMapper.getAppCountByCategoryid(string);
	}

	/**
	 * 分页获取Application封装到PageBean对象中[appcategoryone,currentPage]=》(PageBean<Application>)
	 */
	public PageBean<Application> getAllApplicationByPage(String appcategoryone,int currentPage) {
		List<String> list_appcategoryid = new ArrayList<String>();
		list_appcategoryid = applicationMapper.getAppCategoryidByAppCategoryOne(appcategoryone);
		//封装总记录数
		int totalApp = applicationMapper.getApplicationCountByAppCategoryOne(appcategoryone);
		//封装每页显示8个数据
		int pageSize = 8;
		PageBean<Application> pageBean = new PageBean<Application>(currentPage,totalApp,pageSize);
		//当前数据起始下标
		int startIndex = pageBean.getStartIndex();
		List<Application> list = applicationMapper.getAllApplicationByPage(list_appcategoryid,startIndex,pageSize);
		pageBean.setList(list);
		System.out.println(pageBean);
		return pageBean;
	}
	
	/**
	 * 分页获取选中二级分类的应用并封装到PageBean中
	 */
	public PageBean<Application> getSelectCateByPage(String appcategoryid, Integer currentPage) {

		List<String> list_appcategoryid = new ArrayList<String>();
		list_appcategoryid.add(appcategoryid);
		//封装总记录数//通过categoryid查询
		int totalApp = applicationMapper.getAppCountByCategoryid(appcategoryid);
		//封装每页显示8个数据
		int pageSize = 8;
		PageBean<Application> pageBean = new PageBean<Application>(currentPage,totalApp,pageSize);
		//当前数据起始下标
		int startIndex = pageBean.getStartIndex();
		List<Application> list = applicationMapper.getAllApplicationByPage(list_appcategoryid,startIndex,pageSize);
		pageBean.setList(list);
		return pageBean;
	}
	
	/**
	 * 新增评论
	 */
	public void insertComments(AppComment appComment) {
		applicationMapper.insertComments(appComment);
	}
	
	/**
	 * 获取Application的评论，分页显示
	 */
	public PageBean<AppComment> getCommentsByAppidPage(String appid,Integer currentPage) {
		int totalComments=applicationMapper.getCommentsCountByAppid(appid);
		//System.out.println("当前application评论总数："+totalComments);
		int pageSize= 5;
		PageBean<AppComment> pageBean = new PageBean<AppComment>(currentPage, totalComments, pageSize);
		int startIndex = pageBean.getStartIndex();
		List<AppComment> list = applicationMapper.getCommentsByAppidPage(appid, startIndex, pageSize);
		pageBean.setList(list);
		return pageBean;
	}
	
	//下载量增加
	public void toCountDownload(String appid) {
		applicationMapper.toCountDownload(appid);
	}
	
	
	
	
	
	//test
	public List<Application> test1(List<String> appcategoryid,int currentPage){
		//HashMap<String, Object> map = new HashMap<String, Object>();
		//封装总记录数
		int totalApp = applicationMapper.getAppCountByCategoryid("1");
		//封装每页显示12个数据
		int pageSize = 8;
		PageBean<Application> pageBean = new PageBean<Application>(currentPage,totalApp,pageSize);
		//当前数据起始下标
		int startIndex = pageBean.getStartIndex();
		//map.put("appcategoryid", "1");
		//map.put("startindex", pageBean.getStartIndex());
		//map.put("pagesize", pageBean.getPageSize());
		return applicationMapper.test1(appcategoryid,startIndex,pageSize);
	}
	public List<Application> test(String appname) {
		return applicationMapper.test(appname);
	}






	
	
}
