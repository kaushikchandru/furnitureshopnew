import 'package:flutter/material.dart';
import 'styleScheme.dart';
import 'package:furniturenew/ProductPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/ProductPage' : (context) => ProductPage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedCategory = "All";
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
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 20,
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 60,
              decoration: containerStyle("right"),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 36,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 22,

                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 22
                          )
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryWidget("All"),
                  categoryWidget("Chair"),
                  categoryWidget("Sofa"),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5-15,
                          child: Column(
                            children: [
                              productWidget("right", "singleSofa", "NASHVILLE", "\$349", 2),
                              productWidget("left", "lamp2", "TRIPOD LAMP", "\$119", 3),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5-15,
                          child: Column(
                            children: [
                              productWidget("left", "lamp1", "FLOOR LAMP", "\$129.0", 3),
                              productWidget("right", "chair1", "ACCENT CHAIR", "\$119.0", 2),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-30,
                          child: productWidget("right", "sofa1", "LOVE SET SOFA", "\$529.0", 2),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5-15,
                          child: productWidget("right", "marineStool", "MARINE STOOL", "\$65", 2),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5-15,
                          child: productWidget("left", "chair2", "RAYNER CHAIR", "\$59.0", 2),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: containerStyle("right").copyWith(
                color: Colors.black
              ),
              child: Center(
                child: Text("Show more", style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
  Container productWidget(String side, String img, String name, String price, double heightMultiplier)
  {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      height: 120.0*heightMultiplier,
      decoration: containerStyle(side),
      child: InkWell(
        onTap: openProductPage,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/$img.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(name, style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),),
            Text(price, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),)
          ],
        ),
      ),
    );
  }
  InkWell categoryWidget(String title)
  {
    return InkWell(
      onTap: (){selectCategory(title);},
      child: Container(
        margin: EdgeInsets.only(right: 5, bottom: 5),
        height: 50,
        width: 150,
        decoration: containerStyle("right").copyWith(border: (title == selectedCategory) ? Border.all(
          color: Color(0xff005dff),
          width: 2,
        ): null) ,
        child: Center(
          child: Text(title, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
        ),
      ),
    );
  }
  void selectCategory(String title)
  {
    selectedCategory = title;
    setState(() {

    });
  }
  void openProductPage()
  {
    Navigator.pushNamed(context, '/ProductPage');
  }
}
