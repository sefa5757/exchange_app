class ChartData {
  ChartData(this.x, this.y, this.y1, this.y2);
  int id = 0;
  String? x;
  double? y;
  double? y1;
  double? y2;
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["x"] = x;
    map["y"] = y;
    map["y1"] = y1;
    map["y2"] = y2;
    return map;
  }

  ChartData.fromObject(dynamic o) {
    id = o["id"];
    x = o["x"];
    y = o["y"];
    y1 = o["y1"];
    y2 = o["y2"];
  }
}
