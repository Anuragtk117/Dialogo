import 'package:dialogo/core/colors/colors.dart';
import 'package:dialogo/core/constants/constants.dart';
import 'package:dialogo/presentation/mainPage/widgets/AppBarWidget.dart';
import 'package:dialogo/presentation/mainPage/widgets/ChatTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});
  static const _names = [
    "Anurag T K",
    "Neema",
    "Aswin K",
    "Farhathulla",
    "ishaque",
    "Ramu",
    "Achu",
    "Manu"
  ];

  static const _images = [
    "assets/icon.jpg",
    "assets/farhathulla.jpg",
    "assets/ishaque.jpg",
    "assets/anurag.jpg",
    "assets/icon.jpg",
    "assets/farhathulla.jpg",
    "assets/ishaque.jpg",
    "assets/anurag.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Dialogo',
          first: qrCode,
          second: camera,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Column(
                children: [
                  const CupertinoSearchTextField(
                    itemColor: kwhite,
                    style: TextStyle(color: kwhite),
                    padding: EdgeInsets.all(15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ChatTile(
                            title: _names[index],
                            icon: _images[index],
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/ConversationScreen", arguments: {
                                "icon": _images[index],
                                "title": _names[index]
                              });
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: kGrey,
                            thickness: 0.5,
                          );
                        },
                        itemCount: _names.length),
                  ),
                ],
              ),
              Positioned(
                bottom: 60,
                right: 10,
                child: FloatingActionButton(
                  clipBehavior: Clip.none,
                  onPressed: () {},
                  backgroundColor: kBlue,
                  child: const Icon(
                    Icons.chat,
                    color: kwhite,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
