package controllers;

import java.util.List;

import models.HQQuestion;
import models.HQExamPack;
import play.mvc.Controller;

public class ApplicationApiV1 extends Controller {

	public HQQuestion getQuestion() {
		return null;
	}

	public static void getTestSets(){
		
		List<HQExamPack> s = HQExamPack.findAll();	
		renderJSON(s);
	}
}
