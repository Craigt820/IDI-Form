package com.idi.demo.controller;


import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="form_general")
public class General {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;

	@Column(name="proj_id")
	private int proj_id;

	@Column(name="cName")
	private String cName;

	@Column(name="cAtten")
	private String cAtten;

	@Column(name="cAddress")
	private String cAddress;


	@Column(name="cPhone")
	private String cPhone;

	@Column(name="cEmail")
	@Pattern(regexp="\\w+@.+",message="Must be a valid email address!")
	private String cEmail;

	@Column(name="bAddress")
	private String bAddress;

	@Column(name="puDate")
	private String puDate;
	@Column(name="stDate")
	private String stDate;
	@Column(name="compDate")
	private String compDate;
	@Column(name="pImage")
	private Boolean pImage;
	@Column(name="pBound")
	private Boolean pBound;
	@Column(name="pBox")
	private Boolean pBox;
	@Column(name="plFormat")
	private Boolean plFormat;
	@Column(name="additNotes")
	private String additNotes;

	@OneToMany
	@JoinColumn(name="proj_id")
	private List<Invoice> invoices;

	public General(){
		invoices = new ArrayList<>();
	}

	public List<Invoice> getInvoices() {
		return invoices;
	}

	public void setInvoices(List<Invoice> invoices) {
		this.invoices = invoices;
	}

	public int getProj_id() {
		return proj_id;
	}


	public void setProj_id(int proj_id) {
		this.proj_id = proj_id;
	}


	public String getcName() {
		return cName;
	}


	public void setcName(String cName) {
		this.cName = cName;
	}


	public String getcAtten() {
		return cAtten;
	}

	public void setcAtten(String cAtten) {
		this.cAtten = cAtten;
	}

	public String getcAddress() {
		return cAddress;
	}


	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}


	public String getcPhone() {
		return cPhone;
	}


	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getcEmail() {
		return cEmail;
	}


	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}


	public String getbAddress() {
		return bAddress;
	}


	public void setbAddress(String bAddress) {
		this.bAddress = bAddress;
	}


	public String getPuDate() {
		return puDate;
	}


	public void setPuDate(String puDate) {
		this.puDate = puDate;
	}


	public String getStDate() {
		return stDate;
	}


	public void setStDate(String stDate) {
		this.stDate = stDate;
	}


	public String getCompDate() {
		return compDate;
	}


	public void setCompDate(String compDate) {
		this.compDate = compDate;
	}


	public Boolean getpImage() {
		return pImage;
	}


	public void setpImage(Boolean pImage) {
		this.pImage = pImage;
	}


	public Boolean getpBound() {
		return pBound;
	}


	public void setpBound(Boolean pBound) {
		this.pBound = pBound;
	}


	public Boolean getpBox() {
		return pBox;
	}


	public void setpBox(Boolean pBox) {
		this.pBox = pBox;
	}


	public Boolean getPlFormat() {
		return plFormat;
	}


	public void setPlFormat(Boolean plFormat) {
		this.plFormat = plFormat;
	}


	public String getAdditNotes() {
		return additNotes;
	}


	public void setAdditNotes(String additNotes) {
		this.additNotes = additNotes;
	}


//	public HashSet<Invoice> getInvoiceLines() {
//		return invoiceLines;
//	}
//
//
//	public void setInvoiceLines(HashSet<Invoice> invoiceLines) {
//		this.invoiceLines = invoiceLines;
//	}


	@Override
	public String toString() {
		return "General [cName=" + cName + ", cAddress=" + cAddress + ", cPhone=" + cPhone + ", email=" + cEmail
				+ ", bAddress=" + bAddress + ", puDate=" + puDate + ", stDate=" + stDate + ", compDate=" + compDate
				+ ", pImage=" + pImage + ", pBound=" + pBound + ", pBox=" + pBox + ", plFormat=" + plFormat
				+ ", additNotes=" + additNotes + "]";
	}



}
