package com.skilldistillery.instrument.entities;

import java.sql.Date;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="instrument")
public class InstrumentLog {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String instrument;
	
	private String brand;
	
	@Column(name="model")
	private String modelOfInstrument;
	
	@Column(name="instrument_family")
	private String instrumentFamily;
	
	@CreationTimestamp
	@Column(name="date_created")
	private LocalDateTime dateCreated;
	
	@UpdateTimestamp
	@Column(name="last_update")
	private LocalDateTime lastUpdate;
	
	@Column(name="instrument_condition")
	private String condition;
	
	@Column(name="student_first_name")
	private String firstName;
	
	@Column(name="student_last_name")
	private String lastName;
	
	

	public InstrumentLog() {
		super();
	}

	
	
	public InstrumentLog(String instrument, String brand, String modelOfInstrument, String instrumentFamily,
			String condition) {
		super();
		this.instrument = instrument;
		this.brand = brand;
		this.modelOfInstrument = modelOfInstrument;
		this.instrumentFamily = instrumentFamily;
		this.condition = condition;
	}



	public InstrumentLog(String instrument, String brand, String modelOfInstrument, String instrumentFamily,
			String condition, String firstName, String lastName) {
		super();
		this.instrument = instrument;
		this.brand = brand;
		this.modelOfInstrument = modelOfInstrument;
		this.instrumentFamily = instrumentFamily;
		this.condition = condition;
		this.firstName = firstName;
		this.lastName = lastName;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public InstrumentLog(int id, String instrument, String brand, String modelOfInstrument, String instrumentFamily,
			LocalDateTime dateCreated, LocalDateTime lastUpdate, String condition) {
		super();
		this.id = id;
		this.instrument = instrument;
		this.brand = brand;
		this.modelOfInstrument = modelOfInstrument;
		this.instrumentFamily = instrumentFamily;
		this.dateCreated = dateCreated;
		this.lastUpdate = lastUpdate;
		this.condition = condition;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInstrument() {
		return instrument;
	}

	public void setInstrument(String instrument) {
		this.instrument = instrument;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModelOfInstrument() {
		return modelOfInstrument;
	}

	public void setModelOfInstrument(String modelOfInstrument) {
		this.modelOfInstrument = modelOfInstrument;
	}
	
	public String getInstrumentFamily() {
		return instrumentFamily;
	}

	public void setInstrumentFamily(String instrumentFamily) {
		this.instrumentFamily = instrumentFamily;
	}

	public LocalDateTime getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(LocalDateTime dateCreated) {
		this.dateCreated = dateCreated;
	}

	public LocalDateTime getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(LocalDateTime lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Override
	public String toString() {
		return "InstrumentLog [id=" + id + ", instrument=" + instrument + ", brand=" + brand + ", modelOfInstrument="
				+ modelOfInstrument + ", instrumentFamily=" + instrumentFamily + ", dateCreated=" + dateCreated
				+ ", lastUpdate=" + lastUpdate + ", condition=" + condition + ", firstName=" + firstName + ", lastName="
				+ lastName + "]";
	}

	
}
