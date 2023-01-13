// import 'package:beta_land_lord_admin/utils/constants.dart';
// import 'package:beta_land_lord_admin/views/screens/admin/layouts/event.dart';
// import 'package:beta_land_lord_admin/views/screens/admin/layouts/hotel_layout.dart';
// import 'package:beta_land_lord_admin/views/screens/admin/layouts/short_let.dart';
import 'package:flutter/material.dart';
// import 'package:websafe_svg/websafe_svg.dart';

class BookingsLayout extends StatelessWidget {
  const BookingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(25),
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          size: 18,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "Booking Details",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.blue,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(width: size.width * 0.08),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .2,
                      height: 38,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                        ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.black54,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                          fillColor: Colors.grey,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 40.0, right: 5.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color:Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(11),
                            // child: WebsafeSvg.asset("assets/icons/search.svg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left: size.width * .04),
                  width: size.width * .42,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Color(0xFFB8B8B8),
                    tabs: [
                      Tab(text: "Hotel"),
                      Tab(text: "Events"),
                      Tab(text: "Short-let"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      HotelLayout(),
                      Event(),
                      ShortLet(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
