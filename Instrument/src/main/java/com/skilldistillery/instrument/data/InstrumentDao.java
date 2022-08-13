package com.skilldistillery.instrument.data;

import java.util.List;

import com.skilldistillery.instrument.entities.InstrumentLog;

public interface InstrumentDao {
	
	InstrumentLog findById(int instId);
	List<InstrumentLog> findAll();

}
