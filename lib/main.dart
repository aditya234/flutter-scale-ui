import 'package:flutter/material.dart';
import 'package:flutter_scale_test/size_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Config'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 20 * SizeConfig.safeBlockVertical,
          width: 40* SizeConfig.safeBlockHorizontal,
          color: Colors.orange,
        ),
      ),
    );
  }
}
