package niip.funnycheer.pojo;
/**
 * 	app的pojo
 * @author lenovo
 *
 */
import java.util.Date;

public class Application {
	private String appid;//appid
	private String appname;//app名称
	private String appcategoryid;//类别id
	//private ApplicationCategory applicationCategory;
	private String developerid;//发行商id
//	private Developer developer;//发行商
	private Double appsize;//app大小
	private String appversion;//app版本
	private Double appprice;//app价格（默认0：免费下载，非0是下载的价格）
	private Integer appdownloadcount;//app下载量
	private String appsystem;//app适用系统
	private String appsynopsis;//app简介
	private String appdesc;//app详情
	private String appicon;//app图片
	private String appdownloadlink;//app下载链接
	private Integer appscore;//app评分，1-10，半星对应1分
	//app评论数
	private Date appupdatetime;//app更新时间
	private String appscreenshot;//app截图路径
	
	public String getAppid() {
		return appid;
	}
	public void setAppid(String appid) {
		this.appid = appid;
	}
	public String getAppname() {
		return appname;
	}
	public void setAppname(String appname) {
		this.appname = appname;
	}
	
	////////////////////////////////////////////////////////////
	public String getCategoryid() {
		return appcategoryid;
	}
	public void setCategoryid(String categoryid) {
		this.appcategoryid = categoryid;
	}
	public String getDeveloperid() {
		return developerid;
	}
	public void setDeveloperid(String developerid) {
		this.developerid = developerid;
	}
	
	/*public Developer getDeveloper() {
		return developer;
	}
	public void setDeveloper(Developer developer) {
		this.developer = developer;
	}*/
	////////////////////////////////////////////////////////////
	public Double getAppsize() {
		return appsize;
	}
	public void setAppsize(Double appsize) {
		this.appsize = appsize;
	}
	public String getAppversion() {
		return appversion;
	}
	public void setAppversion(String appversion) {
		this.appversion = appversion;
	}
	public Double getAppprice() {
		return appprice;
	}
	public void setAppprice(Double appprice) {
		this.appprice = appprice;
	}
	public Integer getAppdownloadcount() {
		return appdownloadcount;
	}
	public void setAppdownloadcount(Integer appdownloadcount) {
		this.appdownloadcount = appdownloadcount;
	}
	public String getAppsystem() {
		return appsystem;
	}
	public void setAppsystem(String appsystem) {
		this.appsystem = appsystem;
	}
	public String getAppsynopsis() {
		return appsynopsis;
	}
	public void setAppsynopsis(String appsynopsis) {
		this.appsynopsis = appsynopsis;
	}
	
	public String getAppdesc() {
		return appdesc;
	}
	public void setAppdesc(String appdesc) {
		this.appdesc = appdesc;
	}
	public String getAppicon() {
		return appicon;
	}
	public void setAppicon(String appicon) {
		this.appicon = appicon;
	}
	public String getAppdownloadlink() {
		return appdownloadlink;
	}
	public void setAppdownloadlink(String appdownloadlink) {
		this.appdownloadlink = appdownloadlink;
	}
	public Integer getAppscore() {
		return appscore;
	}
	public void setAppscore(Integer appscore) {
		this.appscore = appscore;
	}
	public Date getAppupdatetime() {
		return appupdatetime;
	}
	public void setAppupdatetime(Date appupdatetime) {
		this.appupdatetime = appupdatetime;
	}
	public String getAppscreenshot() {
		return appscreenshot;
	}
	public void setAppscreenshot(String appscreenshot) {
		this.appscreenshot = appscreenshot;
	}
	@Override
	public String toString() {
		return "App [appid=" + appid + ", appname=" + appname 
				+ ", categoryid=" + appcategoryid 
				+",developeid="+developerid
				/*+ ", developername="+ developer.getDevelopername() */
				+ ", appsize=" + appsize + ", appversion=" + appversion + ", appprice=" + appprice
				+ ", appdownloadcount=" + appdownloadcount + ", appsystem=" + appsystem 
				+ ", appsynopsis=" + appsynopsis+",appdesc="+appdesc
				+ ", appicon=" + appicon + ", appdownloadlink=" + appdownloadlink + ", appscore=" + appscore
				+ ", appupdatetime=" + appupdatetime + ", appscreenshot=" + appscreenshot + "]";
	}
	
	
}
