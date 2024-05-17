import 'package:crafty_bay/presentation/utility/assets_path.dart';
import 'package:crafty_bay/presentation/widgets/app_bar_icon_button.dart';
import 'package:crafty_bay/presentation/widgets/category_item.dart';
import 'package:crafty_bay/presentation/widgets/home_carousel_slider.dart';
import 'package:crafty_bay/presentation/widgets/product_card.dart';
import 'package:crafty_bay/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildApBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchTextField(),
              const SizedBox(
                height: 16,
              ),
              const HomeCarouselSlider(),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: "All Categories",
                onTapSeeAll: () {},
              ),
              const SizedBox(
                height: 120,
              ),
              _buildCategoryListView(),
              const SizedBox(
                height: 8,
              ),
              SectionHeader(
                title: "Popular",
                onTapSeeAll: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              _buildProductListView(),
              const SizedBox(
                height: 8,
              ),
              SectionHeader(
                title: "Special",
                onTapSeeAll: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              _buildProductListView(),
              const SizedBox(
                height: 8,
              ),
              SectionHeader(
                title: "New",
                onTapSeeAll: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              _buildProductListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
        separatorBuilder: (BuildContext context, index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }

  Widget _buildProductListView() {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (BuildContext context, index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      controller: _searchTEController,
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Colors.grey.shade200,
        filled: true,
        prefix: const Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  AppBar _buildApBar() {
    return AppBar(
      leading: SvgPicture.asset(AssetsPath.appNavLogoSvg),
      actions: [
        AppbarIconButton(
          icon: Icons.people,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppbarIconButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppbarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchTEController.dispose();
    super.dispose();
  }
}
