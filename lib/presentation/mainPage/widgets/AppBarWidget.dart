import 'package:dialogo/core/colors/colors.dart';
import 'package:dialogo/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {super.key,
      required this.title,
      this.avatar = false,
      this.icon = "",
      required this.first,
      required this.second,
      this.leading = false});

  final String title;
  final bool avatar;
  final String icon;
  final IconData first;
  final IconData second;
  final bool leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: leading,
      iconTheme: const IconThemeData(color: kGrey, size: 25),
      backgroundColor: bgColor,
      title: avatar
          ? Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(icon),
                  radius: 18,
                ),
                hWidth,
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: kBlue),
                ),
              ],
            )
          : Text(
              title,
              style: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: kBlue),
            ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              first,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              second,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            )),
      ],
    );
  }
}
