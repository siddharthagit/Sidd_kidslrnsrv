package models;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.joda.time.DateTime;

import play.db.jpa.Model;

@Entity
@Table(name="hs_studenthistory")
public class HQStudentExamHistory extends Model{
	
	private String studentId;
	private long  examPackId;
	private DateTime examDate;
	private double  examScore;
	private long examDuration;
	
	/* String specifying the device,ip,country etc*/
	private String examLocation;

	
	//Getters and Setters
	
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public long getExamPackId() {
		return examPackId;
	}

	public void setExamPackId(long examPackId) {
		this.examPackId = examPackId;
	}

	public DateTime getExamDate() {
		return examDate;
	}

	public void setExamDate(DateTime examDate) {
		this.examDate = examDate;
	}

	public double getExamScore() {
		return examScore;
	}

	public void setExamScore(double examScore) {
		this.examScore = examScore;
	}

	public long getExamDuration() {
		return examDuration;
	}

	public void setExamDuration(long examDuration) {
		this.examDuration = examDuration;
	}

	public String getExamLocation() {
		return examLocation;
	}

	public void setExamLocation(String examLocation) {
		this.examLocation = examLocation;
	}
	
	

}
