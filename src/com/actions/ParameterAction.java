package com.actions;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.model.library;
import com.model.parameter;
import com.opensymphony.xwork2.ModelDriven;
import com.services.IUserservice;
import net.sf.json.JSONObject;

@Controller("parameterAction")
@Scope("prototype")
public class ParameterAction implements ModelDriven<parameter>{
	private IUserservice us;
	private parameter para=new parameter();
	@Autowired
	@Qualifier("userservice")
	public void setUs(IUserservice us) {
		this.us = us;
	}
	@Override
	public parameter getModel() {
		return para;
	}
	public parameter getPara() {
		return para;
	}

	public void setPara(parameter par) {
		this.para = par;
	}

	public String getParameter() throws IOException{
		parameter par=us.getParameter();
		System.out.println(par);
	
		String str=JSONObject.fromObject(par).toString();
		HttpServletResponse response=ServletActionContext.getResponse();
		System.out.println(str);	
		response.getWriter().print(str);		
		return "none";
	}
	
	public String updateParameter(){
		para.setId(1);
		us.updateParameter(para);
		System.out.println(para);
		return "yes";
	}

}
