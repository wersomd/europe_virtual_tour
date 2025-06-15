import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/models/tab_bar.model.dart';

class FavoritesNotifier extends StateNotifier<List<DataModel>> {
  FavoritesNotifier() : super([]);

  void add(DataModel item) {
    if (!state.contains(item)) {
      state = [...state, item];
    }
  }

  void remove(DataModel item) {
    state = state.where((element) => element != item).toList();
  }

  bool isFavorite(DataModel item) {
    return state.contains(item);
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<DataModel>>((ref) {
  return FavoritesNotifier();
}); 