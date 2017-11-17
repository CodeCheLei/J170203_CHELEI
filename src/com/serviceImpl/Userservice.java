package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dao.IUserDao;
import com.model.Bookcase;
import com.model.Reader;
import com.model.Readertype;
import com.model.library;
import com.model.parameter;
import com.services.IUserservice;

@Service("userservice")
public class Userservice implements IUserservice {
	private IUserDao iud;
	@Autowired
	@Qualifier("userDao")
	public void setIud(IUserDao iud) {
		this.iud = iud;
	}

	@Override
	public boolean login(String name, String pwd) {
		return iud.login(name, pwd);
	}

	@Override
	public library getLibrary() {
		return iud.getLibrary();
	}

	@Override
	public boolean update(library lib) {
		iud.update(lib);
		return true;
	}

	@Override
	public parameter getParameter() {
		return iud.getParameter();
	}

	@Override
	public boolean updateParameter(parameter par) {
		return iud.updateParameter(par);
	}

	@Override
	public List getBookcase() {
		return iud.getBookcase();
	}

	@Override
	public boolean addBookcase(Bookcase bookcase) {	
		return iud.addBookcase(bookcase);
	}

	@Override
	public boolean delBookcase(int id) {
		return iud.delBookcase(id);
	}

	@Override
	public List getReadertype() {
		return iud.getReadertype();
	}

	@Override
	public boolean addreadertype(Readertype rt) {
		return iud.addreadertype(rt);
	}

	@Override
	public boolean delReadertype(int id) {
		return iud.delReadertype(id);
	}

	@Override
	public List getReader() {
		return iud.getReader();
	}

	@Override
	public boolean delReader(String barcode) {
		return iud.delReader(barcode);
	}

	@Override
	public boolean addReader(String vocation,Reader reader) {
		return iud.addReader(vocation,reader);
	}

	@Override
	public boolean updateReader(String barcode, Reader reader) {
		return iud.updateReader(barcode, reader);
	}

}
