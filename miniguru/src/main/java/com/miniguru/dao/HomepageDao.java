package com.miniguru.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.miniguru.entity.homepage;

import java.util.List;

import javax.transaction.Transactional;
@Component
public class HomepageDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveContacts(homepage h) {
		Integer i=(Integer) this.hibernateTemplate.save(h);
		return i;
	}
	
//	for getting data
	public List<homepage> getAll(){
		List<homepage> loadAll = this.hibernateTemplate.loadAll(homepage.class);
		return loadAll;
	}
}
