import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            backgroundColor: Colors.white,
            title: TextFormField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                suffixIcon: const Icon(Icons.mic),

                fillColor: Colors.teal.withOpacity(.2),
                hintText: 'Search Contacts & Places',
                hintStyle: const TextStyle(color: Colors.black),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.horizontal()),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return  const Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.orange,
                              child: Icon(FontAwesomeIcons.a),
                            ),

                          ],
                        ),
                        // SizedBox(height: 40,),
                      ],
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text('Shayan Noor'),
                      subtitle: Row(
                        children: [
                          Icon(
                            CupertinoIcons.arrow_down_left,
                            size: 18,
                          ),
                          Text('Mobile · 11 min ago \njazz')
                        ],
                      ),
                      trailing: Icon(Icons.phone),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange,
                        child: Icon(FontAwesomeIcons.a),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return  const Padding(
                      padding:  EdgeInsets.only(left: 50),
                      child:  ListTile(
                        title: Text('Shayan Noor'),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.orange,
                          child: Icon(FontAwesomeIcons.a),
                        ),
                      ),
                    );
                  }),

            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(child: Column(children: [Icon(Icons.star_border),Text('Favorites')],)),
              Tab(child: Column(children: [Icon(CupertinoIcons.clock),Text('Recents')],)),
              Tab(child: Column(children: [Icon(Icons.group_add_outlined),Text('Contacts')],)),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey.shade700,
              onPressed: () {
                PopupMenuButton(itemBuilder: (context) => [
                const PopupMenuItem(child: Text('NumPad'))
                ]
                );
              },
              child: const Icon(Icons.dialpad,color: Colors.white,)),
        ));
  }
}

// bottom: const TabBar(
// tabs: [
// Tab(child: Icon(Icons.star_border)),
// Tab(
// child: Icon(CupertinoIcons.clock_fill),
// ),
// Tab(
// child: Icon(Icons.group),
// ),
// ],
// ),
