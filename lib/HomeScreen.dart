import 'package:flutter/material.dart';
import 'package:shoes_store_ui/Model.dart';
import 'package:shoes_store_ui/ShoesDetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final shoesBrands = shoes;
  final recommendedList = recommendShoes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(children: [
        Container(
          height: 400.0,
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
        Positioned(
            top: 15.0,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  )
                ],
              ),
            )),
        Positioned(
            top: 15.0,
            right: 15.0,
            child: Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5.0)),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 7.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
        Positioned(
          top: 45.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Fashion Feet',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold)),
                    Text('More',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0))
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    height: 275.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: shoesBrands.map((shoe) {
                          return _buildCard(shoe);
                        }).toList()))
              ],
            ),
          ),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Recommend',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 25.0)),
            Text('More', style: TextStyle(color: Colors.grey, fontSize: 12.0))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 275.0,
          width: MediaQuery.of(context).size.width,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: recommendShoes.map((shoes) {
                return _buildCard(shoes);
              }).toList()),
        ),
      )
    ]));
  }

  Widget _buildCard(shoes) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      HomeScreen())); //ShoesDetails(shoesDetails: shoes,)));
            },
            child: Container(
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 5.0,
                          color: Colors.grey.withOpacity(0.1))
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 250.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white)),
                    Container(
                      height: 160.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          color: shoes.bgColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Hero(
                            tag: shoes.imgPath,
                            child: Container(
                                height: 125.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(shoes.imgPath),
                                        fit: BoxFit.contain),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0)))))),
                    Positioned(
                      top: 7.0,
                      left: 7.0,
                      child: Text(shoes.price,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Positioned(
                        top: 7.0,
                        right: 10.0,
                        child: Icon(Icons.shopping_cart,
                            color: Colors.white, size: 15.0)),
                    Positioned(
                        top: 175.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(shoes.title,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                )),
                            SizedBox(height: 5.0),
                            Text(shoes.subTitle,
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.grey)),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                getRatingStar(shoes.rating, 1),
                                getRatingStar(shoes.rating, 2),
                                getRatingStar(shoes.rating, 3),
                                getRatingStar(shoes.rating, 4),
                                getRatingStar(shoes.rating, 5),
                                SizedBox(width: 3.0),
                                Text(shoes.rating.roundToDouble().toString(),
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF199693))),
                              ],
                            )
                          ],
                        ))
                  ],
                ))));
  }

  getRatingStar(rating, index) {
    if (index <= rating) {
      return Icon(
        Icons.star,
        color: Color(0xFF199693),
        size: 20.0,
      );
    } else {
      return Icon(
        Icons.star,
        color: Color(0xFFADDDDD),
        size: 20.0,
      );
    }
  }
}
