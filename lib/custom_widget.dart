import "package:flutter/material.dart";

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Color.fromRGBO(250, 249, 255, 1),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(222, 222, 224, 1),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 6 - 4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.cloud,
                        color: Color.fromRGBO(251, 93, 100, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: MediaQuery.of(context).size.width / 12 - 6,
                    child: Icon(Icons.favorite, color: Colors.black45,),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: (MediaQuery.of(context).size.width - 120) /
                      (MediaQuery.of(context).size.height / 2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/794062/pexels-photo-794062.jpeg?cs=srgb&dl=woman-in-peach-color-and-red-floral-sweatshirt-holding-gray-794062.jpg&fm=jpg"),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 10,
                            blurRadius: 20,
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      width: 300,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 16, left: 20, right: 20, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Irene Sotelo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                  ),
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "10 km away",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(126, 126, 126, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(255, 226, 230, 1), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shadows: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: CircleBorder(),
                    child: Image.asset(
                      "assets/icons8-delete-60.png",
                      width: 32,
                      height: 32,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(218, 250, 239, 1), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shadows: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: CircleBorder(),
                    child: Image.asset(
                      "assets/icons8-heart-48.png",
                      width: 32,
                      height: 32,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
