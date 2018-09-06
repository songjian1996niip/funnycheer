package niip.funnycheer.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class UploadUtils {
//	,String path
	public static String uploadAppPic(HttpServletRequest request,MultipartFile file,String appcategoryone) {
		String picName = file.getOriginalFilename();
//		System.out.println(appcategoryone);
		String path="";
		//图片上传路径
		if (appcategoryone.equals("应用")) {
			path = request.getSession().getServletContext().getRealPath("/images/appicon/");
		}else if (appcategoryone.equals("游戏")) {
			path = request.getSession().getServletContext().getRealPath("/images/gameicon/");
		}else {
			
		}
//		System.out.println(path);
		String picurl=(path+picName).trim().substring(60).replaceAll("\\\\","/");
//		System.out.println(picurl);
		File file2 = new File(path);
		if (!file2.exists()) {
			file2.mkdirs();
		}
		if (!file.isEmpty()) {
			try {
				InputStream inputStream = file.getInputStream();
				FileOutputStream outputStream = new FileOutputStream(path+picName);
				int l=0;
				while ((l=inputStream.read())!=-1) {
					outputStream.write(l);
				}
				outputStream.close();
				inputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return picurl;
	}
}
