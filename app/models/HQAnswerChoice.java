package models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
@Table(name="hq_anschoice")
public class HQAnswerChoice extends Model{

	/*Answer Text*/
	private String answerTxt;
	
	/*Answer Correct or Not, by default false*/
	private boolean answerCorrect = false;
	
	@ManyToOne
	@JoinColumn(name="qid",referencedColumnName="id")
	private HQQuestion question;

	
	//Getter and Setters
	
	public String getAnswerTxt() {
		return answerTxt;
	}

	public void setAnswerTxt(String answerTxt) {
		this.answerTxt = answerTxt;
	}



	public boolean isAnswerCorrect() {
		return answerCorrect;
	}

	public void setAnswerCorrect(boolean answerCorrect) {
		this.answerCorrect = answerCorrect;
	}

	public HQQuestion getQuestion() {
		return question;
	}

	public void setQuestion(HQQuestion question) {
		this.question = question;
	}
	
	
	
}
