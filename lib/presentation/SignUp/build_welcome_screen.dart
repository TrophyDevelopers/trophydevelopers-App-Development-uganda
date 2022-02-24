/*
 Copyright (c) 2022.[SoftWare/ Mobile Application Development Company in Uganda, East Africa](https://www.trophydevelopers.com/mobile-application-development-uganda), and,
                            [Website Designing Company,](https://www.trophydevelopers.com/contact-uganda-website-designers), . All Rights Reserved
 */

//External Packages by Google and other contributors
import 'package:flutter/material.dart';
import 'package:trophydevelopers/presentation/SignIn/sign_in.dart';


CustomScrollView buildCustomScrollView(BuildContext context) {
  return CustomScrollView(
    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    slivers: <Widget>[
      SliverAppBar(
        flexibleSpace: buildAppBar(),
        // backgroundColor: kThemeWhite,
        stretch: true,
        onStretchTrigger: () {
          // Function callback for stretch
          return Future<void>.value();
        },
        expandedHeight: 260.0,
      ),
      SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: TextButton(
               child: const Text(
                'I am a Teacher',
                // style: kButtonTextWhite,
              ),
                // buttonImage: 'girl_icon_comp.png',
                // buttonImage2: 'icon_boy_comp.png',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: TextButton(
              child: const Text(
                'I am a Teacher',
                // style: kButtonTextWhite,
              ),
              onPressed: () {
                //
              },
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('hey',),
                      ),
                      const Text(
                        'and',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ],
  );
}
AppBar buildAppBar() {
  return AppBar(
    primary: false,
    automaticallyImplyLeading: false,
    bottomOpacity: 1,
    elevation: 0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 290,
    // primary: false,
    // flexibleSpace: kBackground,
    title: _buildPadding(),
  );
}

Widget _buildPadding() {
  return const Padding(
    padding: EdgeInsets.only(left: 73, right: 73, top: 160, bottom: 10),
    child: Center(
      child: Hero(
        tag: 'logo',
        child: SizedBox(
          height: 210.0,
          // child: kLogoREN,
        ),
      ),
    ),
  );
}