class GDPData {
   int id=0;
   String? containent;
   int? gdp;

  GDPData(this.containent, this.gdp);

    Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["containent"] = containent;
    map["gdp"] = gdp;
    return map;
  }

  GDPData.fromObject(dynamic o) {
    id = o["id"];
    containent = o["containent"];
    gdp = o["gdp"];
  }
}