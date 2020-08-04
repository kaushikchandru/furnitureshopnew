import 'package:flutter/material.dart';
import 'styleScheme.dart';
import 'main.dart';
class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: productPage(),
      routes: {
        '/MainPage' : (context) => MyApp(),
      },
    );
  }
}
class productPage extends StatefulWidget {
  @override
  _productPageState createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  Color currentColor = Color(0xff2f4b81);
  String currentChair = "1";
  String sofaColor = "blueSofa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Container(
                margin: EdgeInsets.only(bottom: 5, right: 5),
                height: 50,
                width: 50,
                decoration: containerStyle("all"),
                child: Center(
                  child: InkWell(
                    onTap: gotoHomePage,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  height: 50,
                  width: 50,
                  decoration: containerStyle("all"),
                  child: Center(
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  height: 50,
                  width: 50,
                  decoration: containerStyle("all"),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  height: 250,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: containerStyle("all"),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/images/$sofaColor/$currentChair.png')
                      )
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width*0.15,
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      colorWidget(Color(0xff2f4b81)),
                      colorWidget(Color(0xffbc4747)),
                      colorWidget(Color(0xfffec286)),
                      colorWidget(Color(0xff47bc66)),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productWidget("1"),
                    productWidget("2"),
                    productWidget("3"),
                    productWidget("4"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("NASHVILLE ARMCHAIR", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Text("\$349.0", style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width*0.15,
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text("-", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Text("1", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text("+", style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Center(
                child: Text("A comtemprary twist on classic mid-century modern design", style: TextStyle(
                  fontSize: 20
                ),textAlign: TextAlign.center,),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: containerStyle("right").copyWith(
                color: Colors.black
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Add to cart", style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  InkWell productWidget(String img)
  {
    return InkWell(
      onTap: (){changeCurrentChair(img);},
      child: Container(
        height: 100,
        width: 130,
        margin: EdgeInsets.only(right: 10, bottom: 10),
        decoration: containerStyle("all").copyWith(
          border: Border.all(
            color: (currentChair == img) ? Color(0xff005dff) : Colors.transparent
          )
        ),
        child: Center(
          child: Container(
            height: 80,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/$sofaColor/$img.png")
              )
            ),
          ),
        ),
      ),
    );
  }
  void changeCurrentChair(String img)
  {
    currentChair = img;
    setState(() {

    });
  }
  void setCurrentColor(Color colorName)
  {
    currentColor = colorName;
    if(colorName == Color(0xffbc4747))
      {
        sofaColor = "redSofa";
      }
    else{
      sofaColor = "blueSofa";
    }
    setState(() {
      
    });
  }
  Container colorWidget(Color colorName)
  {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: (currentColor == colorName) ? colorName : Colors.transparent
        )
      ),
      child: Center(
        child: InkWell(
          onTap: (){setCurrentColor(colorName);},
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorName
            ),
          ),
        ),
      ),
    );
  }
  void gotoHomePage()
  {
    Navigator.pushNamed(context, '/MainPage');
  }
}

