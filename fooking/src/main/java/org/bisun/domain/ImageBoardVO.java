package org.bisun.domain;

import java.sql.Timestamp;

public class ImageBoardVO {
	
	private Integer ino, viewcount;
	private String ititle, icontent, iwriter, imagename;
	private Timestamp regdate, updatedate;
	
	public Integer getIno() {
		return ino;
	}
	public void setIno(Integer ino) {
		this.ino = ino;
	}
	public Integer getViewcount() {
		return viewcount;
	}
	public void setViewcount(Integer viewcount) {
		this.viewcount = viewcount;
	}	
	public String getItitle() {
		return ititle;
	}
	public void setItitle(String ititle) {
		this.ititle = ititle;
	}
	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public String getIwriter() {
		return iwriter;
	}
	public void setIwriter(String iwriter) {
		this.iwriter = iwriter;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
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
		return "ImageBoardVO [ino=" + ino + ", viewcount=" + viewcount + ", ititle=" + ititle + ", icontent=" + icontent
				+ ", iwriter=" + iwriter + ", imagename=" + imagename + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}	
}
