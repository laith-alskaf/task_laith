import 'package:get/get.dart';

class HomeViewController extends GetxController {
  RxList<List> droppedData = [[], []].obs;

  List<String> classifications = ['إطارات العمل', 'لغات البرمجة'];

  updateData(String dataNew, int index) {
    droppedData[index].add(dataNew);
    listOfText.remove(dataNew);
    update();
  }
  removeFromClass(String dataNew, int index) {
    droppedData[index].remove(dataNew);
    listOfText.add(dataNew);
    update();
  }
  RxList<String> listOfText = [
    'Python',
    'Express.js',
    'Angular',
    'Laravel',
    'JavaScript',
    'React',
    'Swift',
    'Vue.js'
  ].obs;
}
