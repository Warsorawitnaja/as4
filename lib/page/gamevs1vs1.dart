import 'package:flutter/material.dart';

class gamevs1_1 extends StatefulWidget {
  const gamevs1_1({Key? key}) : super(key: key);

  @override
  State<gamevs1_1> createState() => _gamevs1_1State();
}

class _gamevs1_1State extends State<gamevs1_1> {
  int i = 0;
  List s1 = [" ", " ", " ", 0 ,''];
  List s2 = [" ", " ", " ", 0 ,''];
  List r = [" ", " ", " ",''];

  void Setscore1() {
    setState(() {
      i += 1;
      s1[i-1] = '10';
      s2[i-1] = '   9';
      s1[3] += 10;
      s2[3] += 9;
      r[i-1] = "ROUND $i";
      if(i == 3){
        s1[4] = s1[3].toString();
        s2[4] = s2[3].toString();
        r[3] = "TOTAL";
      }
    });
  }
  void Setscore2() {
    setState(() {
      i += 1;
      s1[i-1] = ' 9';
      s2[i-1] = '10';
      s1[3] += 9;
      s2[3] += 10;
      r[i-1] = "ROUND $i";
      if(i == 3){
        s1[4] = s1[3].toString();
        s2[4] = s2[3].toString();
        r[3] = "TOTAL";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'OLYMPIC BOXING SCORING',
          ),
          backgroundColor: Color(0xff7d1d2b),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", width: 250),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 20,
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Women's Ligth (57-60kg) Semi-final",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ],
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person, color: Color(0xFFA00000), size: 80),
                  Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/flag_ireland.png",
                              width: 50),
                          Text("   IRELAND", style: TextStyle(fontSize: 25.0)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("HARRINGTON Kellie Anne",
                          style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment(1, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(s1[3] >= 29)
                            Icon(Icons.check, color: Colors.green, size: 40),
                        ],
                      ),
                      height: 55,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person, color: Color(0xFF0000A0), size: 80),
                  Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/flag_thailand.png",
                              width: 50),
                          Text("   THAILAND", style: TextStyle(fontSize: 25.0)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("SEESONDEE Sudaporn           ",
                          style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment(1, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(s2[3] >= 29)
                            Icon(Icons.check, color: Colors.green, size: 40),
                        ],
                      ),
                      height: 55,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Color(0xFFA00000),
                    height: 5,
                  )),
                  Expanded(
                      child: Container(
                    color: Color(0xFF0000A0),
                    height: 5,
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 376,
                //color: Colors.amber,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(s1[0], style: TextStyle(fontSize: 25)),
                                Column(
                                  children: [
                                    Text(r[0], style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                                Text(s2[0], style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            height: 60,
                            width: 400,
                            //color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    if (i >= 1) Divider(thickness: 0.5, color: Colors.grey),
                    /////////// แทบ score2
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(s1[1], style: TextStyle(fontSize: 25)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(r[1], style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                                Text(s2[1], style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            height: 55,
                            width: 400,
                            // color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    if (i >= 2) Divider(thickness: 0.5, color: Colors.grey),
                    /////////// แทบ score3
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(s1[2], style: TextStyle(fontSize: 25)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(r[2], style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                                Text(s2[2], style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            height: 55,
                            width: 400,
                            //color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    if (i >= 3) Divider(thickness: 0.5, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(s1[4], style: TextStyle(fontSize: 25)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(r[3],style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Text("  "+s2[4], style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            height: 55,
                            width: 400,
                            //color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    if (i >= 3) Divider(thickness: 0.5, color: Colors.grey),
                  ],
                ),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  if (i == 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            i = 0;
                            for(int j = 0 ; j < 3 ; j++){
                              s1[j] = '';
                              s2[j] = '';
                              r[j] = '';
                            }
                            s1[3] = 0;
                            s2[3] = 0;
                            s1[4] =''; s2[4] = '';
                            r[3] ='';
                          });
                        },
                        child: Icon(Icons.close),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50), primary: Colors.black),
                      ),
                    ),
                  if (i < 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: Setscore1,
                        child: Icon(Icons.person),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            primary: Color(0xFFA00000)),
                      ),
                    ),
                  SizedBox(
                    width: 5,
                  ),
                  if (i < 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: Setscore2,
                        child: Icon(Icons.person),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            primary: Color(0xFF0000A0)),
                      ),
                    ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
