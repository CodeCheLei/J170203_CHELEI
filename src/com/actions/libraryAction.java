package com.actions;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.model.library;
import com.opensymphony.xwork2.ModelDriven;
import com.services.IUserservice;

@Controller("libraryAction")
@Scope("prototype")
public class libraryAction implements ModelDriven<library>{
private IUserservice us;
private library lib=new library();	
	
	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}
	
	@Override
	public library getModel() {
		// TODO Auto-generated method stub
		return lib;
	}
	
	public library getLib() {
		return lib;
	}

	public void setLib(library lib) {
		this.lib = lib;
	}
	
	public String getLibrary(){
		library lib=us.getLibrary();
		HttpServletResponse res=ServletActionContext.getResponse();
		HttpServletRequest request=ServletActionContext.getRequest();
		res.setContentType("text/html;charset=utf-8");
		HttpSession session=request.getSession();
		session.setAttribute("library", lib);
		try {
			request.setCharacterEncoding("utf-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "yes";
	}
	
	public String update(){
//		HttpServletRequest request=ServletActionContext.getRequest();
		lib.setId(1);
//		System.out.println(lib);
//		System.out.println(request.getParameter("introduce"));
		us.update(lib);
		return "yes";
	}


}
