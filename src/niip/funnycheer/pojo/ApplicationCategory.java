package niip.funnycheer.pojo;

import java.util.List;

/**
 * app的分类pojo
 * @author lenovo
 *
 */
public class ApplicationCategory {
	private String appcategoryid;//app分类id
	private String appcategoryone;//app一级分类：应用，游戏
	private String appcategoryname;//app分类名称
	private List<Application> applications;
	public String getAppcategoryid() {
		return appcategoryid;
	}
	public void setAppcategoryid(String appcategoryid) {
		this.appcategoryid = appcategoryid;
	}
	public String getAppcategoryname() {
		return appcategoryname;
	}
	public void setAppcategoryname(String appcategoryname) {
		this.appcategoryname = appcategoryname;
	}
	
	public String getAppcategoryone() {
		return appcategoryone;
	}
	public void setAppcategoryone(String appcategoryone) {
		this.appcategoryone = appcategoryone;
	}
	
	public List<Application> getApplications() {
		return applications;
	}
	public void setApplications(List<Application> applications) {
		this.applications = applications;
	}
	@Override
	public String toString() {
		return "AppCategory [appcategoryid=" + appcategoryid + ", appcategoryone=" + appcategoryone
				+ ", appcategoryname=" + appcategoryname + "]";
	}
	
	
}
