part of 'pages.dart';

class DetailPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);

    List<Widget> location = [
      LocationBox(
        urlImage:
            "https://images.unsplash.com/photo-1535776142635-8fa180c46af7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=956&q=80",
        city: "Canada",
        title: "Toronto",
      ),
      LocationBox(
        urlImage:
            "https://images.unsplash.com/photo-1505993597083-3bd19fb75e57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=754&q=80",
        city: "Bromo",
        title: "Indonesia",
      ),
      LocationBox(
        urlImage:
            "https://images.unsplash.com/photo-1565967511849-76a60a516170?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
        city: "Merlion Park",
        title: "Singapore",
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: blueColor,
        body: Container(
          color: blueColor,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 22),
                    height: 56,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SizedBox(
                              height: 35,
                              child:
                                  Icon(MdiIcons.arrowLeft, color: whiteColor),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Countries",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: whiteColor, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Toronto",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                      ),

                      // Flag
                      Container(
                        height: 28,
                        width: 35,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.kamusdata.com/wp-content/uploads/2019/03/kanada.jpg"))),
                      ),
                    ],
                  ),

                  // Spacing
                  SizedBox(
                    height: 50,
                  ),

                  Row(
                    children: [
                      // Textfield
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: whiteColor, fontSize: 12),
                          autocorrect: false,
                          decoration: InputDecoration(
                              hintText: 'Search in Tornoto',
                              hintStyle:
                                  TextStyle(color: whiteColor, fontSize: 12),
                              filled: true,
                              fillColor: darkBlue,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: border,
                                  borderSide: BorderSide(color: darkBlue)),
                              errorBorder: OutlineInputBorder(
                                borderRadius: border,
                                borderSide: BorderSide(color: darkBlue),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: border,
                                  borderSide: BorderSide(color: darkBlue)),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search_sharp,
                                  color: whiteColor,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),

                  // Spacing
                  SizedBox(
                    height: 20,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Services",
                        style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                  ),

                  // Spacing
                  SizedBox(
                    height: 10,
                  ),

                  // Services

                  SizedBox(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Services
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 85,
                          decoration: (BoxDecoration(
                              color: darkBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Icon(MdiIcons.coffeeOutline,
                                      color: whiteColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Food",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 85,
                          decoration: (BoxDecoration(
                              color: darkBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Icon(MdiIcons.carOutline,
                                      color: whiteColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Auto",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 85,
                          decoration: (BoxDecoration(
                              color: darkBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Icon(MdiIcons.roomServiceOutline,
                                      color: whiteColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Hotel",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 85,
                          decoration: (BoxDecoration(
                              color: darkBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Icon(MdiIcons.imageOutline,
                                      color: whiteColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Gallery",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 85,
                          decoration: (BoxDecoration(
                              color: darkBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Icon(MdiIcons.roomServiceOutline,
                                      color: whiteColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Room",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Spacing
                  SizedBox(
                    height: 20,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Recommended Location",
                        style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                  ),

                  // Spacing
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 250,
                      width: double.infinity,
                      // Generate Pageview

                      child: PageView.builder(
                          controller: controller,
                          itemCount: location.length,
                          itemBuilder: (context, index) => location[index]))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
