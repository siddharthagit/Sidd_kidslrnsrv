package models;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.joda.time.DateTime;

import play.db.jpa.Model;

@Entity
@Table(name="hs_studentexam")
public class HQStudentExam extends Model{

	private String studentId;
	private long packId;
	private int status; // 0=locked, 1=unlocked 2=started 3=completed
	
	private long lastQId;
	private DateTime startedAt;
	private long lapsedSeconds;
	private String jsonQAns;
	
	//Getters and Setters
	
}
