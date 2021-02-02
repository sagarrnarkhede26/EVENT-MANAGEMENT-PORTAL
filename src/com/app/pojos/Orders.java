package com.app.pojos;

import java.time.LocalDate;
import java.util.Date;
import javax.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "orders")
public class Orders {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	
	@OneToOne
	@JoinColumn(name = "bidId",nullable = false)
	private Bids bidId;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate orderDate;
	
	private double orderAmount;
	
	private String paymentMode;
	
	private double payAmount;
	
	private boolean pay_status;
	
	//@JoinColumn(name = "eventId",nullable = false)
	//private Events eventId;
	
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Bids getBidId() {
		return bidId;
	}

	public void setBidId(Bids bidId) {
		this.bidId = bidId;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}

	public double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public double getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(double payAmount) {
		this.payAmount = payAmount;
	}

	public boolean isPay_status() {
		return pay_status;
	}

	public void setPay_status(boolean pay_status) {
		this.pay_status = pay_status;
	}

	/*
	 * public Events getEventId() { return eventId; }
	 * 
	 * public void setEventId(Events eventId) { this.eventId = eventId; }
	 */

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", bidId=" + bidId + ", orderDate=" + orderDate + ", orderAmount="
				+ orderAmount + ", paymentMode=" + paymentMode + ", payAmount=" + payAmount + ", pay_status="
				+ pay_status + ", eventId=" + /* eventId + */ "]";
	}

	

}
