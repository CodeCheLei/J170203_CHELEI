package com.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.model.Readertype;
import com.opensymphony.xwork2.ModelDriven;
import com.services.IUserservice;

@Component("readertypeAction")
@Scope("prototype")
public class ReadertypeAction implements ModelDriven<Readertype>{
	private IUserservice us;
	private Readertype reat=new Readertype();
	
	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}
	
	public Readertype getReat() {
		return reat;
	}
	public void setReat(Readertype reat) {
		this.reat = reat;
	}

	@Override
	public Readertype getModel() {
		return reat;
	}
	
	public String getReadertype(){
		List list=us.getReadertype();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("list", list);
		return "yes";
	}
	
	public String addReadertype(){
		us.addreadertype(reat);
		return "yes";
	}
	
	public String delReadertype(){
		HttpServletRequest req=ServletActionContext.getRequest();
		String id=req.getParameter("id");
		System.out.println(id);
		us.delReadertype(Integer.valueOf(id));
		return "yes";
	}
}
