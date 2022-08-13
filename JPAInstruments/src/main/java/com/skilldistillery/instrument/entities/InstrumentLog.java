package com.skilldistillery.instrument.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	
	@Column(name="date_created")
	private Date dateCreated;
	
	@Column(name="last_update")
	private Date lastUpdate;
	
	private String condition;
	
	

	public InstrumentLog() {
		super();
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

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(Date lastUpdate) {
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
				+ ", lastUpdate=" + lastUpdate + ", condition=" + condition + "]";
	}

	
}
