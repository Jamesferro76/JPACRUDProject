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
		
		String jpql="SELECT i FROM InstrumentLog i ORDER BY i.id";
		
		List<InstrumentLog> allInstruments= em.createQuery(jpql, InstrumentLog.class).getResultList();
		
		
		return allInstruments;
	}

//	@Override
//	public InstrumentLog createNewInstrument(InstrumentLog inst) {
//
//		em.persist(inst);
//		em.flush();
//
//
//		return inst;
//	}
	@Override
	public InstrumentLog createNewInstrument(String instrument, String brand, String modelOfInstrument, String instrumentFamily, String condition, String firstName, String lastName) {
		InstrumentLog inst= new InstrumentLog(instrument, brand, modelOfInstrument, instrumentFamily, condition, firstName, lastName);

		em.persist(inst);
//		em.flush();
		
		
		return inst;
	}

	@Override
	public InstrumentLog deleteInstrument(int instId) {
		InstrumentLog inst=findById(instId);
		em.remove(inst);
		
		return inst;
	}

	@Override
	public InstrumentLog updateInstrument(int instId, String instrument, String brand, String modelOfInstrument, String instrumentFamily, String condition, String firstName, String lastName) {
		InstrumentLog ogInst=findById(instId);
		
		if(!instrument.equals("")&&instrument!=null) {
			ogInst.setInstrument(instrument);
		}
		if(!brand.equals("")&&brand!=null) {
			ogInst.setBrand(brand);
		}
		if(!modelOfInstrument.equals("")&&modelOfInstrument!=null) {
			ogInst.setModelOfInstrument(modelOfInstrument);
		}
		if(!instrumentFamily.equals("")&&instrumentFamily!=null) {
			ogInst.setInstrumentFamily(instrumentFamily);
		}
		if(!condition.equals("")&&condition!=null) {
			ogInst.setCondition(condition);
		}
		if(!firstName.equals("")&&firstName!=null) {
			ogInst.setFirstName(firstName);
		}
		if(!lastName.equals("")&&lastName!=null) {
			ogInst.setLastName(lastName);
		}
		
		return ogInst;
		
		
		
	}
	
public List<InstrumentLog> findByName(String firstName, String lastName) {
		
		String jpql="SELECT i FROM InstrumentLog i WHERE firstName IS '"+firstName+"' AND lastName IS'"+lastName+"'  ORDER BY i.id";
		
		List<InstrumentLog> allInstruments= em.createQuery(jpql, InstrumentLog.class).getResultList();
		System.out.println(allInstruments);
		
		return allInstruments;
	}
	
	

}
