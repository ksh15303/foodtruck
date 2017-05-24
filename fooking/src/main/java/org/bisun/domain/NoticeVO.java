package org.bisun.domain;

import java.sql.Timestamp;

public class NoticeVO {
	
	private Integer nno;
	private String ntitle, ncontent, nwriter;
	private Timestamp regdate, updatedate;
	public Integer getNno() {
		return nno;
	}
	public void setNno(Integer nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getNwriter() {
		return nwriter;
	}
	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
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
		return "NoticeVO [nno=" + nno + ", ntitle=" + ntitle + ", ncontent=" + ncontent + ", nwriter=" + nwriter
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
