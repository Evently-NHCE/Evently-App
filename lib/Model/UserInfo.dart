class UserInfo {
  String usn;
  String name;
  String emaild;
  String password;
  String? phone;
  String? gender;
  String? college;
  String? branch;
  String? semYear;

  UserInfo({
    required this.usn,
    required this.name,
    required this.emaild,
    required this.password,
    this.phone,
    this.gender,
    this.college,
    this.branch,
    this.semYear,
  });

  Map<String, dynamic> toJson() => {
        'usn': usn,
        'name': name,
        'emaild': emaild,
        'password': password,
        'phone': phone,
        'gender': gender,
        'college': college,
        'branch': branch,
        'semYear': semYear,
      };
}
