import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Story extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          titleSpacing: 10.0,
          backgroundColor: Colors.grey[900],
          title: Center(
            child: Text('قصص الانبياء',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
            ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){
            },icon: Icon(Icons.share)),
            SizedBox(width: 10.0,),
            IconButton(onPressed: (){},icon: Icon(Icons.chat_bubble_outline)),
            SizedBox(width: 5.0,),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:'الترتيب الزمنى'),
              Tab(text:'الترتيب الزمنى'),
              Tab(text:'الترتيب الزمنى'),
              Tab(text:'الترتيب الزمنى'),
            ],
          ),
        ),
        drawer: Container(
          color: Colors.grey[600],
          width: 220.0,
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  //currentAccountPicture: CircleAvatar(child: Icon(Icons.person,)),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://i.muhtwaask.com/news/13073.jpg'),
                    fit: BoxFit.cover),
                    color: Colors.green[300],
                  ),
                    accountName: Text('Hassan Eldehy'),
                    accountEmail: Text('hassanEldehy@yahoo.com')),
                ListTile(
                  title: (Text('تلاوت ومحاضرات',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.menu_book),
                  title: (Text('تلاوات القران الكريم ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.book_online_outlined),
                  title: (Text('محاضرات ودروس',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  color: Colors.black,
                ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: (Text('علامة قراءة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: (Text('اعدادات',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                Divider( color: Colors.grey[500],thickness: 2.0,),
                ListTile(
                  leading: Icon(Icons.support),
                  title: (Text('ادعم التطبيق والمشروع',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: (Text('شارك التطبيق',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.send),
                  title: (Text('راسلنا',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),)
                  ),
                ),


              ],
            ),
            elevation: 0.0,

          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[900],
            child: Column(children: [
              // Padding(
              //   padding: const EdgeInsets.all(1.0),
              //   child: Container(
              //     child: Row(children: [
              //       Expanded(
              //         child: Container(
              //           color: Colors.grey[900],
              //           child: TextButton(
              //             onPressed: (){
              //             },
              //               child:Text('الترتيب الزمنى',
              //               maxLines: 2,
              //                 overflow:TextOverflow.ellipsis,
              //                 style: TextStyle(
              //                   fontSize: 20.0,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white,
              //                 ),
              //               ), ),
              //         ),
              //
              //       ),
              //       Expanded(
              //         child: Container(
              //           color: Colors.grey[900],
              //           child: TextButton(onPressed: (){},
              //               child:Text('الترتيب الابجدى',
              //                 maxLines: 2,
              //                 overflow:TextOverflow.ellipsis,
              //                 style: TextStyle(
              //                   fontSize: 20.0,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white,
              //                 ),
              //               ) ),
              //         ),
              //       ),
              //       SizedBox(width: 1,),
              //       Expanded(
              //         child: Container(
              //           color: Colors.grey[900],
              //           child: TextButton(onPressed: (){},
              //               child:Text('معجزات الانبياء',
              //                 maxLines: 2,
              //                 overflow:TextOverflow.ellipsis,
              //                 style: TextStyle(
              //                   fontSize: 20.0,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white,
              //                 ),
              //               ) ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           color: Colors.grey[900],
              //           child: TextButton(onPressed: (){},
              //               child:Text(' طارق سويدان',
              //                 maxLines: 2,
              //                 overflow:TextOverflow.ellipsis,
              //                 style: TextStyle(
              //                   fontSize: 20.0,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white,
              //                 ),
              //               ) ),
              //         ),
              //       ),
              //
              //     ],),
              //   ),
              // ),     //button



              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Container()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                          Image(
                            fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                              'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                              '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                          )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          )

                        ],),
                      ),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',

                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',

                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',

                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',

                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',

                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                  SizedBox(width: 7.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://3.bp.blogspot.com/-vVyA_6'
                                  'eqIvg/W7DA52_IDGI/AAAAAAAAA2U/22CGqLzyDFsY0a3r91CGyfwZPLjvxRM8wCLcBGAs/s1600/%25D9%2585%25D9%2588%25D8%25B6%25D9%2588%25D8%25B9%2B%25D8%25AA%25D8%25B9%25D8%25A8%25D9%258A%25D8%25B1%2B%25D8%25A7%25D9%2584%25D9%2587%25D8%25AC%25D8%25B1%25D8%25A9%2B%25D8%25A7%25D9%2584%25D9%2586%25D8%25A8%25D9%2588%25D9%258A%25D8%25A9%2B%25D'
                                  '8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%258A%25D9%2581%25D8%25A9.jpg',
                              )
                          ),
                          SizedBox(height: 3.0,),
                          Text('قصة عيسى عليه السلام',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )

                        ],),
                    ),
                  ),
                ],),
              ),

            ],),
          ),
        ),
      ),
    );
  }

}