// ANSH GAREWAL

// IIIT NAGPUR 2019-2023

// link of app - https://itw2-final-458ae.web.app/#/

// video link -  https://drive.google.com/file/d/1n9ArLSMWaQ1bgfvJxBj-P55eocQHvchC/view?usp=sharing




import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'image_data.dart';
import 'package:flutter_share/flutter_share.dart';




void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pinterest_project',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
        ),
        home: Home());
  }
}



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(78.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.black12),
                  shape:
                      MaterialStateProperty.all<CircleBorder>(CircleBorder())),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    child: Image.asset('images/appbarlogo.png',
                        width: 36, height: 36)),
              ),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 75.0, top: 16.0),
            child: Container(
                child: Row(
              children: [
                Container(
                  height: 50,
                  width: 80,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: new TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 80,
                  child: TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.black12),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    onPressed: () {},
                    child: Text(
                      'Today',
                      style: new TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                    child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(Icons.search_sharp,
                                size: 25, color: Colors.black54),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.black12,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                                color: Colors.lightBlueAccent, width: 4),
                          ),
                        ),
                        style: TextStyle(color: Colors.black)),
                  ),
                ))
              ],
            )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black26),
                    shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder())),
                onPressed: () {},
                child: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black26),
                    shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder())),
                onPressed: () {},
                child: Icon(
                  Icons.message,
                  size: 28,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black12),
                    shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder())),
                onPressed: () {},
                child: Image.asset(
                  'images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black12),
                    shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder())),
                onPressed: () {},
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 28,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: new PinterestGrid(),
      ),
    );
  }
}

// Github link - https://github.com/funwithflutter/flutter_ui_tips/tree/master/tip_002_staggered_gridview/lib

class PinterestGrid extends StatelessWidget {
  const PinterestGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: imageList.length,
      itemBuilder: (context, index) => Hoverclass(
        imageData: imageList[index],
      ),
      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      mainAxisSpacing: 18.0,
      crossAxisSpacing: 18.0,
    );
  }
}


// Hovering over images.


class Hoverclass extends StatefulWidget {
  const Hoverclass({this.imageData});
  final ImageData imageData;
  @override
  _ImageHoverclassState createState() => _ImageHoverclassState();
}

class _ImageHoverclassState extends State<Hoverclass> {
  bool vis = false;
  @override
  Widget build(context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: InkWell(
          onTap: () {},
          onHover: (value) {
            print(value);
            if (value) {
              setState(() {
                vis = true;
              });
            } else {
              setState(() {
                vis = false;
              });
            }
          },
          child: Stack(children: [
            Opacity(
              opacity: vis ? 0.6 : 1,
              child: Image.asset(
                widget.imageData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Visibility(
                visible: vis,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 130),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    height: 40,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, top: 8.0, bottom: 8),
                          child: Text("Save",
                              style: new TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Visibility(
                  visible: vis,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30.0, left: 40, right: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 48,
                          width: 160,
                          child: TextButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.black12),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ))),
                            onPressed: () {},
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.language,
                                    size: 35, color: Colors.black54),
                              ),
                              Text(
                                'Go to link....',
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.black26),
                                shape: MaterialStateProperty.all<CircleBorder>(
                                    CircleBorder())),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(Icons.ios_share,
                                  size: 30, color: Colors.black54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.black12),
                                shape: MaterialStateProperty.all<CircleBorder>(
                                    CircleBorder())),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.more_horiz_sharp,
                                size: 35,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ])),
    );
  }
}
