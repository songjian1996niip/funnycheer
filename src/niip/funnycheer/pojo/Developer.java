package niip.funnycheer.pojo;

import java.util.List;

/**
 * app的发行商
 * @author lenovo
 *
 */
public class Developer {
	
	private String developerid;//发行商id
	private String developername;//发行商名字
	private List<Application> list;
	public String getDeveloperid() {
		return developerid;
	}
	public void setDeveloperid(String developerid) {
		this.developerid = developerid;
	}
	public String getDevelopername() {
		return developername;
	}
	public void setDevelopername(String developername) {
		this.developername = developername;
	}
	
	public List<Application> getList() {
		return list;
	}
	public void setList(List<Application> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "Developer [developerid=" + developerid + ", developername=" + developername + "]";
	}
	
}
