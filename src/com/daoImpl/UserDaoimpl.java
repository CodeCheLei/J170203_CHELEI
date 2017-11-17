package com.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dao.IUserDao;
import com.model.Bookcase;
import com.model.Reader;
import com.model.Readertype;
import com.model.library;
import com.model.manager;
import com.model.parameter;
@Repository("userDao")
public class UserDaoimpl implements IUserDao {

	private SessionFactory sessionFactory;

	
	@Autowired
	@Qualifier("sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public boolean login(String name, String pwd) {
		Session session=this.getSession();
		Query query=session.createQuery("from manager where name=? and pwd = ?");
		query.setString(0, name);
		query.setString(1, pwd);
		manager man=(manager)query.uniqueResult();
		if(man!=null){
			return true;
		}
		return false;
	}

	@Override
	public library getLibrary() {
		Session session=this.getSession();
		Query query=session.createQuery("from library");
		library library=(library)query.uniqueResult();
		return library;
	}


	 @Override
	public boolean update(library lib) {
		 Session session=this.getSession();
		 session.update(lib);
		return true;
	}

	@Override
	public parameter getParameter() {
		Session session=this.getSession();
		Query query=session.createQuery("from parameter");
		parameter parameter=(parameter)query.uniqueResult();
		return parameter;
	}

	@Override
	public boolean updateParameter(parameter par) {
		Session session=this.getSession();
		session.update(par);
		return true;
	}

	@Override
	public List getBookcase() {
		Session session=this.getSession();
		Query query=session.createQuery("from Bookcase");
		return query.list();
	}

	@Override
	public boolean addBookcase(Bookcase bookcase) {
		Session session=this.getSession();
		session.save(bookcase);
		return true;
	}

	@Override
	public boolean delBookcase(int id) {
		Session session=this.getSession();
		Bookcase bk=(Bookcase)session.get(Bookcase.class, id);
		System.out.println(bk.getId());
		System.out.println(bk.getName());
		session.delete(bk);
		return true;
	}

	@Override
	public List getReadertype() {
		Session session=this.getSession();
		Query query=session.createQuery("from Readertype");
		return query.list();
	}

	@Override
	public boolean addreadertype(Readertype rt) {
		Session session=this.getSession();
		session.save(rt);
		return true;
	}

	@Override
	public boolean delReadertype(int rtid) {
		Session session=this.getSession();
		Readertype rt=(Readertype)session.get(Readertype.class,rtid);
		System.out.println("aaa"+rt.getId());
		session.delete(rt);
		return true;
	}

	@Override
	public List getReader() {
		
		Session session=this.getSession();
		
		Query query=session.createQuery("from Reader");
		return query.list();
	}

	@Override
	public boolean delReader(String barcode) {
		Session session=this.getSession();
		Query query=session.createQuery("from Reader where barcode=?");
		query.setString(0, barcode);
		Reader red=(Reader)query.uniqueResult();
		System.out.println(red);
		//session.delete(red);
		session.createQuery("delete from Reader where id = "+ red.getId()).executeUpdate();	
		session.flush();
		return true;
	}

	@Override
	public boolean addReader(String vocation,Reader reader) {
		Session session=this.getSession();
		Query query=session.createQuery("from Readertype where names=?");
		query.setString(0, vocation);
		Readertype rt=(Readertype)query.uniqueResult();
		reader.setTypeid(rt);
		session.saveOrUpdate(reader);
		return true;
	}

	@Override
	public boolean updateReader(String barcode, Reader reader) {
		Session session=this.getSession();
		Query query=session.createQuery("select id from Reader where barcode=?");
		query.setString(0, barcode);	
		List list =query.list();
		Object obj=null;
		for(Object s:list){
			obj=s;
			System.out.println(s);
		}
		reader.setId((int)obj);
		session.update(reader);
		return true;
	}

}
