import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class CommunityCategory {
  final String title;
  final String thumb;
  final ValueNotifier<bool> isSelected;

  CommunityCategory({
    required this.title,
    required this.thumb,
    required bool initialSelected,
  }): isSelected = ValueNotifier(initialSelected);

  factory CommunityCategory.fromJson(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return CommunityCategory(
      title: data['title'] ?? '',
      thumb: data['thumb'] ?? '',
      initialSelected: false,
    );
  }
  void toggleSelection() => isSelected.value = !isSelected.value;

  void toggleSelectionOne(List<CommunityCategory> categories) {
    categories.asMap().forEach((index, category) => category.isSelected.value = false);
    isSelected.value = !isSelected.value;
  }
  void defaultSelectedItem(List<CommunityCategory> categories) {
    categories.asMap().forEach((index, category) => category.isSelected.value = index == 0);
  }
}