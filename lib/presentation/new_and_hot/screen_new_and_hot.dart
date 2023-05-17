import 'package:flutter/material.dart';

import '../downoads/widgets/appbar.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(text: "Hot and New"),
      ),
      body: Center(child: Text("New And Hot")),
    );
  }
}
