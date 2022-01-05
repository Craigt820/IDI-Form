package com.idi.demo.beans;


import javax.persistence.*;

@Entity
@Table(name="form_invoice")
public class Invoice{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="proj_id")
	private int proj_id;
	@Column(name="item")
	private String item;
	@Column(name="quantity")
	private String quantity;
	@Column(name="cost")
	private String cost;
	@Column(name="subtotal")
	private String subtotal;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProj_id() {
		return proj_id;
	}
	public void setProj_id(int proj_id) {
		this.proj_id = proj_id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}

	@Override
	public String toString() {
		return "Invoice [id=" + id + ", proj_id=" + proj_id + ", item=" + item + ", quantity=" + quantity + ", cost="
				+ cost + "]";
	}
	
	
	
}