import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:travel_ui/shared/theme.dart';
import 'package:travel_ui/style/style.dart';
import 'package:get/get.dart';

class LocationBox extends StatelessWidget {
  final String urlImage;
  final String title;
  final String city;

  LocationBox({this.urlImage, this.title, this.city});

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Column(
        children: [
          Container(
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
        ],
      ),
      style: parentStyle,
    );
  }
}
