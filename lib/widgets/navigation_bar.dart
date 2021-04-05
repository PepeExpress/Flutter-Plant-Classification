import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(15),
              topRight: const Radius.circular(15),
            ),
            color: Colors.white.withOpacity(0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, -2),
              ),
            ],
          ),
          width: size.width,
          height: size.height / 13,
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.person_outlined),
                      onPressed: () => {},
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    IconButton(
                      icon: Icon(Icons.leaderboard_outlined),
                      onPressed: () => {},
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu_book_sharp),
                          onPressed: () => {},
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.home_outlined),
                      onPressed: () => {},
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Center(
                //heightFactor: 0,
                child: Container(
                  width: 64,
                  height: 64,
                  child: FloatingActionButton(
                    onPressed: () => {Navigator.pushNamed(context, '/camera')},
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
