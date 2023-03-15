import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF02012D),
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage('https://i.pravatar.cc/300'),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Afternoon',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('John Doe'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.notifications),
                              Icon(Icons.settings),
                            ]),
                      ),
                    ]),
                SizedBox(height: 20),

                //second conatiner
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1B2152),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 5000,
                        radius: 20,
                        lineWidth: 5,
                        percent: 0.70,
                        progressColor: Color(0xFF1051E3),
                        backgroundColor: Color(0xFF1B2152),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          "70%",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      Container(
                          width: 250,
                          child: Text(
                              'Please complete your profile to book consultations.')),
                    ],
                  ),
                ),

                //third container
                SizedBox(height: 20),
                Text("Section Title 1"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1B2152),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset('assets/image.png'),
                          Text("CTA 1"),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1B2152),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset('assets/image1.png'),
                          Text("CTA 1"),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1B2152),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset('assets/image2.png'),
                          Text("CTA 1"),
                        ],
                      ),
                    ),
                  ],
                )

                //section title 2
                ,
                SizedBox(height: 20),
                Text('Section Title 2'),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1B2152),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  'https://i.pravatar.cc/300',
                                )),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Roe Rogan'),
                                Text('sub Text Shown Here'),
                                Text('card description')
                              ],
                            ),
                          ]),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF1051E3),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: const Text(
                            'CTA',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // card widget
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1B2152),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Title'),
                        SizedBox(height: 20),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  //BoxDecoration
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 2.0, color: Colors.grey)),
                                ),
                                child: ListTile(
                                  leading: Image.asset('assets/Rectangle.png'),
                                  title: Text("Article Title $index"),
                                  subtitle: Text(
                                      'Article excerpt description that run two line is shown here'),
                                ),
                              );
                            }),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF1051E3),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: const Text(
                                'View More',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  //bottom navigation bar
  Container buildMyNavBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF1B2152),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.schedule,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.schedule_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.description,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.description_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.vaccines,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.vaccines_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
