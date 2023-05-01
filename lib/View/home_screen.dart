import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAnim = false;
  bool isOpacity = false;
  bool isShape = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Animation",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AnimatedAlign(
              alignment:
                  isAnim == false ? Alignment.topLeft : Alignment.topRight,
              duration: Duration(
                seconds: 2,
              ),
              child: Container(
                // duration: Duration(seconds: 2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isAnim == false ? Colors.pink : Colors.purple,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isAnim = !isAnim;
                  });
                },
                child: Text("Go")),
            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: isOpacity == false ? 0 : 1,
              duration: Duration(
                seconds: 3,
              ),
              child: Container(
                // duration: Duration(seconds: 2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isOpacity == false ? Colors.pink : Colors.amber,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOpacity = !isOpacity;
                  });
                },
                child: Text("Go")),
            SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: isShape == false ? Colors.red : Colors.green,
                borderRadius: BorderRadius.circular(isShape ? 150 : 30),
              ),
              duration: Duration(
                seconds: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isShape = !isShape;
                  });
                },
                child: Text("Go"))
          ],
        ),
      ),
    ));
  }
}
