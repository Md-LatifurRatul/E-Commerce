import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class WishButtonCard extends StatelessWidget {
  const WishButtonCard({super.key, this.showAddToWishList = true});

  final bool showAddToWishList;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: showAddToWishList,
        replacement: _getIconButton(Icons.delete_outline),
        child: _getIconButton(Icons.favorite_outline_rounded));
  }

  Widget _getIconButton(IconData icon) {
    return Card(
      color: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}