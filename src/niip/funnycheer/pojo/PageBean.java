package niip.funnycheer.pojo;
/**
 * 分页的实体类
 * @author niip
 *
 */

import java.util.List;

public class PageBean<T> {
	private int currentPage;//当前页
	private int totalApp;//app的总数（总记录数）
	private int totalPage;//总页数
	private int pageSize;//每页的条数
	private int prePage;//前一页
	private int nextPage;//后一页
	private int startIndex;//每次分页的起始页号
	
	
	private List<T> list;//每页显示的数据集合
	
	private int startPage;//分页后第一个页号
	private int endPage;//分页后最后一个页号
	
	public PageBean() {
	}

	public PageBean(int currentPage, int totalApp, int pageSize) {
		this.currentPage = currentPage;
		this.totalApp = totalApp;
		this.pageSize = pageSize;
		
		//计算每页开始的编号,第一页从0开始
		startIndex = (currentPage-1)*pageSize;
		//计算总页数
		totalPage = (totalApp%pageSize==0)?(totalApp/pageSize):((totalApp/pageSize)+1);
		//分页的跳转按钮，每次显示5个
		//第一个按钮，第一个在当前页显示1，2，3，4，5页时，第一个按钮还是第一页，当第6页之后，第一个按钮的数字会改变
		startPage = currentPage-2;
		//最后一个按钮的数字，同上
		endPage = currentPage+2;
		//总页数大于5就按照以上格式显示，小于5最后一页就是最后一页，跳转按钮不需要改变
		if (totalPage>5) {
			if (startPage<1) {
				startPage = 1;
				endPage = startPage+4;
			}
			if (endPage>totalPage) {
				endPage = totalPage;
				startPage = endPage-4;
			}
		}else {
			startPage = 1;
			endPage = totalPage;
		}
	}

	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalApp() {
		return totalApp;
	}
	public void setTotalApp(int totalApp) {
		this.totalApp = totalApp;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getPrePage() {
		prePage = currentPage-1;
		if (prePage<1) {
			prePage=1;
		}
		return prePage;
	}
	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}
	public int getNextPage() {
		nextPage = currentPage+1;
		if (nextPage > totalPage) {
			nextPage = totalPage;
		}
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", totalApp=" + totalApp + ", totalPage=" + totalPage
				+ ", pageSize=" + pageSize + ", prePage=" + prePage + ", nextPage=" + nextPage + ", startIndex="
				+ startIndex + ", list=" + list + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
}
