package controllers;

import models.HQQuestion;
import play.mvc.With;

@With(Application.class)
@CRUD.For(HQQuestion.class)
public class HQQuestions extends CRUD{

}
