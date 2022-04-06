class UserDetail {
  int? id;
  String? firstname;
  String? lastname;
  String? midname;
  String? civilStatus;
  String? barangay;
  String? city;
  String? email;
  int? emailVerifiedAt;
  String? phone;
  String? phoneCode;
  String? creditBalance;
  int? verify;
  int? otp;
  String? age;
  String? dob;
  String? gender;
  String? image;
  int? status;
  int? doctorId;
  String? deviceToken;
  String? createdAt;
  String? updatedAt;
  String? fullImage;

  UserDetail(
      {this.id,
        this.lastname,
        this.firstname,
        this.midname,
        this.civilStatus,
        this.barangay,
        this.city,
        this.email,
        this.emailVerifiedAt,
        this.phone,
        this.phoneCode,
        this.creditBalance,
        this.verify,
        this.otp,
        this.age,
        this.dob,
        this.gender,
        this.image,
        this.status,
        this.doctorId,
        this.deviceToken,
        this.createdAt,
        this.updatedAt,
        this.fullImage});

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lastname = json['name'];
    firstname = json['first_name'];
    midname = json['middle_name'];
    barangay = json['barangay'];
    city = json['city'];
    civilStatus = json['civil_status'];
    email = json['email'];
    creditBalance = json['credit_balance'].toString();
    emailVerifiedAt = json['email_verified_at'];
    phone = json['phone'];
    phoneCode = json['phone_code'];
    verify = json['verify'];
    otp = json['otp'];
    age = json['age'].toString();
    dob = json['dob'];
    gender = json['gender'];
    image = json['image'];
    status = json['status'];
    doctorId = json['doctor_id'];
    deviceToken = json['device_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    fullImage = json['fullImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.lastname;
    data['first_name'] = this.firstname;
    data['middle_name'] = this.midname;
    data['city'] = this.city;
    data['credit_balance'] = this.creditBalance;
    data['barangay'] = this.barangay;
    data['age'] = this.age;
    data['civil_status'] = this.civilStatus;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone'] = this.phone;
    data['phone_code'] = this.phoneCode;
    data['verify'] = this.verify;
    data['otp'] = this.otp;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['status'] = this.status;
    data['doctor_id'] = this.doctorId;
    data['device_token'] = this.deviceToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['fullImage'] = this.fullImage;
    return data;
  }
}
