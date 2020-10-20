part of 'pages.dart';

final border = BorderRadius.all(Radius.circular(100));

class DashboardPages extends StatefulWidget {
  final bool isExpired;

  DashboardPages({this.isExpired = false});

  @override
  _DashboardPagesState createState() => _DashboardPagesState();
}

class _DashboardPagesState extends State<DashboardPages> {
  bool isExpireds;

  @override
  void initState() {
    super.initState();

    isExpireds = widget.isExpired;
  }

  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);

    List<Widget> travels = [
      TravelBox(
        urlImage:
            "https://images.unsplash.com/photo-1535776142635-8fa180c46af7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=956&q=80",
        urlFlag:
            "https://www.kamusdata.com/wp-content/uploads/2019/03/kanada.jpg",
        city: "Canada",
        number: "8,5",
        title: "Toronto",
      ),
      TravelBox(
        urlImage:
            "https://images.unsplash.com/photo-1505993597083-3bd19fb75e57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=754&q=80",
        urlFlag:
            "https://nos.wjv-1.neo.id/indowindow/2019/10/Indonesia-bendera.jpg",
        city: "Bromo",
        number: "9",
        title: "Indonesia",
      ),
      TravelBox(
        urlImage:
            "https://images.unsplash.com/photo-1565967511849-76a60a516170?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
        urlFlag:
            "https://image.shutterstock.com/image-vector/original-simple-republic-singapore-flag-600w-159208562.jpg",
        city: "Merlion Park",
        number: "6,2",
        title: "Singapore",
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: blueColor,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 421,
                color: darkBlue,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 423,
                width: double.infinity,
                color: blueColor,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          defaultMargin, 2 * defaultMargin, defaultMargin, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 12),
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                      hintText: 'searh',
                                      hintStyle: TextStyle(
                                          color: whiteColor, fontSize: 12),
                                      filled: true,
                                      fillColor: darkBlue,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: border,
                                          borderSide:
                                              BorderSide(color: darkBlue)),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: border,
                                        borderSide: BorderSide(color: darkBlue),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: border,
                                          borderSide:
                                              BorderSide(color: darkBlue)),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.search_sharp,
                                          color: whiteColor,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 60,
                                width: 60,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        child: ClipOval(
                                          child: Image.asset(
                                              "assets/images/profile.jpg"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(40, 45, 10, 0),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: blueSky,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          // Text Discover
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Discover",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isExpireds = !isExpireds;
                                      });
                                    },
                                    child: Text(
                                      "Popular",
                                      style: TextStyle(
                                          color: blueSky,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 4,
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    decoration: BoxDecoration(
                                        color: blueSky,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: null,
                                    child: Text(
                                      "Rating",
                                      style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 4,
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: null,
                                    child: Text(
                                      "Recent",
                                      style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 4,
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                  )
                                ],
                              ),
                            ],
                          )

                          //
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 420),
                width: double.infinity,
                height: double.infinity,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 300,
                          width: double.infinity,
                          child: PageView.builder(
                              controller: controller,
                              itemCount: travels.length,
                              itemBuilder: (context, index) => travels[index]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Book with us",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: darkBlue),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 15),
                                        padding: EdgeInsets.all(8),
                                        height: 50,
                                        width: 70,
                                        child: Image.asset(
                                            "assets/icon/coffee.png"),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                width: 3,
                                                color: Color(0xFF1542a0)))),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Food",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "More than 600 coffe shops",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: darkBlue),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 15),
                                        padding: EdgeInsets.all(8),
                                        height: 50,
                                        width: 70,
                                        child: Image.asset(
                                            "assets/icon/hotel.png"),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                width: 3,
                                                color: Color(0xFF1542a0)))),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hotel",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "More than 50 room on hotels",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
