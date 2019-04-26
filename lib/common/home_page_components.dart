import 'package:flutter/material.dart';
import 'package:pocketnote/styleguide/colors.dart';

class HomePageComponents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageComponentsState();
  }
}

class HomePageComponentsState extends State<HomePageComponents> {
  double top = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              floating: true,
              pinned: false,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 40,
                        top: 60,
                        child: InkWell(
                            child: Container(
                              padding: EdgeInsets.all(12),
                          child: Image.asset("assets/images/plus.png", fit: BoxFit.contain,),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: primaryColor),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ];
        },
        body: Container(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text('hi'),
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.elliptical(width * 0.42, width * 0.52))),
                )),
            decoration: ShapeDecoration(
              shadows: [
                // BoxShadow(blurRadius: 10, color: shadowColor, spreadRadius: 0.5)
              ],
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(width * 0.4))),
            )));
  }
}
