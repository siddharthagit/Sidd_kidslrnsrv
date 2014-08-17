package models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import play.db.jpa.Model;

@Entity
@Table(name="hq_question")
public class HQQuestion extends Model{
	
	
	private String qtext;
	
	@OneToMany(mappedBy="question")
	private List<HQPic> qpics;
	

	@OneToMany(mappedBy="question")
	private List<HQAnswerChoice> answerChoices;
	
	
	
	@ManyToOne
	@JoinColumn(name="qseriesid")
	private HQExamPack qexampack;
	
	
	
	//Getter and Setters
	
	
	
	
	
	public String getQtext() {
		return qtext;
	}


	

	public List<HQAnswerChoice> getAnswerChoices() {
		return answerChoices;
	}




	public void setAnswerChoices(List<HQAnswerChoice> answerChoices) {
		this.answerChoices = answerChoices;
	}




	public List<HQAnswerChoice> getCorrectAnswers() {
		List<HQAnswerChoice> correctanswers = new ArrayList<HQAnswerChoice>();
		for(HQAnswerChoice thisChoice : getAnswerChoices()){
			if (thisChoice.isAnswerCorrect())
				correctanswers.add(thisChoice);
		}
		
		return correctanswers;
	}



	public List<HQPic> getQpics() {
		return qpics;
	}


	public void setQpics(List<HQPic> qpics) {
		this.qpics = qpics;
	}


	public void setQtext(String qtext) {
		this.qtext = qtext;
	}




	public HQExamPack getQexampack() {
		return qexampack;
	}




	public void setQexampack(HQExamPack qexampack) {
		this.qexampack = qexampack;
	}


	

	
}
