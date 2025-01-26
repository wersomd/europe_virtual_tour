import 'package:flutter/foundation.dart';
import 'package:app/models/tab_bar.model.dart';

class FavoritesModel with ChangeNotifier {
  final List<DataModel> _favorites = [];

  List<DataModel> get favorites => _favorites;

  void add(DataModel item) {
    _favorites.add(item);
    notifyListeners();
  }

  void remove(DataModel item) {
    _favorites.remove(item);
    notifyListeners();
  }

  bool isFavorite(DataModel item) {
    return _favorites.contains(item);
  }
}
