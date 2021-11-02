import 'package:app_message_ui/data/data.dart';
import 'package:app_message_ui/screens/widgets/avatar.dart';
import 'package:app_message_ui/value/app_color.dart';
import 'package:app_message_ui/value/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListViewMess extends StatefulWidget {
  const ListViewMess({Key? key}) : super(key: key);

  @override
  State<ListViewMess> createState() => _ListViewMessState();
}

class _ListViewMessState extends State<ListViewMess> {
  @override
  void initState() {
    super.initState();
    getHttpChat();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
          itemCount: infoC.length,
          itemBuilder: (context, index) {
            DateTime dt = DateTime.parse(infoC[index].dob!);
            String time = DateFormat('kk:mm:a').format(dt);
            return Container(
              padding: const EdgeInsets.only(left: 20,),
              color: AppColor.kBackgruondItem,
              height: size.height / 6,
              child: Row(
                children: [
                  Avatar(
                    url: infoC[index].user!.picture!.large,
                    check: "",
                    number: infoC[index].number,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: size.width * 2 / 3,
                      height: size.height * 0.14,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                infoC[index].user!.name!,
                                style: AppTextStyle.h3,
                              ),
                              Text(
                                time,
                                style: AppTextStyle.h5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(infoC[index].text!,
                              style: AppTextStyle.h4
                                  .copyWith(overflow: TextOverflow.ellipsis)),
                          const Spacer(),
                          Container(
                            height: 1,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
