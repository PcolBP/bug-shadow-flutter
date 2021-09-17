import 'package:flutter/material.dart';
import 'themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shadow Flickering',
      theme: Themes.light,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: hashCode,
              tooltip: 'filter',
              elevation: 13.5,
              onPressed: () {},
              child: Image.asset(
                'images/filter_menu.png',
                height: 40,
                color: Themes.mainColor,
              ),
            ),
            FloatingActionButton(
              heroTag: hashCode+1,
              tooltip: 'filter',
              elevation: 13.5,
              onPressed: () {},
              child: Image.asset(
                'images/filter_menu.png',
                height: 40,
                color: Themes.mainColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Themes.mainColor,
            leading: SizedBox(),
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: EdgeInsets.only(bottom: 16),
              title: Text('articles'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (ctx, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      color: Themes.mainColor,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/4,
                      ),
              ),
                  ),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
