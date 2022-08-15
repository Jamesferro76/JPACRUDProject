package com.skilldistillery.instrument.data;

import java.util.List;

import com.skilldistillery.instrument.entities.InstrumentLog;

public interface InstrumentDao {
	
	InstrumentLog findById(int instId);
	List<InstrumentLog> findAll();
//	InstrumentLog createNewInstrument(InstrumentLog inst);
	InstrumentLog createNewInstrument(String instrument, String brand, String modelOfInstrument, String family, String condition, String firstName, String lastName);
	InstrumentLog deleteInstrument(int instId);
	InstrumentLog updateInstrument(int instId, String instrument, String brand, String modelOfInstrument, String instrumentFamily, String condition, String firstName, String lastName);
	List<InstrumentLog> findByName(String firstName, String lastName);
}
