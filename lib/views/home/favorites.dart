import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/models/favorites_model.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/drawer/custom_drawer.dart';
import 'package:app/widgets/reusable_text.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final favoritesModel = Provider.of<FavoritesModel>(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: favoritesModel.favorites.isEmpty
            ? const Center(
                child: AppText(
                  text: "Нет избранных элементов",
                  size: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              )
            : ListView.builder(
                itemCount: favoritesModel.favorites.length,
                itemBuilder: (context, index) {
                  final item = favoritesModel.favorites[index];
                  return ListTile(
                    leading: Image.asset(item.image),
                    title: AppText(
                      text: item.title,
                      size: 18,
                      color: Theme.of(context).textTheme.titleMedium!.color,
                      fontWeight: FontWeight.w500,
                    ),
                    subtitle: AppText(
                      text: item.location,
                      size: 14,
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontWeight: FontWeight.w400,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
