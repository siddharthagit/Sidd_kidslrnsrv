package models;
import java.util.List;

import javax.persistence.*;

import play.db.jpa.Model;


@Entity
@Table(name="hq_exampack")
public class HQExamPack extends Model{
	
	private String name;

	private String level;
	
	private HQExamPackCat qcat;
	
	private boolean active;
	
	@OneToMany(mappedBy="qexampack")
	/*@JoinTable(
			   name = "hq_testseries_questions", 
			   joinColumns = @JoinColumn(name = "series_id", referencedColumnName="id"), 
			   inverseJoinColumns = @JoinColumn(name = "question_id",referencedColumnName="id")
			 )*/
	private List<HQQuestion> questions;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public HQExamPackCat getQcat() {
		return qcat;
	}


	public void setQcat(HQExamPackCat qcat) {
		this.qcat = qcat;
	}

	
	public List<HQQuestion> getQuestions() {
		return questions;
	}

	public void setQuestions(List<HQQuestion> questions) {
		this.questions = questions;
	}

	
}
