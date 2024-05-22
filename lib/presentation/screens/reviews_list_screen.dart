import 'package:crafty_bay/presentation/screens/create_review_screen.dart';
import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:crafty_bay/presentation/widgets/reviews_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewsListScreen extends StatefulWidget {
  const ReviewsListScreen({super.key});

  @override
  State<ReviewsListScreen> createState() => _ReviewsListScreenState();
}

class _ReviewsListScreenState extends State<ReviewsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ReviewsCard();
              },
            ),
          ),
          _buildReviewsSection(),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: AppColors.primaryColor,
      tooltip: 'Add Review',
      shape: const CircleBorder(),
      onPressed: () {
        Get.to(() => const CreateReviewScreen());
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  Widget _buildReviewsSection() {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Reviews (1000)",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
