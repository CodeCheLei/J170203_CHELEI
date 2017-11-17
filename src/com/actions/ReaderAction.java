package com.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.model.Reader;
import com.opensymphony.xwork2.ModelDriven;
import com.services.IUserservice;

@Component("readerAction")
@Scope("prototype")
public class ReaderAction implements ModelDriven<Reader>{
	private IUserservice us;
	private Reader rea=new Reader();

	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}
	@Override
	public Reader getModel() {
		return rea;
	}
	public Reader getRea() {
		return rea;
	}
	public void setRea(Reader rea) {
		this.rea = rea;
	}
	
	public String getReader(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		List list= us.getReader();
//		for(Object r:list){
//			System.out.println((Reader)r);
//		}
		session.setAttribute("list", list);
		return "yes";
	}
	
	public String addReader(){
		HttpServletRequest req=ServletActionContext.getRequest();
		String flg=req.getParameter("flg");
		if("1".equals(flg)){
			String vocation=req.getParameter("vocation");
			us.addReader(vocation,rea);
		}else if("2".equals(flg)){
			String barcode=req.getParameter("barcode");
			System.out.println(barcode);
			us.updateReader(barcode, rea);
		}
		return "none";
	}
	
	public String delReader(){
		HttpServletRequest req=ServletActionContext.getRequest();
		System.out.println(req.getParameter("barcode"));
		us.delReader(req.getParameter("barcode"));
		return "none";
	}
}