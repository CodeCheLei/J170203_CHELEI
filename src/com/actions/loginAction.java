package com.actions;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.services.IUserservice;

@Controller("loginAction")
@Scope("prototype")
public class loginAction {
	

	private IUserservice us;

	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}

	public String login(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String name=request.getParameter("name");
		String pwd=request.getParameter("password");
		boolean flg=us.login(name, pwd);
		if(flg){
			return "yes";
		}
		return "no";
	}

	
}
