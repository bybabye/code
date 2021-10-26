import 'package:app_paybook/models/book.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: size.height * 0.6,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage(book.imgUrl!),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Container(
                height: size.height * 0.08,
                width: size.width * 0.2,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 250),
                        child: Text(
                          book.name!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.2),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        book.author!,
                        // textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildIconText(
                              Icons.star,
                              Colors.orange[300]!,
                              '${book.score!}(${book.review!}k)',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildIconText(
                              Icons.visibility,
                              Colors.white,
                              '${book.view!}M Read',
                            ),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: book.type!
                              .map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Chip(
                                      backgroundColor: Colors.black,
                                      label: Text(
                                        e,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          book.desc!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildButton(
                              Icons.add, Colors.grey[800]!, "Add to library"),
                          const SizedBox(
                            width: 15,
                          ),
                          _buildButton(Icons.menu_book, const Color(0xFF6741FF),
                              "Read Now"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }

  Widget _buildButton(IconData icon, Color color, String text) {
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          )),
    );
  }
}
