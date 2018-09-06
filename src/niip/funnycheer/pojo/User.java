package niip.funnycheer.pojo;
/**
 * 	用户pojo
 * @author lenovo
 *
 */

import java.util.Date;

public class User {
	
	private String userid;//用户id
	private String username;//用户账号
	private String password;//用户密码
	private String usernickname;//用户昵称
	private String useremail;//用户邮箱
	private String userphone;//用户电话
	private String usersex;//用户性别
	private String usericon;//用户头像
	private Date userbirthday;//用户生日
	private Date userregisttime;//用户注册日期
	private Integer useridentity;//用户身份{0：普通用户（只是注册了的用户），1：基础用户（完善了基本信息），2：专题主（可以发表应用测评）}
	private String usertruename;//用户真实姓名
	private String useraddress;//用户地址
	private String useridentitycard;//用户身份证号
	private String userqq;//用户qq
	private String userweibo;//用户微博
	private String userwechat;//用户微信
	private String userdesc;//用户自我描述
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public Date getUserbirthday() {
		return userbirthday;
	}
	public void setUserbirthday(Date userbirthday) {
		this.userbirthday = userbirthday;
	}
	public Date getUserregisttime() {
		return userregisttime;
	}
	public void setUserregisttime(Date userregisttime) {
		this.userregisttime = userregisttime;
	}
	public Integer getUseridentity() {
		return useridentity;
	}
	public void setUseridentity(Integer useridentity) {
		this.useridentity = useridentity;
	}
	public String getUsertruename() {
		return usertruename;
	}
	public void setUsertruename(String usertruename) {
		this.usertruename = usertruename;
	}
	public String getUseridentitycard() {
		return useridentitycard;
	}
	public void setUseridentitycard(String useridentitycard) {
		this.useridentitycard = useridentitycard;
	}
	public String getUserqq() {
		return userqq;
	}
	public void setUserqq(String userqq) {
		this.userqq = userqq;
	}
	public String getUserweibo() {
		return userweibo;
	}
	public void setUserweibo(String userweibo) {
		this.userweibo = userweibo;
	}
	public String getUserwechat() {
		return userwechat;
	}
	public void setUserwechat(String userwechat) {
		this.userwechat = userwechat;
	}
	
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", usernickname="
				+ usernickname + ", useremail=" + useremail + ", userphone=" + userphone + ", usersex=" + usersex
				+",usericon="+usericon
				+ ", userbirthday=" + userbirthday + ", userregisttime=" + userregisttime + ", useridentity="
				+ useridentity + ", usertruename=" + usertruename + ", useraddress=" + useraddress
				+ ", useridentitycard=" + useridentitycard + ", userqq=" + userqq + ", userweibo=" + userweibo
				+ ", userwechat=" + userwechat +",userdesc="+userdesc+"]";
	}
	public String getUserdesc() {
		return userdesc;
	}
	public void setUserdesc(String userdesc) {
		this.userdesc = userdesc;
	}
	public String getUsericon() {
		return usericon;
	}
	public void setUsericon(String usericon) {
		this.usericon = usericon;
	}
	
	
}
