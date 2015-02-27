package vo.view;

import java.sql.Date;

public class TimelineVO {
	private Integer ref_id,head_id,attach_id;
	private String id, name,writer_id,cont,kind,art_id,PROFILE_IMG;
	private Date updated;
	public Integer getRef_id() {
		return ref_id;
	}
	public void setRef_id(Integer ref_id) {
		this.ref_id = ref_id;
	}
	public Integer getHead_id() {
		return head_id;
	}
	public void setHead_id(Integer head_id) {
		this.head_id = head_id;
	}
	public Integer getAttach_id() {
		return attach_id;
	}
	public void setAttach_id(Integer attach_id) {
		this.attach_id = attach_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getArt_id() {
		return art_id;
	}
	public void setArt_id(String art_id) {
		this.art_id = art_id;
	}
	public String getPROFILE_IMG() {
		return PROFILE_IMG;
	}
	public void setPROFILE_IMG(String pROFILE_IMG) {
		PROFILE_IMG = pROFILE_IMG;
	}
	public Date getUpdated() {
		return updated;
	}
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	
	
	
	
	
}
