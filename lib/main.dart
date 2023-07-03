import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  void _onScroll() {
    print('sss');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    )..addListener(_onScroll);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: <Widget>[
        makePage(
          image: 'assets/chung.jpg',
          title: 'Sikkim, India',
          description:'Changu Lake, also known as Tsomgo Lake, is a picturesque glacial lake located in the Indian state of Sikkim. Situated at an altitude of 3,753 meters, it offers breathtaking views of surrounding mountains and is considered sacred by the local people. The lake freezes during the winter, adding to its allure.',
          first: "4.0",
          total: "2300",
          number: "1",
          ),
          makePage(
          image: 'assets/pune.jpg',
          title: 'Pune, India',
          description:'Rajgarh is a serene suburb situated in the city of Pune, India. Known for its lush greenery and tranquil atmosphere, Rajgarh offers a peaceful retreat away from the bustling city life. It is renowned for its beautiful temples, scenic landscapes, and pleasant weather, making it a popular destination for nature lovers.',
          first: "4.3",
          total: "5300",
          number: "2",
          ),
          makePage(
          image: 'assets/one.jpg',
          title: 'Tokyo, Japan',
          description:'Tokyo, the capital city of Japan, is a vibrant metropolis known for its modernity, rich culture, and technological advancements. It offers a unique blend of traditional and contemporary attractions, including historic temples, bustling markets, futuristic skyscrapers, and world-class shopping districts. Tokyo is also renowned for its delicious cuisine, efficient public transportation, and vibrant nightlife. With its distinct neighborhoods and countless attractions, Tokyo is a fascinating destination that seamlessly blends tradition and innovation.',
          first: "4.5",
          total: "8300",
          number: "3",
          ),
        makePage(
          image: 'assets/four.jpg',
          title: 'Maldives',
          description:'The Maldives is a tropical paradise located in the Indian Ocean, renowned for its pristine white sandy beaches, crystal-clear turquoise waters, and vibrant coral reefs. It is composed of a collection of islands, each offering luxurious resorts, water villas, and a variety of water sports and activities. The Maldives is a popular destination for honeymooners and beach lovers seeking an idyllic escape in a stunning natural setting.',
          first: '4.4',
          total: '5200',
          number: "4",
          ),
        makePage(
          image: 'assets/two.jpg',
          title: 'Lake Louise, Canada',
          description:'Lake Louise is a breathtakingly beautiful alpine lake located in Banff National Park, Canada. Surrounded by majestic mountains, including the iconic Victoria Glacier, the turquoise-colored lake offers stunning vistas and is a popular destination for hiking, canoeing, and photography. Its picturesque setting makes it a must-visit attraction in the Canadian Rockies.',
          first: "4.8",
          total: "3100",
          number: "5",
          ),
        makePage(
          image: 'assets/three.jpg',
          title: 'Beaver Dam, WI 53916, USA',
          description:'Beaver Dam is a charming city located in Dodge County, Wisconsin, USA. Situated along the Beaver Dam Lake, it offers picturesque views and recreational opportunities such as boating, fishing, and hiking. The city boasts a rich history, with well-preserved architecture, museums, and a vibrant downtown area with shops and restaurants. It is a welcoming community known for its friendly residents and small-town charm.',
          first: "4.1",
          total: "6000",
          number: "6",
          ),
      ],
    ));
  }

  Widget makePage({image, title, description, first, total, number}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          .3,
          .9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.3),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  number,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '/6',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  first,
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  '($total)',
                  style: TextStyle(color: Colors.white38, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(description, style: TextStyle(color: Colors.white.withOpacity(.7)),),
              ),
              SizedBox(height: 20,),
              Text('READ MORE', style: TextStyle(color: Colors.white),),
              SizedBox(height: 20,),
          ]),
        ),
      ),
    );
  }
}
