package org.bisun.domain;

import java.sql.Timestamp;

public class PdsDataVO {

	private Integer pno,viewcount;
	private String ptitle,pcontent,pwriter;
	private Timestamp regdate,updatedate;
	public Integer getPno() {
		return pno;
	}
	public void setPno(Integer pno) {
		this.pno = pno;
	}
	public Integer getViewcount() {
		return viewcount;
	}
	public void setViewcount(Integer viewcount) {
		this.viewcount = viewcount;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPwriter() {
		return pwriter;
	}
	public void setPwriter(String pwriter) {
		this.pwriter = pwriter;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate) {
		this.updatedate = updatedate;
	}
	@Override
	public String toString() {
		return "PdsDataVO [pno=" + pno + ", viewcount=" + viewcount + ", ptitle=" + ptitle + ", pcontent=" + pcontent
				+ ", pwriter=" + pwriter + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
}
