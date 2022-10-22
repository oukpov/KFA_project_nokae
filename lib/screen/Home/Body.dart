// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kfa_project/contants.dart';
import 'package:kfa_project/screen/Promotion/Membership.dart';
import 'package:kfa_project/screen/Home/Customs/MenuCard.dart';
import 'package:kfa_project/screen/Promotion/PartnerList.dart';
import 'package:kfa_project/screen/Promotion/Title_promo.dart';
import 'package:kfa_project/screen/Promotion/promotion.dart';
import 'package:kfa_project/screen/Home/Customs/titleBar.dart';

class Body extends StatefulWidget {
  final String user;
  final String first_name;
  final String last_name;
  final String email;
  final String gender;
  final String from;
  final String tel;
   final String id;
  const Body({
    Key? key, required this.user, required this.first_name, required this.last_name, required this.email, required this.gender, required this.from, required this.tel, required this.id,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        title: TitleBar(),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {},
          )
        ],
        toolbarHeight: 80,
      ),

      //body: Container(
      body: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: double.infinity,
            ),
            padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
            // decoration: BoxDecoration(
            //   color: kBackgroundColor,
            //   borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(25),
            //     topRight: Radius.circular(25),
            //   ),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Menu(
                  user: widget.user,
                      email: widget.email,
                      first_name: widget.first_name,
                      last_name: widget.last_name,
                      gender: widget.gender,
                      from: widget.from,
                      tel: widget.tel,
                      id: widget.id,
                ),
                SizedBox(
                  height: 20,
                ),
                // Divider(
                //   color: Colors.blueAccent,
                //   thickness: 0.5,
                // ),
                Title_promotion(title_promo: 'Our Partners'),
                // SizedBox(
                //   height: 10,
                // ),
                Divider(
                  color: Colors.blueAccent,
                  thickness: 0.5,
                ),
                PartnerList(),

                SizedBox(
                  height: 15,
                ),
                Title_promotion(title_promo: 'Our Membership'),
                Divider(
                  color: Colors.blueAccent,
                  thickness: 0.5,
                ),

                MembershipList(),
                SizedBox(
                  height: 15,
                ),
                Title_promo(),
                Promotion(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
