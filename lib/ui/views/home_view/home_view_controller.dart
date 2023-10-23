import 'package:get/get.dart';

class HomeViewController extends GetxController {
  List<String> classifications = ['إطارات العمل', 'لغات البرمجة', 'العاب ببجي'];
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
    'Python',
    'Express.js',
    'Angular',
    'Laravel',
    'JavaScript',
    'JavaScript JavaScript',
    'React',
    'Swift',
    'Vue.js'
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    droppedData.value =
        List<List<String>>.generate(classifications.length, (_) => <String>[]);
  }
}
