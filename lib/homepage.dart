import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(5.0),
        color: Color(0xff000033),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 0.7)),
              ),
              Container(
                height: 100.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.amber, width: 1.5)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.amber)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.amber)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int balance = 300000;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xff000033),
      leading: IconButton(
        icon: Image.asset(
          "Assets/logo.png",
          width: 100,
          height: 100,
        ),
        onPressed: () {},
      ),
      actions: [
        Center(
          child: Text(
            'Balance= MWK $balance',
            style: TextStyle(color: Color(0xff05950a)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5.0),
          height: 10,
          decoration:
              BoxDecoration(color: Color(0xff013629), shape: BoxShape.circle),
          child: IconButton(
            icon: Icon(Icons.person_3_outlined),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
