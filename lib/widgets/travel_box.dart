import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:travel_ui/shared/theme.dart';
import 'package:travel_ui/style/style.dart';
import 'package:get/get.dart';

class TravelBox extends StatelessWidget {
  final String urlImage;
  final String urlFlag;
  final String title;
  final String city;
  final String number;

  TravelBox({this.urlImage, this.urlFlag, this.title, this.city, this.number});

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/second');
            },
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 2,
                        color: Colors.black.withOpacity(0.5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(urlImage), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
              ),
              Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(urlFlag))),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              city,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 4,
            width: double.infinity,
            color: Color(0xFF0a3a93),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                ],
              ),
              Text(
                number,
                style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          )
        ],
      ),
      style: parentStyle,
    );
  }
}
