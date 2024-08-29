import 'package:dialogo/core/colors/colors.dart';
import 'package:dialogo/core/constants/constants.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {super.key, required this.title, required this.icon, this.onTap});

  final String title;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundImage: AssetImage(icon),
      ),
      title: Text(
        title,
        style:
            TextStyle(color: kwhite, fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: const Row(
        children: [
          Icon(
            Icons.done_all,
            color: kGrey,
          ),
          hWidth,
          Text("how are you"),
        ],
      ),
      subtitleTextStyle: TextStyle(color: kGrey),
      trailing: const Column(
        children: [
          Text(
            "3.41 pm",
            style: TextStyle(color: kGrey),
          ),
          hHeight,
          CircleAvatar(
            backgroundColor: kBlue,
            radius: 10,
            child: Text(
              "3",
              style: TextStyle(color: kwhite, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
