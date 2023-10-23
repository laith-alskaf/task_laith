import 'package:get/get.dart';

class HomeViewController extends GetxController {
  List<String> classifications = [
    'إطارات العمل',
    'لغات البرمجة',
    'العاب',
    'غير ذالك'
  ];
  RxList<List> droppedData = <List>[].obs;

  updateData(String dataNew, int index) {
    droppedData[index].add(dataNew);
    listOfText.remove(dataNew);
  }

  removeFromClass(String dataNew, int index) {
    droppedData[index].remove(dataNew);
    listOfText.add(dataNew);
  }

  RxList<String> listOfText = [
    'بيس 2014',
    'Python',
    'Express.js',
    'كونتر',
    'Angular',
    'JavaScript',
    'Car',
    'JavaScript JavaScript',
    'Vue.js',
    'جنرال',
    'Mobile',
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    droppedData.value =
        List<List<String>>.generate(classifications.length, (_) => <String>[]);
  }
}
