package com.smartphone.webservice.util;



import com.smartphone.model.Admin;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.repository.DBConfig;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public final class HibernateDbUtil{
	private SessionFactory sessionFactory;
	private DBConfig db;


    private static final HibernateDbUtil instance = new HibernateDbUtil();
    
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	 public static HibernateDbUtil getInstance(){
	        return instance;
	  }
	    

	public HibernateDbUtil(){
		DBConfig dc = new DBConfig();
		this.setDBConfig(dc);
		this.sessionFactory=this.setUp(dc.DB_URL);		
	}
	
	public void setDBConfig(DBConfig d){
		db=d;
	}
	
	
	@SuppressWarnings("deprecation")
	public SessionFactory setUp(String dbUrl){
		 // configures settings from hibernate.cfg.xml
		
		return sessionFactory=new Configuration()
	    .configure().setProperty("hibernate.connection.url", dbUrl)
	    .buildSessionFactory();
		// dburl jdbc:mysql://localhost:3306/itm
	}
	
	
	public <T> List<T> getListofRecord(String query){
		sessionFactory = setUp(db.getRequestDBUrl());
		// now lets pull events from the database and list them
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        //String query ="from "+t.getName();
        List result= session.createQuery( query ).list();
        session.getTransaction().commit();
        session.close();
        return result;
	}
	
	
	
	
	
	public static void main(String arg[]) throws ClassNotFoundException{
		
//		Session session = DBUtil.setUp();
//		// now lets pull events from the database and list them
//		session = sessionFactory.openSession();
//        session.beginTransaction();
//        List result = session.createQuery( "from User" ).list();
//		for ( User user : (List<User>) result ) {
//			System.out.println( "Event (" + user.getUsename() + ") : " +user.getUsename() );
//		}
//        session.getTransaction().commit();
//        session.close();
		DBConfig dc = new DBConfig();
		dc.setRequestDBUrl("jdbc:mysql://localhost:3306/smartphonewarehouse");
		HibernateDbUtil db = new HibernateDbUtil();
		db.setDBConfig(dc);
		List result = db.getListofRecord("from Admin");
			for ( Admin user : (List<Admin>) result ) {
				System.out.println( "Event (" + user.getLname() + ") : " +user.getLname() );
			}
		
	}
	
}
