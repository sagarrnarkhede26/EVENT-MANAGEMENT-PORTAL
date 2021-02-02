package com.app.pojos;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.sun.istack.NotNull;

@Entity
@Table(name="events")
public class Events {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eventId;
	
	private String title;
	
	private String eventType;
	
	private String eventCity;
	
	private LocalDate eventDate;
	

	
	private double eventBudget;
	
	private String serviceRequired;
	
	private String eventDesc;
	
	@ManyToOne
	@JoinColumn(name="userId",nullable = false) //this was before userId
	private Users eventOwner; 
	
	//@OneToOne(mappedBy = "orderId",cascade = CascadeType.ALL)
	//private Orders orderId;
	
	@OneToMany(mappedBy = "event",cascade = CascadeType.ALL)
	private List<Bids> bids=new ArrayList<>();
	
	public Events() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEventType() {
		return eventType;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public String getEventCity() {
		return eventCity;
	}

	public void setEventCity(String eventCity) {
		this.eventCity = eventCity;
	}

	public LocalDate getEventDate() {
		return eventDate;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	public void setEventDate(LocalDate eventDate) {
		this.eventDate = eventDate;
	}
	

	

	public String getEventDesc() {
		return eventDesc;
	}

	public void setEventDesc(String eventDesc) {
		this.eventDesc = eventDesc;
	}

	public double getEventBudget() {
		return eventBudget;
	}

	public void setEventBudget(double eventBudget) {
		this.eventBudget = eventBudget;
	}

	public String getServiceRequired() {
		return serviceRequired;
	}

	public void setServiceRequired(String serviceRequired) {
		this.serviceRequired = serviceRequired;
	}

	

	public Users getEventOwner() {
		return eventOwner;
	}

	public void setEventOwner(Users eventOwner) {
		this.eventOwner = eventOwner;
	}

	/*
	 * public Orders getOrderId() { return orderId; }
	 * 
	 * public void setOrderId(Orders orderId) { this.orderId = orderId; }
	 */

	public List<Bids> getBids() {
		return bids;
	}

	public void setBids(List<Bids> bids) {
		this.bids = bids;
	}

	@Override
	public String toString() {
		return "Events [eventId=" + eventId + ", title=" + title + ", eventType=" + eventType + ", eventCity="
				+ eventCity + ", eventDate=" + eventDate + ", eventBudget=" + eventBudget + ", serviceRequired="
				+ serviceRequired + ", eventDesc=" + eventDesc + ", eventOwner=" + eventOwner + ", bids=" + bids + "]";
	}

	

	
	
	
	
	
	

}
