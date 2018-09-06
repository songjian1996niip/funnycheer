package niip.funnycheer.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import niip.funnycheer.mapper.AdminMapper;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.User;
import niip.funnycheer.service.AdminService;
/**
 * 管理员业务逻辑实现类
 * @author niip
 *
 */
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;
	//查看所有用户
	public List<User> findAllUser(){
		return adminMapper.findAllUser();
	}

	//查看所有开发者
	public List<Developer> findAllDeveloper() {
		return adminMapper.findAllDeveloper();
	}

	//新增开发者
	public void insertDeveloper(String developerid,String developername) {
		adminMapper.insertDeveloper(developerid,developername);
	}
	//查看所有分类
	public List<ApplicationCategory> findAllCategory(){
		return adminMapper.findAllCategory();
	}
	
	//新增分类
	public void insertCategory(String appcategoryid, String appcategoryone, String appcategoryname) {
		adminMapper.insertCategory(appcategoryid,appcategoryone,appcategoryname);
	}

	//查询所有应用
	public List<Application> findAllApp() {
		return adminMapper.findAllApp();
	}

	//新增App
	public void insertApplication(Application application) {
		adminMapper.insertApplication(application);
	}
	
	//根据一级分类查出二级分类
	public List<ApplicationCategory> getAppcategoryByOne(String appcategoryone){
		return adminMapper.getAppcategoryByOne(appcategoryone);
	}
}
