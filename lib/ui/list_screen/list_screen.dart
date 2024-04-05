import 'package:flutter/material.dart';
import 'package:photostock/service/photo_service.dart';

import '../../theme/theme.dart';
import 'item_list_widget/item_list_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    PhotoService().getListOfPhoto();  //  TODO: <- DELETE THIS
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: AppColors.white,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.all(Paddings.padding10),
              child: Text(
                "Photo",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
        ),
        SliverGrid.builder(
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, i) {
            return ItemListWidget();
          },
        ),
      ]),
    );
  }
}
