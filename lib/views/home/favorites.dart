import 'package:animate_do/animate_do.dart';
import 'package:app/models/tab_bar.model.dart';
import 'package:app/views/home/details.dart';
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
    var size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: favoritesModel.favorites.isEmpty
            ? const Center(
                child: AppText(
                  text: "Нет избранных элементов",
                  size: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              )
            : FadeInUp(
                delay: const Duration(milliseconds: 1100),
                child: ListView.builder(
                  itemCount: favoritesModel.favorites.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    DataModel current = favoritesModel.favorites[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            personData: current,
                            tabData: null,
                            isCameFromPersonSection: true,
                          ),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        width: size.width,
                        height: size.height * 0.15,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: current.year,
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                width: size.width * 0.28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      current.image,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.035,
                                  ),
                                  AppText(
                                    text: current.title,
                                    size: 20,
                                    color: theme.textTheme.titleLarge!.color,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  AppText(
                                    text: current.location,
                                    size: 16,
                                    color: theme.textTheme.labelSmall!.color,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
