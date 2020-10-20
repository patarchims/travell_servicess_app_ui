part of 'pages.dart';

class BookingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          // Image Background
          Container(
            height: height / 2.4,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1595450813785-f33e1ec8ffbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                    ),
                    fit: BoxFit.cover)),
          ),

          // Overlay Color
          Container(
            height: height / 2.4,
            width: double.infinity,
            color: Colors.black26.withOpacity(0.3),
          ),

          ListView(
            children: [
              Container(
                width: double.infinity,
                margin:
                    EdgeInsets.fromLTRB(0, 4 * defaultMargin + 62 + 40, 0, 0),
                decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 4,
                      width: width / 5,
                      decoration: BoxDecoration(
                          color: blueSky,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 90,
                                width: width / 2.5,
                                decoration: BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: blueColor),
                                      ),
                                      child: Icon(
                                        MdiIcons.tag,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "48 \$",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Price",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 90,
                                width: width / 2.5,
                                decoration: BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: blueColor),
                                      ),
                                      child: Icon(
                                        MdiIcons.watchVariant,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "2 hours",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Duration",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Description",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anyone whoe loves fishing should visi another gem of Rotonua lake Tanawera",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Gallery",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 200,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          width: width / 2.5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://images.unsplash.com/photo-1583527385201-4478c90e9c6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
                                                  ),
                                                  fit: BoxFit.cover)),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                            child: Container(
                                          width: width / 2.5,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://images.unsplash.com/photo-1549442554-f93c68ce71d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
                                                  ),
                                                  fit: BoxFit.cover)),
                                        )),
                                      ],
                                    ),
                                    Expanded(
                                        child: Container(
                                      margin: EdgeInsets.only(left: 15),
                                      width: width / 2.9,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                "https://images.unsplash.com/photo-1568287027689-8e67dc46797c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
                                              ),
                                              fit: BoxFit.cover)),
                                    )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // Button
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: width / 1.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: blueSky,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "Book Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: darkBlue,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 80,
                        width: 80,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: whiteColor,
                          onPressed: () {
                            Get.to(DetailPages());
                          },
                          mini: true,
                          child: Icon(
                            MdiIcons.chevronRight,
                            size: 50,
                            color: darkBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),

          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                defaultMargin, 4 * defaultMargin, defaultMargin, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        height: 35,
                        child: Icon(
                          MdiIcons.arrowLeft,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      child: ClipOval(
                          child: Material(
                        color: whiteColor,
                        child: Icon(MdiIcons.heartOutline, color: darkBlue),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Trarawera Lake",
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
