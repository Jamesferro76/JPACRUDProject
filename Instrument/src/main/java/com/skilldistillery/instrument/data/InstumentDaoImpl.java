package com.skilldistillery.instrument.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.instrument.entities.InstrumentLog;


@Service
@Transactional
public class InstumentDaoImpl implements InstrumentDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public InstrumentLog findById(int instId) {
		return em.find(InstrumentLog.class, instId);
	}

	@Override
	public List<InstrumentLog> findAll() {
		
		String jpql="SELECT i FROM instrument i"
		
		return null;
	}

}
