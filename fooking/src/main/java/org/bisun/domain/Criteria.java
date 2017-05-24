package org.bisun.domain;

public class Criteria {

	private Integer skip, size = 10, page =1;
	private String type, keyword;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public void setPage(Integer page) {
		if(page <= 0){
			page = 1;
		}
		this.page = page;
	}

	public Integer getSkip() {
		return (page-1)*size;
	}

	public void setSkip(Integer skip) {
		this.skip = skip;
	}

	public Integer getSize() {
		return size;
	}

	public Integer getPage() {
		return page;
	}

	public void setSize(Integer size) {
		if(size < 0 ){
			size = 0;
		}
		this.size = size;
	}

	@Override
	public String toString() {
		return "Criteria [skip=" + skip + ", size=" + size + ", page=" + page + ", type=" + type + ", keyword="
				+ keyword + "]";
	}

}
