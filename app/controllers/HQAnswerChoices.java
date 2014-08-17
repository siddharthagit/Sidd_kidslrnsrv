package controllers;

import models.HQAnswerChoice;
import play.mvc.With;

@With(Application.class)
@CRUD.For(HQAnswerChoice.class)
public class HQAnswerChoices extends CRUD{

}
