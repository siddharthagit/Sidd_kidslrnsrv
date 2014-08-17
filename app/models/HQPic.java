package models;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import play.db.jpa.Blob;
import play.db.jpa.Model;

@Entity
@Table(name="hq_pics")
public class HQPic extends Model{
	
	@ManyToOne
	@JoinColumn(name="qid",referencedColumnName="id")
	private HQQuestion question;
	private String picName;
	private Blob picFile;
	
	
	public HQQuestion getQuestion() {
		return question;
	}
	public void setQuestion(HQQuestion question) {
		this.question = question;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public Blob getPicFile() {
		return picFile;
	}
	public void setPicFile(Blob picFile) {
		this.picFile = picFile;
	}

	
}
