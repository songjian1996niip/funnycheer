package niip.funnycheer.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import net.sf.json.JSONArray;
import niip.funnycheer.pojo.Application;
import niip.funnycheer.pojo.ApplicationCategory;
import niip.funnycheer.pojo.Developer;
import niip.funnycheer.pojo.User;
import niip.funnycheer.service.AdminService;
import niip.funnycheer.utils.UUIDUtils;
import niip.funnycheer.utils.UploadUtils;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
//	private Application application;
	
	@RequestMapping(value="admin")
	public String toAdminLogin() {
			return "adminlogin";
	}
	
	@RequestMapping(value="doAdminLogin")
	public String  doAdminLogin(String adminname,String adminwd,HttpServletRequest request) {
		if (adminname.equals("admin")&&adminwd.equals("123456")) {
			return "adminoperate";			
		}else {
			request.setAttribute("msg", "账号或者密码错误");
			return "adminlogin";
		}
	}
	
	/**
	 * 查询所有App
	 * @return
	 */
	@RequestMapping(value="operateApp")
	@ResponseBody
	public List<Application> operateApp() {
		List<Application> list = adminService.findAllApp();
		return list;
	}
	
	/**
	 * 查询所有用户
	 * @return
	 */
	@RequestMapping(value="operateUser")
	@ResponseBody
	public List<User> operateUser() {
		List<User> list = adminService.findAllUser();
		return list;
	}
	@RequestMapping(value="uploadApp")
	@ResponseBody
	public Integer uploadApp(HttpServletRequest request) {
		Application application = new Application();
		//解析请求数据
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest)request;
		String appname = mRequest.getParameter("appname");
		String appcategoryone = mRequest.getParameter("appcategoryone");
		String appcategoryid = mRequest.getParameter("appcategoryid");
		String appsynopsis = mRequest.getParameter("appsynopsis");
		String appsizes = mRequest.getParameter("appsize");
		Double appsize =  Double.parseDouble(appsizes);//大小转型
		String appversion = mRequest.getParameter("appversion");
		String developerid = mRequest.getParameter("developerid");
		String appprices = mRequest.getParameter("appprice");
		Double appprice = Double.parseDouble(appprices);
		String appdesc = mRequest.getParameter("appdesc");
		Date appupdatetime = new Date();
		
		MultipartFile file = mRequest.getFile("appicon");
		String appicon = UploadUtils.uploadAppPic(request, file, appcategoryone);
		//封装
		String appid = UUIDUtils.getId();
		application.setAppid(appid);
		application.setAppname(appname);
		application.setCategoryid(appcategoryid);
		application.setDeveloperid(developerid);
		application.setAppsize(appsize);
		application.setAppversion(appversion);
		application.setAppprice(appprice);
		application.setAppsynopsis(appsynopsis);
		application.setAppdesc(appdesc);
		application.setAppicon(appicon);
		application.setAppupdatetime(appupdatetime);
//		System.out.println(appicon);
		//request.setAttribute("msg", "上传成功");
		adminService.insertApplication(application);
		return 1;
	}
	
	/**
	 * 根据一级分类查出二级分类
	 * @param appcategoryone
	 */
	@RequestMapping(value="getAppcategoryByOne")
	@ResponseBody
	public JSONArray getAppcategoryByOne(String appcategoryone){
		List<ApplicationCategory> list = adminService.getAppcategoryByOne(appcategoryone);
		JSONArray jsonArray = JSONArray.fromObject(list);
		return jsonArray;
//		List<ApplicationCategory>
	}
	
	
	/**
	 * 查询所有开发者
	 * @return
	 */
	@RequestMapping(value="operateDeveloper")
	@ResponseBody
	public List<Developer> operateDeveloper() {
		List<Developer> list = adminService.findAllDeveloper();
		return list;
	}
	/**
	 * 新增开发者
	 * @return
	 */
	@RequestMapping(value="addDevloper")
	@ResponseBody
	public Integer addDevloper(String developername) {
		String developerid=UUIDUtils.getId();
		adminService.insertDeveloper(developerid,developername);
		
		return 1;
	}
	
	/**
	 * 查询所有分类
	 * @return
	 */
	@RequestMapping(value="operateCategory")
	@ResponseBody
	public List<ApplicationCategory> operateCategory() {
		List<ApplicationCategory> list = adminService.findAllCategory();
		return list;
	}
	/**
	 * 新增分类
	 * @return
	 */
	@RequestMapping(value="addCategory")
	@ResponseBody
	public Integer addCategory(String appcategoryone,String appcategoryname) {
		String appcategoryid=UUIDUtils.getId();
		adminService.insertCategory(appcategoryid,appcategoryone,appcategoryname);
		return 1;
	}
	
	@RequestMapping(value="adminexit")
	public String adminexit() {
		return "adminlogin";
	}
}
