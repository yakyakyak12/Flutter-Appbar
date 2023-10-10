import 'package:flutter/material.dart';

class FourthAppbar extends StatelessWidget {
  const FourthAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // body를 앱바 뒤로 확장해준다
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Image.network(
            "https://picsum.photos/id/${index + 50}/200/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
