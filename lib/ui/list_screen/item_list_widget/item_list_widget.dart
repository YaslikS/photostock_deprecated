import 'package:flutter/material.dart';

import '../../../theme/app_constants.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(Paddings.padding12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 7,
              ),
            ],
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Rounding.rounding15),
                child: Image.asset("lib/asset/item_list_asset/default_pic.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(Paddings.padding10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      "Christian",
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "14 likes",
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
