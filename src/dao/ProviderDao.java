package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Provider;

public class ProviderDao extends BaseDao {

	public void save(Provider provider) { // consider to refactor code todo-3
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (provider.getId() == null) {
				session.persist(provider);
				transaction.commit();
			} else {
				session.merge(provider);
				transaction.commit();
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public List<Provider> getAll() {
		List<Provider> providers = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			providers = session.createCriteria(Provider.class).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		return providers;
	}

	public void delete(Long id) { // consider to refactor code
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Provider provider = (Provider) session.get(Provider.class, id);
			session.delete(provider);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

}
