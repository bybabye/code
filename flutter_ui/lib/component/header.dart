
import 'package:flutter/material.dart';
import 'package:flutter_ui/Controller/MenuController.dart';
import 'package:flutter_ui/component/widgets/profile_card.dart';
import 'package:flutter_ui/component/widgets/search_field.dart';
import 'package:flutter_ui/responsive/responsive.dart';
import 'package:provider/src/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(onPressed:  context.read<MenuController>().controlMenu, icon: const Icon(Icons.menu)),
        if(!Responsive.isMobile(context))
        Text(
          "DashBroad",
          style: Theme.of(context).textTheme.headline6,
        ),
        if(!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ?  2 : 1,),
        const Expanded(
          child: SreachField(),
        ), 
        const ProfileCard()
      ],
    );
  }
}