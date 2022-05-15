class CountryDetails {
  CountryDetails({
    required this.code,
    required this.name,
    required this.nameEn,
    required this.mobileEx,
    required this.dial,
    required this.flag,
  });

  final String code;
  final String name;
  final String nameEn;
  final String mobileEx;
  final String dial;
  final String flag;

  factory CountryDetails.fromJson(Map<String, dynamic> json) => CountryDetails(
        code: json["code"],
        name: json["name"],
        nameEn: json["name_en"],
        mobileEx: json["mobile_ex"],
        dial: json["dial"],
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "name_en": nameEn,
        "mobile_ex": mobileEx,
        "dial": dial,
        "flag": flag,
      };
}
