package org.bisun.domain;

import java.sql.Timestamp;

public class QnaVO {
	
	private Integer qno;
	private String qtitle, qcontent, qwriter;
	private Integer gno, gord, depth, parent, gubun, secret;
	private Timestamp regdate, updatedate;
	
	public Integer getQno() {
		return qno;
	}
	public void setQno(Integer qno) {
		this.qno = qno;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQwriter() {
		return qwriter;
	}
	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}
	public Integer getGno() {
		return gno;
	}
	public void setGno(Integer gno) {
		this.gno = gno;
	}
	public Integer getGord() {
		return gord;
	}
	public void setGord(Integer gord) {
		this.gord = gord;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
	public Integer getParent() {
		return parent;
	}
	public void setParent(Integer parent) {
		this.parent = parent;
	}
	public Integer getGubun() {
		return gubun;
	}
	public void setGubun(Integer gubun) {
		this.gubun = gubun;
	}
	public Integer getSecret() {
		return secret;
	}
	public void setSecret(Integer secret) {
		this.secret = secret;
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
		return "QnaVO [qno=" + qno + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qwriter=" + qwriter + ", gno="
				+ gno + ", gord=" + gord + ", depth=" + depth + ", parent=" + parent + ", gubun=" + gubun + ", secret="
				+ secret + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
}