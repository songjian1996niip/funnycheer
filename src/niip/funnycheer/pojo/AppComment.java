package niip.funnycheer.pojo;

/**
 * app评论pojo
 * @author niip
 *
 */
public class AppComment {
	private String commentid;
	private String usernickname;
	private String appid;
	private String commentcontent;
	private String commentdate;
	private Integer commentscore;
	public String getCommentid() {
		return commentid;
	}
	public void setCommentid(String commentid) {
		this.commentid = commentid;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public String getAppid() {
		return appid;
	}
	public void setAppid(String appid) {
		this.appid = appid;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
	public String getCommentdate() {
		return commentdate;
	}
	public void setCommentdate(String commentdate) {
		this.commentdate = commentdate;
	}
	public Integer getCommentscore() {
		return commentscore;
	}
	public void setCommentscore(Integer commentscore) {
		this.commentscore = commentscore;
	}
	public String toString() {
		return "AppComment [commentid=" + commentid + ", usernickname=" + usernickname + ", appid=" + appid + ", commentcontent="
				+ commentcontent + ", commentdate=" + commentdate + ", commentscore=" + commentscore + "]";
	}
	
}
