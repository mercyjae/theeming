import 'package:flutter/material.dart';


class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
     ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Text("Theme App",
              style: themeData.appBarTheme.titleTextStyle),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.camera),
            ),
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: themeData.colorScheme.secondary,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: themeData.scaffoldBackgroundColor,
                    child: CircleAvatar(
                      radius: 40,
                      child: Image.asset('assets/user.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Jane Doe',
                  style: themeData.textTheme.bodyText2,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on),
                    const SizedBox(width: 4),
                    Text(
                      'New York, USA',
                      style:themeData
                          .textTheme
                          .headline1!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text('Photography is the story I fail to put into words',
                    style: themeData
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: 10),),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildCounters(context, '36', 'Posts'),
                    buildCounters(context, '3.5K', 'Following'),
                    buildCounters(context, '15K', 'Followers'),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    child: const Text("Upload photos"), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),

      // floatingActionButton: Theme(
      //   data: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
      //   child: FloatingActionButton(
      //     child: const Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(primarySwatch: Colors.orange),
      //   child: FloatingActionButton(
      //     child: const Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      // ),
    );
  }

  Widget buildCounters(context, String firstLine, String secondLine) {
     ThemeData themeData = Theme.of(context);
 return  Column(
        children: [
          Text(firstLine, style: themeData.textTheme.bodyText2),
          const SizedBox(height: 8),
          Text(secondLine,
              style: themeData
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 15)),
        ],
      );}
}
