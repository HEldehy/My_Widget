import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808'
                  '-6/p960x960/254577695_2062245713930904_1696470304514211639_n.jpg?_nc_cat=1&ccb=1-5&_'
                  'nc_sid=36a2c1&_nc_ohc=43ASvoP7ByMAX9m-kPX&_nc_ht='
                  'scontent.fcai19-5.fna&oh=dca03efb042f9ebb14885b350a39f8a9&oe=61926F1E'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 14.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              size: 14.0,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 5.0,
                        ),
                    itemCount: 6),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10.0,
                      ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }

  buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808'
                      '-6/p960x960/254577695_2062245713930904_1696470304514211639_n.jpg?_nc_cat=1&ccb=1-5&_'
                      'nc_sid=36a2c1&_nc_ohc=43ASvoP7ByMAX9m-kPX&_nc_ht='
                      'scontent.fcai19-5.fna&oh=dca03efb042f9ebb14885b350a39f8a9&oe=61926F1E'),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 2.0,
                )),
                CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              'Hassan Eldehy',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
  buildChatItem() => Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808'
                    '-6/p960x960/254577695_2062245713930904_1696470304514211639_n.jpg?_nc_cat=1&ccb=1-5&_'
                    'nc_sid=36a2c1&_nc_ohc=43ASvoP7ByMAX9m-kPX&_nc_ht='
                    'scontent.fcai19-5.fna&oh=dca03efb042f9ebb14885b350a39f8a9&oe=61926F1E'),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
              )),
              CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hassan Eldehy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello my name hassan',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text(
                          '02:00 AM',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
