package controllers;

import play.*;
import play.mvc.*;

import java.util.*;

import models.*;

public class Application extends Controller {

    public static void index() {
        render();
    }

    public static void getPicture(long id) {
    	HQPic picture = HQPic.findById(id);
        response.setContentTypeIfNotSet(picture.getPicFile().type());
        renderBinary(picture.getPicFile().get());
    }
}