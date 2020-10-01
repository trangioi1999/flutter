import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thanhhuyapp/themes/colors.dart';


class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      backgroundColor: black,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppbar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/images/camera_icon.svg",
              width: 30,
            ),
            Text("Manager Gas User",
                style: TextStyle(fontFamily: "Billabong", fontSize: 35)),
            SvgPicture.asset(
              "assets/images/message_icon.svg",
              width: 30,
            ),
          ],
        ),
      );
    }
    if (pageIndex == 1) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Text("Upload",style: TextStyle(fontFamily: "Billabong", fontSize: 35)),
        centerTitle: true,
      );
    }
    if (pageIndex == 2) {
      return AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        title: Text("Profile",style: TextStyle(fontFamily: "Billabong", fontSize: 35)),
      );
    }
  }

  Widget getBody() {
    List<Widget> pages = [
      Center(
        child: Text(
          "HomePage",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      ),
      Center(
        child: Text(
          "Upload Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      ),
      Center(
        child: Text(
          "Profile Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      ),

    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/upload_active_icon.svg"
          : "assets/images/upload_icon.svg",
      pageIndex == 2
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(color: appFooterColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: SvgPicture.asset(
                  bottomItems[index],
                  width: 27,
                ),
              );
            })),
      ),
    );
  }

  selectedTab(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
