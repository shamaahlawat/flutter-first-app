
//creating custom class to creat edifferent objectss
class Quote { // inside we need two properties , for text and author , its like a blueprint for object 
    String text;
    String author;

    //need constructor also name same as claSS
    // Quote(String text , String author){
    //   this.text = text;
    //   this.author = author ;
    // }

    //for named paramerers 
    Quote({this.text , this.author});
}

// Quote myquote = Quote(text:'this is the quote text',author:'oscar wilder'); // named parameter 