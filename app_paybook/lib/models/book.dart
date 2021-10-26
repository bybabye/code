class Book {
  String? imgUrl;
  String? name;
  String? author;
  num? score;
  num? review;
  num? view;
  List<String>? type;
  String? desc;
  Book(
    this.imgUrl,
    this.name,
    this.author,
    this.score,
    this.review,
    this.view,
    this.type,
    this.desc,
  );

  static List<Book> generateBook() {
    return [
      Book(
        "assets/images/book1.png",
        "Harry Potter and Philosopers Stone",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book4.png",
        "harry potter and the kings requiem",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book4.png",
        "harry potter and the kings requiem",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book4.png",
        "harry potter and the kings requiem",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book4.png",
        "harry potter and the kings requiem",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
    ];
  }

  static List<Book> generateTrendingBook() {
    return [
      Book(
        "assets/images/book1.png",
        "Harry Potter and Philosopers Stone",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book4.png",
        "Harry Potter and Philosoper's Stone",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book2.png",
        "harry potter and the cursed child",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
      Book(
        "assets/images/book3.png",
        "harry potter and the prisoner of azkaban",
        "J.K.Rowling",
        4.9,
        107.3,
        2.7,
        ['Action', 'Fantasy', 'Suspernatural'],
        "Harry Potter has been living a diffcult life ,constantly abused by his ... prejudice against Ron for his family's financial difficulties",
      ),
    ];
  }
}
