package models;

//Name,Timeout in Seconds Per Question Set,
public enum HQExamPackCat {
	EpPicQ("EpPicQ",0),
	EpPicQAutoQA("EpPicQAutoQA",60),
	EpGQA("EpGQA",60);
	
	String examCatName ;
	long   examTimeOut ;
	
	HQExamPackCat(String name, long timeout){
		examCatName = name;
		examTimeOut = timeout;
	}

	
}
