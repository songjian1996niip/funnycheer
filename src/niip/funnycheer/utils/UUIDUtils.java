package niip.funnycheer.utils;

import java.util.UUID;
/**
 * UUID工具类，用于生成唯一识别码，可作用于各种id
 * @author lenovo
 *
 */
public class UUIDUtils {
	/**
	 * 随机生成id
	 * @return
	 */
	public static String getId(){
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
	
	
	public static String getUUID64(){
		return getId()+getId();
	}
	
	/**
	 * 生成随机码
	 * @return
	 */
	public static String getCode(){
		return getId();
	}
	
}

