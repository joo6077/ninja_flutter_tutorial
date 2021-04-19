class Quote {
  String text;
  String author;

  // this 자동 맵핑
  Quote({this.text, this.author});

  //! Quote({String text, String author}) {
  //!   this.text = text;
  //!   this.author = author;
  //! }
}

Quote myQuote = Quote(text: 'this is the quote text', author: 'oscar wilde');
