import 'package:flutter/material.dart';

class ThirdAppbar extends StatelessWidget {
  const ThirdAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://picsum.photos/id/${index + 50}/200/300"),
                // 백그라운드 이미지를 넣는다.
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text("Page $index"),
            ),
          ),
        );
      },
    );
  }
}
