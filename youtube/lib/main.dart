import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Youtube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,

      
      ),
      home: MyHomePage(title: "",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,      
        title:Image.network("assets/images/youtube.jpg",height: 80,),
      actions:<Widget> [
        IconButton(
          icon:Icon(
            Icons.cast,
            size: 25,
          ),
          
       onPressed: (){print("basıldı");
       }
      ),
      IconButton(
          icon:Icon(
            Icons.notifications_outlined,
            size: 25,
          ),
          
       onPressed: (){print("basıldı");
       }
      ),
      IconButton(
          icon:Icon(
            Icons.search,
            size:25 ,
          ),
          
       onPressed: (){print("basıldı");
       }
      ),
      IconButton(
          icon:Icon(
            Icons.account_circle,
          ),
          
       onPressed: (){print("basıldı");
       }
      ),

      ],
      ),
   
      
      body: Center(
      
        child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context,index){
            return Card(
              child:Column(
                children: [
                  Image.network("assets/images/berkcoskun.jpg"),
                  ListTile(
                    leading:Image.network("assets/images/emrealkac.png"),
                    title: Text("YOUTUBE HİLELERİ (Renk Değiştiren Oynatıcı, Gizli Mod, Konum Değiştirme)"),
                    subtitle: Text("Berk Coşkun 566 B görüntülenme"),
                  ),
                   Image.network("assets/images/teknoloji.jpg"),
                  ListTile(
                    leading:Image.network("assets/images/emrealkac.png"),
                    title: Text("YouTube Premium Türkiye’de! İşte fiyatı"),
                    subtitle: Text("Shifdelte 120 B görüntülenme"),
                  ),
                   Image.network("assets/images/ruhicenet.jpg",),
                  ListTile(
                    leading:Image.network("assets/images/emrealkac.png",),
                    title: Text("Youtube'un Gerçek Yüzü, Neden Bıktım..."),
                    subtitle: Text("Ruhi Çenet 855 B görüntülenme"),
                  ),
                 
                  
                ],
              ),
            );
          }
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:const<BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.home,color:Colors.white),
             label:"Anasayfa",
            ),
             BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.explore,color: Colors.white,),
            label: "Keşfet",
            ),
             BottomNavigationBarItem(icon: Icon(Icons.add_circle_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.add_circle,color: Colors.white,),
            label: "Yükle",
            ),
             BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.subscriptions,color: Colors.white,),
            label: "Abonelikler",
            ),
             BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined,color: Colors.white,),
            activeIcon: Icon(Icons.video_library,color: Colors.white,),
            label: "Kitaplık",
            )
          ],),
          
      );
  }
}

