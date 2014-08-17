package controllers;

import models.HQPic;
import play.mvc.With;

@With(Application.class)
@CRUD.For(HQPic.class)
public class HQPics extends CRUD{

}
