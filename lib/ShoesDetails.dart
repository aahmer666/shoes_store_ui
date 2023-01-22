import 'package:flutter/material.dart';

class ShoesDetails extends StatefulWidget {
  final shoesDetails;

  ShoesDetails({this.shoesDetails});

  @override
  _WineDetailState createState() => _WineDetailState();
}

class _WineDetailState extends State<ShoesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(children: [
              Container(
                height: 500.0,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 12.0,
                          spreadRadius: 7.0)
                    ]),
              ),
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                  color: widget.shoesDetails.bgColor,
                ),
              ),
              Positioned(
                top: 15.0,
                left: 10.0,
                right: 10.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Icon(Icons.shopping_cart, color: Colors.white),
                    ],
                  ),
                ),
              ),
              //We need to tilt the image slightly
              Positioned(
                  top: 45.0,
                  left: 15.0,
                  right: 15.0,
                  child: Hero(
                      tag: widget.shoesDetails.imgPath,
                      child: RotationTransition(
                          turns: AlwaysStoppedAnimation(20 / 360),
                          child: Container(
                            height: 250.0,
                            width: 250.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(widget.shoesDetails.imgPath))),
                          )))),
              Positioned(
                top: 375.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.shoesDetails.title,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                  )
                              ),
                              Text(widget.shoesDetails.subTitle,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11.0,
                                      color: Colors.grey
                                  )
                              )
                            ],
                          ),
                          Text(widget.shoesDetails.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: widget.shoesDetails.bgColor
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text('STYLISH PERFORMANCE SHOES',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                      Text('Kick your shoe game up a notch with these Stylish Performance Shoes!',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                      Text('The PU outsole provides grip and good resistance to slip.',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      )
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('STYLISH PERFORMANCE SHOES',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                )
                            ),
                            Text('Every Journey is An Opportunity',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11.0,
                                    color: Colors.grey
                                )
                            )
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: widget.shoesDetails.bgColor.withOpacity(0.5),
                          size: 22.0,
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Text('Kick your shoe game up a notch with these Stylish Performance Shoes! They have been made with good quality Mesh material that ensures durability and breathability.',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}