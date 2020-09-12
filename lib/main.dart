import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor:Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading:Icon(Icons.videocam),
          title:const Text('youtubeあぷり'),
          actions:<Widget> [
            SizedBox(
              width:44,
              child:FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                },
              ),
            ),
            SizedBox(
              width:44,
              child:FlatButton(
                child:Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children:<Widget> [
                  SizedBox(
                    width: 60,
                    height:60,
                    child: Image.network(
                      'https://4.bp.blogspot.com/-_ZrDR3i-sMw/VP6LmCMksrI/AAAAAAAAsLo/5z9oaBgAgmc/s800/douga_haishin_youtuber.png'
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                   Column(
                    children:<Widget> [
                       const Text('今村謙吾'),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.video_call,
                              color:Colors.red,
                            ),
                            Text('登録する'),
                           ],
                         ),
                        onPressed: (){
                          // todo
                        },
                      ),
                   ],
                 ),
              ],
            ),




        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return ListTile(
                onTap: () async{
                  //Todo : 画面遷移
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoDetailPage()),
                  );
                },
                contentPadding: EdgeInsets.all(8),
                leading:Image.network(
                 'https://4.bp.blogspot.com/-_ZrDR3i-sMw/VP6LmCMksrI/AAAAAAAAsLo/5z9oaBgAgmc/s800/douga_haishin_youtuber.png'
                ),
                title: Column(
                  children:<Widget>[
                    Text('テスト',
                    style:TextStyle(
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text('100万再生',
                          style:TextStyle(fontSize: 13),
                        ),
                        Text('5日前',
                          style:TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Icon(Icons.more_vert),
              );
            },
          ),
      ),
      ],
      ),

    ),
    ),
    );
  }
}
