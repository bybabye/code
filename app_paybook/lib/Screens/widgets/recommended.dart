import 'package:app_paybook/details/details.dart';
import 'package:app_paybook/models/book.dart';
import 'package:flutter/material.dart';

import 'cate_title.dart';

class Recommemded extends StatelessWidget {
  final recommendedList = Book.generateTrendingBook();
  Recommemded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CategoryTitle("Recommended for you"),
        SizedBox(
          height: size.height * 0.35,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(book: recommendedList[index],)));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: size.width * 0.35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  recommendedList[index].imgUrl!,
                                  fit: BoxFit.cover,
                                ),
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  recommendedList[index].name!,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                recommendedList[index].author!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.01,
                          left: size.width * 0.02,
                          child: _buildIcontext(Icons.star, Colors.orange[300]!,
                              '${recommendedList[index].score}'),
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => const SizedBox(
                    width: 15,
                  ),
              itemCount: recommendedList.length),
        )
      ],
    );
  }

  Widget _buildIcontext(IconData icon, Color color, String text) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
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
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
