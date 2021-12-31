package com.idi.demo.controller;


import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.persistence.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;


@Entity
@Table(name="form_projinfo")
public class ProjectInfo implements Serializable{
	@NotNull
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="id" ,updatable = false, nullable = false)
	private int id;
	@Column(name="pName")
	@NotNull(message = "Name is mandatory")
	private String pName;
	@Transient
    private MultipartFile[] pManifest;

	@Column(name="sampleDate")
	private String sampleDate;
	@Column(name="ppBlanks")
	private Boolean ppBlanks;
	@Column(name="ppOCR")
	private Boolean ppOCR;
	@Column(name="ppExtract")
	private Boolean ppExtract;
	@Column(name="ppBookmark")
	private Boolean ppBookmark;
	@Column(name="ppMeta")
	private Boolean ppMeta;
	@Column(name="ppLtech")
	private Boolean ppLtech;
	@Column(name="ppEmbed")
	private Boolean ppEmbed;
	@Column(name="prepArc")
	private Boolean prepArc;
	@Column(name="prepBind")
	private Boolean prepBind;
	@Column(name="pprep")
	private Boolean pprep;
	@Column(name="pShred")
	private Boolean pShred;
	@Column(name="indexReq")
	private String indexReq;
	@Column(name="pDelCD")
	private Boolean pDelCD;
	@Column(name="pDelFlash")
	private Boolean pDelFlash;
	@Column(name="pDelHDD")
	private Boolean pDelHDD;
	@Column(name="dDelFTP")
	private Boolean dDelFTP;
	@Column(name="dDelDFIt")
	private Boolean dDelDFIt;
	@Column(name="dDelWeb")
	private Boolean dDelWeb;
	@Column(name="dDelCloud")
	private Boolean dDelCloud;
	@Column(name="dDelDocubase")
	private Boolean dDelDocubase;
	@Column(name="retUPS")
	private Boolean retUPS;
	@Column(name="retIDIVan")
	private Boolean retIDIVan;
	@Column(name="delNotes")
	private String delNotes;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public MultipartFile[] getpManifest() {
		return pManifest;
	}

	public void setpManifest(MultipartFile[] pManifest) {
		this.pManifest = pManifest;
	}

	public String getSampleDate() {
		return sampleDate;
	}


	public void setSampleDate(String sampleDate) {
		this.sampleDate = sampleDate;
	}


	public Boolean getPpBlanks() {
		return ppBlanks;
	}


	public void setPpBlanks(Boolean ppBlanks) {
		this.ppBlanks = ppBlanks;
	}

	

	public Boolean getPpOCR() {
		return ppOCR;
	}

	public void setPpOCR(Boolean ppOCR) {
		this.ppOCR = ppOCR;
	}

	public Boolean getPpExtract() {
		return ppExtract;
	}


	public void setPpExtract(Boolean ppExtract) {
		this.ppExtract = ppExtract;
	}





	public Boolean getPpBookmark() {
		return ppBookmark;
	}





	public void setPpBookmark(Boolean ppBookmark) {
		this.ppBookmark = ppBookmark;
	}





	public Boolean getPpMeta() {
		return ppMeta;
	}





	public void setPpMeta(Boolean ppMeta) {
		this.ppMeta = ppMeta;
	}





	public Boolean getPpLtech() {
		return ppLtech;
	}





	public void setPpLtech(Boolean ppLtech) {
		this.ppLtech = ppLtech;
	}





	public Boolean getPpEmbed() {
		return ppEmbed;
	}





	public void setPpEmbed(Boolean ppEmbed) {
		this.ppEmbed = ppEmbed;
	}





	public Boolean getPrepArc() {
		return prepArc;
	}





	public void setPrepArc(Boolean prepArc) {
		this.prepArc = prepArc;
	}





	public Boolean getPrepBind() {
		return prepBind;
	}





	public void setPrepBind(Boolean prepBind) {
		this.prepBind = prepBind;
	}





	public Boolean getPprep() {
		return pprep;
	}





	public void setPprep(Boolean pprep) {
		this.pprep = pprep;
	}





	public Boolean getpShred() {
		return pShred;
	}





	public void setpShred(Boolean pShred) {
		this.pShred = pShred;
	}





	public String getIndexReq() {
		return indexReq;
	}





	public void setIndexReq(String indexReq) {
		this.indexReq = indexReq;
	}





	public Boolean getpDelCD() {
		return pDelCD;
	}





	public void setpDelCD(Boolean pDelCD) {
		this.pDelCD = pDelCD;
	}





	public Boolean getpDelFlash() {
		return pDelFlash;
	}





	public void setpDelFlash(Boolean pDelFlash) {
		this.pDelFlash = pDelFlash;
	}





	public Boolean getpDelHDD() {
		return pDelHDD;
	}





	public void setpDelHDD(Boolean pDelHDD) {
		this.pDelHDD = pDelHDD;
	}





	public Boolean getdDelFTP() {
		return dDelFTP;
	}





	public void setdDelFTP(Boolean dDelFTP) {
		this.dDelFTP = dDelFTP;
	}





	public Boolean getdDelDFIt() {
		return dDelDFIt;
	}





	public void setdDelDFIt(Boolean dDelDFIt) {
		this.dDelDFIt = dDelDFIt;
	}





	public Boolean getdDelWeb() {
		return dDelWeb;
	}





	public void setdDelWeb(Boolean dDelWeb) {
		this.dDelWeb = dDelWeb;
	}





	public Boolean getdDelCloud() {
		return dDelCloud;
	}





	public void setdDelCloud(Boolean dDelCloud) {
		this.dDelCloud = dDelCloud;
	}





	public Boolean getdDelDocubase() {
		return dDelDocubase;
	}





	public void setdDelDocubase(Boolean dDelDocubase) {
		this.dDelDocubase = dDelDocubase;
	}





	public Boolean getRetUPS() {
		return retUPS;
	}





	public void setRetUPS(Boolean retUPS) {
		this.retUPS = retUPS;
	}





	public Boolean getRetIDIVan() {
		return retIDIVan;
	}





	public void setRetIDIVan(Boolean retIDIVan) {
		this.retIDIVan = retIDIVan;
	}





	public String getDelNotes() {
		return delNotes;
	}





	public void setDelNotes(String delNotes) {
		this.delNotes = delNotes;
	}




	@Override
	public String toString() {
		return "ProjectInfo [pName=" + pName + ", sampleDate=" + sampleDate + ", ppBlanks=" + ppBlanks + ", ppExtract="
				+ ppExtract + ", ppBookmark=" + ppBookmark + ", ppMeta=" + ppMeta + ", ppLtech=" + ppLtech
				+ ", ppEmbed=" + ppEmbed + ", prepArc=" + prepArc + ", prepBind=" + prepBind + ", pprep=" + pprep
				+ ", pShred=" + pShred + ", indexReq=" + indexReq + ", pDelCD=" + pDelCD + ", pDelFlash=" + pDelFlash
				+ ", pDelHDD=" + pDelHDD + ", dDelFTP=" + dDelFTP + ", dDelDFIt=" + dDelDFIt + ", dDelWeb=" + dDelWeb
				+ ", dDelCloud=" + dDelCloud + ", dDelDocubase=" + dDelDocubase + ", retUPS=" + retUPS + ", retIDIVan="
				+ retIDIVan + ", delNotes=" + delNotes + "]";
	}





}
