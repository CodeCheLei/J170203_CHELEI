package text;

import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.mchange.v2.c3p0.ComboPooledDataSource;


public class Text {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");

		System.out.println(app.getBean("loginAction"));
	}

}
