import 'package:flutter/material.dart';

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true, // 손가락으로 튕군다
          floating: true,
          pinned: false,
          title: Text("appbar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250, // 확장될 최대 공간
          flexibleSpace: Container(
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverAppBar(
            pinned: true,
            title: Text("appbar", style: TextStyle(color: Colors.white))),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        )
      ],
    );
  }
}
