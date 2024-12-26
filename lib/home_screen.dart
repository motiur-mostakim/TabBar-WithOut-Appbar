import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Custom TabBar"),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  indicatorColor: Colors.pinkAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  dividerColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black87),
                  physics: ScrollPhysics(),
                  unselectedLabelColor: Colors.pink,
                  padding: EdgeInsets.zero,
                  // Remove default underline
                  indicator: null,
                  tabs: [
                    Tab(
                      child: Text("Personal Information"),
                    ),
                    Tab(
                      child: Text("Professional Information"),
                    ),
                    Tab(
                      child: Text("Acedemic Information"),
                    ),
                  ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        title: Text("Notification List $index"),
                        subtitle: const Text("View Notification"),
                      );
                    }),
                ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        title: Text("Message List $index"),
                        subtitle: const Text("Message Notification"),
                      );
                    }),
                ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        title: Text("Home List $index"),
                        subtitle: const Text("View home"),
                      );
                    })
              ]))
            ],
          )),
    );
  }
}
