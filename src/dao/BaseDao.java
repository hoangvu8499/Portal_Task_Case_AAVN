package dao;

import org.hibernate.SessionFactory;

import util.HibernateUtil;

public class BaseDao {
	HibernateUtil hibernateUtil = new HibernateUtil();
	SessionFactory sessionFactory = hibernateUtil.getSessionFactory();

}
