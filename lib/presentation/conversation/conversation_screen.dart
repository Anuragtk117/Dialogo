import 'package:dialogo/core/colors/colors.dart';
import 'package:dialogo/core/constants/constants.dart';
import 'package:dialogo/presentation/conversation/widgets/OwnMessageCard.dart';
import 'package:dialogo/presentation/conversation/widgets/ReplyCard.dart';
import 'package:dialogo/presentation/mainPage/widgets/AppBarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ??
            {};

    final String title = arg['title']?.toString() ?? 'Unknown';
    final String icon = arg['icon']?.toString() ?? 'assets/default_icon.png';
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          title: title,
          avatar: true,
          icon: icon,
          first: video,
          second: call,
          leading: true,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 140,
            child: ListView(
              shrinkWrap: true,
              children: const [
                OwnMessageCard(
                  message: 'Hi',
                  time: '10.01 am',
                ),
                ReplyCard(
                  message: 'Hello',
                  time: '10.02 am',
                ),
                OwnMessageCard(
                  message: 'How are you ?',
                  time: '10.02 am',
                ),
                ReplyCard(
                  message: 'Fine',
                  time: '10.02 am',
                ),
                OwnMessageCard(
                  message: 'What is Lorem Ipsum?',
                  time: '10.04 am',
                ),
                ReplyCard(
                  message:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  time: '10.05 am',
                ),
                OwnMessageCard(
                  message: "Why do we use it?",
                  time: '10.06 am',
                ),
                ReplyCard(
                  message:
                      "It is a long established fact that a reader will be distracted. ",
                  time: '10.07 am',
                ),
                OwnMessageCard(
                  message: 'Thank you',
                  time: '10.08 am',
                ),
                ReplyCard(
                  message: 'You are welcome',
                  time: '10.08 am',
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: CupertinoTextField(
                      prefix: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions,
                            // color: kGrey,
                          )),
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      placeholder: 'Type something...',
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(201, 199, 199, 1),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: kBlue),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: kwhite,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
