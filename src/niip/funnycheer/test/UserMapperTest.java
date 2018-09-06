package niip.funnycheer.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import niip.funnycheer.mapper.UserMapper;
import niip.funnycheer.pojo.User;
import niip.funnycheer.utils.UUIDUtils;

public class UserMapperTest {
	
	@Autowired
	private UserMapper userMapper;
	


	@Test
	public void insertUser_test1() {
		User user = new User();
		user.setUserid(UUIDUtils.getId());
		user.setUsername("zhangsan");
		user.setPassword("123");
		user.setUseremail("123@qq.com");
		user.setUsernickname("弓长");
		user.setUserregisttime(new Date());
		user.setUseridentity(0);
		System.out.println(user);
		userMapper.insertUser(user);
	}

}
