package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ch.ivyteam.ivy.environment.Ivy;
import model.Address;
import model.Provider;

public class AddressDao extends BaseDao {

	public void save(Address address) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (address.getId() == null) {
				session.persist(address);
				transaction.commit();
			} else {
				session.merge(address);
				transaction.commit();
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public List<Address> getAll() {
		List<Address> addresses = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			addresses = session.createCriteria(Address.class).list();
			// transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return addresses;
	}

	public void delete(Long id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Address address = (Address) session.get(Address.class, id);
			session.delete(address);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public void saveListAddress(Provider provider) {
		List<Address> listAddress = new ArrayList<>();
		listAddress.add(new Address("Hue",provider));
		listAddress.add(new Address("DN",provider));
		listAddress.add(new Address("Hue", new Provider()));
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			for (Address address : listAddress) {
				save(address);
			}
		} catch (Exception e) {
			Ivy.log().error(e.getMessage());
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

}
