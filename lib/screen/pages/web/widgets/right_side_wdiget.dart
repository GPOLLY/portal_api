import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RightSideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: 300,
      height: 900,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 2,
            offset: Offset(0.5, 0.0),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Wrap(
        children: [
          _searchWidget(),
          _profileWidget(),
          _upgradeToProWidget(),
          _reminderWidget(),
        ],
      ),
    );
  }

  Widget _searchWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 220,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileWidget() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "welcome,",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "George Wambui",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),

                  ],
                ),
              ),
              Container(
                width: 80,
                height: 80,
                child: Image.asset("assets/profile.png"),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

  Widget _upgradeToProWidget() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.indigo),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Information",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

            ],
          ),

        ],
      ),
    );
  }

  Widget _reminderWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // SizedBox(height: 15,),
          // _singleRowButton(
          //   title: "Booking Reminder",
          //   description: "Lorem Ipsum is simply dummy text",
          //   icon: Icons.announcement_outlined,
          //   iconColor: Colors.red[600],
          //   boxColor: Colors.red[100]
          // ),
          // SizedBox(height: 15),
          // _singleRowButton(
          //     title: "New Message",
          //     description: "Lorem Ipsum is simply dummy text",
          //     icon: Icons.announcement_outlined,
          //     iconColor: Colors.yellow[600],
          //     boxColor: Colors.yellow[100]
          // ),
          // SizedBox(height: 15,),
          //_singleRowButton(
          //     title: "Upcoming Booking",
          //     description: "Lorem Ipsum is simply dummy text",
          //     icon: Icons.announcement_outlined,
          //     iconColor: Colors.red[600],
          //     boxColor: Colors.red[100]
          // ),
        ],
      ),
    );
  }

  _singleRowButton(
      {Color boxColor,
      Color iconColor,
      IconData icon,
      String title,
      String description}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Icon(
            icon,
            size: 20,
            color: iconColor,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(description,style: TextStyle(fontSize: 14,color: Colors.grey[400]),)
          ],
        )
      ],
    );
  }
}
