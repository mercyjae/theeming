import 'package:custom_theme/nav_bar.dart';
import 'package:custom_theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
  ThemeData themeData = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title:  Text(
            "Theme App",
            style: themeData.appBarTheme.titleTextStyle
          ),
          actions: [
            Switch(
                activeColor:
                    themeData.appBarTheme.actionsIconTheme!.color,
               
                value: themeProvider.isDark,
                onChanged: (newValue) {
                  themeProvider.toggleTheme(newValue);
                })
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
                 style: themeData.textTheme.headline1,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(Icons.location_on),
                    SizedBox(width: 4),
                    Text('New York, USA',    
                    style: themeData.textTheme.headline1!.copyWith(fontWeight: FontWeight.w400)),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Photography is the story I fail to put into words',
                  style: themeData
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: 10),
                ),
              
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
      bottomNavigationBar: NavigationBarWidget(),
    );
  }

  Widget buildCounters(context, String firstLine, String secondLine, ) { 
     ThemeData themeData = Theme.of(context);
    return Column(
        children: [
          Text(firstLine, style: themeData.textTheme.bodyText2),
          const SizedBox(height: 8),
          Text(secondLine),
        ],
      );}
}
