package com.ease.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ease.doa.HostFormDao;
import com.ease.model.HostForm;


@Repository("hostformDao")
public class HostFormDaoImpl implements HostFormDao {

	@Autowired
	SessionFactory sessionFactory;
	protected Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void create(HostForm hostform) {
		currentSession().save(hostform);
		
	}

	@Override
	public void update(HostForm hostform) {
		currentSession().update(hostform);
		
	}

	@Override
	public HostForm edit(Long hostFormId) {
		// TODO Auto-generated method stub
		return find(hostFormId);
	}

	@Override
	public void delete(Long hostFormId) {
		Session session;
		HostForm hostform;

	    session = sessionFactory.getCurrentSession();
	    //session.delete(userId);
	    hostform = (HostForm)session.load(HostForm.class,hostFormId);
	    session.delete(hostform);
	    session.flush();
	}

	@Override
	public HostForm find(Long hostFormId) {
		return (HostForm)currentSession().get(HostForm.class,hostFormId);
		
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<HostForm> getAll() {
		 return currentSession().createCriteria(HostForm.class).list();
			}

	@Override
	public List<HostForm> findRole(){
		String hql = "from HostForm where ";
        hql=hql+"hostFormRole='"+1+"'";
        Query<HostForm> query = sessionFactory.getCurrentSession().createQuery(hql);
        @SuppressWarnings("deprecation")
		List<HostForm> list=query.list();
        return list;
	}
	
	
	@Override
	public List<HostForm> findGold(){
		String hql = "from HostForm where ";
        hql=hql+"hostFormRole='"+5+"'";
        Query<HostForm> query = sessionFactory.getCurrentSession().createQuery(hql);
        @SuppressWarnings("deprecation")
		List<HostForm> list=query.list();
        return list;
	}

	
}
