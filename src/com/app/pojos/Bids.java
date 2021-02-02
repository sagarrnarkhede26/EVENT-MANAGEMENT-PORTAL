package com.app.pojos;
import java.util.Arrays;

import javax.persistence.*;

@Entity
@Table(name = "bids")
public class Bids {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bidId;
	
	private int bidAmount;
	
	private String bidDesc;

	private boolean status;
	
	@ManyToOne
	@JoinColumn(name="eventId",nullable = false)
	private Events event;
	
	@ManyToOne
	@JoinColumn(name="vendorId",nullable = false)
	private Users vendor;
	
	

	@OneToOne(mappedBy = "bidId",cascade = CascadeType.ALL)
	private Orders order;
	
	public Bids() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getBidId() {
		return bidId;
	}
	
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	
	public int getBidAmount() {
		return bidAmount;
	}
	
	public void setBidAmount(int bidAmount) {
		this.bidAmount = bidAmount;
	}
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getBidDesc() {
		return bidDesc;
	}

	public void setBidDesc(String bidDesc) {
		this.bidDesc = bidDesc;
	}
	
	public Events getEvent() {
		return event;
	}
	
	public void setEvent(Events event) {
		this.event = event;
	}
	
	public Orders getOrder() {
		return order;
	}
	
	

	@Override
	public String toString() {
		return "Bids [bidId=" + bidId + ", bidAmount=" + bidAmount + ", bidDesc=" + bidDesc + ", status=" + status
				+ ", event=" + event + ", vendor=" + vendor + ", order=" + order + "]";
	}

	public void setOrder(Orders order) {
		this.order = order;
	}
	
	public Users getVendor() {
		return vendor;
	}

	public void setVendor(Users vendor) {
		this.vendor = vendor;
	}

	
	
	
	
	
	
}
