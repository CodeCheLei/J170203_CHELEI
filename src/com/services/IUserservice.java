package com.services;

import java.util.List;

import com.model.Bookcase;
import com.model.Reader;
import com.model.Readertype;
import com.model.library;
import com.model.parameter;

public interface IUserservice {
	public boolean login(String name,String pwd);
	public library getLibrary();
	public boolean update(library lib);
	public parameter getParameter();
	public boolean updateParameter(parameter par);
	public List getBookcase();
	public boolean addBookcase(Bookcase bookcase);
	public boolean delBookcase(int id);
	public List getReadertype();
	public boolean addreadertype(Readertype rt);
	public boolean delReadertype(int id);
	public List getReader();
	public boolean delReader(String barcode);
	public boolean addReader(String vocation,Reader reader);
	public boolean updateReader(String barcode,Reader reader);
}
