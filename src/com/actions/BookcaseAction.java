package com.actions;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.model.Bookcase;
import com.model.library;
import com.opensymphony.xwork2.ModelDriven;
import com.services.IUserservice;

@Controller("bookcaseAction")
@Scope("prototype")
public class BookcaseAction{
	private IUserservice us;
	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}
	

	public String getBookcase(){
		List list=us.getBookcase();
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession session=req.getSession();
		session.setAttribute("list", list);
		return "yes";
	}
	
	public String addBookcase(){
		HttpServletRequest req=ServletActionContext.getRequest();
		Bookcase bc=new Bookcase();
		System.out.println(req.getParameter("names"));
		bc.setName(req.getParameter("names"));
		us.addBookcase(bc);
		return "yes";
	}
	
	public String delBookcase(){
		HttpServletRequest req=ServletActionContext.getRequest();
		System.out.println(Integer.valueOf(req.getParameter("id")));
		us.delBookcase(Integer.valueOf(req.getParameter("id")));
		return "yes";
	}
}
