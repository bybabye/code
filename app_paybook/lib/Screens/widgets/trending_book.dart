import 'package:app_paybook/Screens/widgets/cate_title.dart';
import 'package:app_paybook/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  TrendingBook({Key? key}) : super(key: key);

  final trendingList = Book.generateBook();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CategoryTitle("Trending Book"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: size.height * 0.3,
          child: ListView.separated(
            itemBuilder: (_, index) => InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height * 0.2,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(trendingList[index].imgUrl!),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  trendingList[index].name!,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Colors.orange[300],
                              )
                            ],
                          ),
                          Text(
                            trendingList[index].author!,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            trendingList[index].desc!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              _buildIconText(
                                Icons.star,
                                Colors.orange[300]!,
                                '${trendingList[index].score!}(${trendingList[index].review!}k)',
                              ),
                              const SizedBox(width: 10,),
                              _buildIconText(
                                Icons.visibility,
                                Colors.white,
                                '${trendingList[index].view!}M Read',
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (_, index) => const SizedBox(height: 15),
            itemCount: trendingList.length,
          ),
        )
      ],
    );
  }

  Widget _buildIconText(IconData icon,Color color,String text ) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 14,
        ),
        const SizedBox(width: 2,),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )
      ],
    );
  }
}
