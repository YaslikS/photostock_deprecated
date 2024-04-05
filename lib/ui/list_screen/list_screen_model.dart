import 'package:elementary/elementary.dart';
import 'package:photostock/service/model/photo_item.dart';
import 'package:photostock/service/photo_service.dart';

class WeatherScreenModel extends ElementaryModel {
  final PhotoService _photoService;

  WeatherScreenModel(this._photoService);

  Future<List<PhotoItem>?> getWeather() async {
    return _photoService.getListOfPhoto();
  }
}
