import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

class FlutterUrlLancherScreen extends StatefulWidget {
  const FlutterUrlLancherScreen({super.key});

  @override
  State<FlutterUrlLancherScreen> createState() =>
      _FlutterUrlLancherScreenState();
}

class _FlutterUrlLancherScreenState extends State<FlutterUrlLancherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("URL LAUNCHER"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await LaunchReview.launch(
                        androidAppId: "com.kitoob.kitoob");
                  },
                  child: const Text("Rate App"))
            ]),
      ),
    );
  }
}
