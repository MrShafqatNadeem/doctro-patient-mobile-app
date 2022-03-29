/// success : true
/// data : {"id":4,"treatment_id":5,"category_id":5,"expertise_id":8,"hospital_id":1,"user_id":3,"image":"61a999d2b667f.jpg","desc":"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos ex porro inventore laboriosam, magnam corporis nobis repellendus eligendi quam laborum non tenetur nam iure nemo debitis recusandae vero ullam atque.","education":"[{\"degree\":\"MBBS\",\"college\":\"CHRISTIAN MEDICAL COLLEGE\",\"year\":\"2000\"},{\"degree\":\"MD\",\"college\":\"B J Medical College\",\"year\":\"2003\"}]","certificate":"[{\"certificate\":\"Best Doctor Award\",\"certificate_year\":\"2005\"}]","appointment_fees":"1000","experience":"5","name":"Dr.Jasmine Smith","start_time":"10:00 am","end_time":"06:00 pm","subscription_status":1,"is_popular":0,"commission_amount":"15","custom_timeslot":null,"is_filled":1,"hosiptal":[{"id":1,"name":"Rose Health Care","phone":"7418529630","address":"Kuvadva, Gujarat, India","lat":22,"lng":71,"facility":"25 AC Rooms  ,10 Emergency Ambulance,8 Operation Theater,5 ICU,70 Beds","status":1,"hospitalGallery":[{"image":"60925f28c37e3.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f28c37e3.jpg"},{"image":"60925f91b8dbb.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f91b8dbb.jpg"},{"image":"60925f9b7d522.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f9b7d522.jpg"}]}],"reviews":[{"id":18,"review":"good","rate":4,"appointment_id":157,"doctor_id":4,"user_id":66,"created_at":"2021-07-21T12:15:19.000000Z","updated_at":"2021-07-21T12:15:19.000000Z","user":{"id":66,"name":"ram","image":"61937164e6f0e.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/61937164e6f0e.png"}},{"id":26,"review":"The doctor was very calm and I did not have to wait at all as appointments were pre-booked.","rate":4,"appointment_id":219,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:20.000000Z","updated_at":"2021-11-16T04:23:20.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":28,"review":"The appointment time management work accurately. Patients do not have to wait for turn to come and there is no delay of time.","rate":5,"appointment_id":181,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:45.000000Z","updated_at":"2021-11-16T04:23:45.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":29,"review":"No extra or hidden charges are taken from the patients after booking an appointment.","rate":5,"appointment_id":53,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:57.000000Z","updated_at":"2021-11-16T04:23:57.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":30,"review":"0","rate":3,"appointment_id":230,"doctor_id":4,"user_id":209,"created_at":"2021-11-27T22:29:14.000000Z","updated_at":"2021-11-27T22:29:14.000000Z","user":{"id":209,"name":"aaron","image":"61aaa854b4a08.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/61aaa854b4a08.jpg"}},{"id":32,"review":"supper","rate":5,"appointment_id":247,"doctor_id":4,"user_id":209,"created_at":"2021-12-02T10:16:48.000000Z","updated_at":"2021-12-02T10:16:48.000000Z","user":{"id":209,"name":"aaron","image":"61aaa854b4a08.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/61aaa854b4a08.jpg"}}],"fullImage":"https://doctro.saasmonks.in/public/images/upload/61a999d2b667f.jpg","rate":4.29999999999999982236431605997495353221893310546875,"review":6,"treatment":{"id":5,"name":"Skin & Hair","fullImage":"https://doctro.saasmonks.in/public/images/upload/"},"expertise":{"id":8,"name":"Cosmetic dermatology"}}
/// msg : "single doctor details"

class DoctorDetailModel {
  DoctorDetailModel({
      bool? success, 
      Data? data, 
      String? msg,}){
    _success = success;
    _data = data;
    _msg = msg;
}

  DoctorDetailModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _msg = json['msg'];
  }
  bool? _success;
  Data? _data;
  String? _msg;

  bool? get success => _success;
  Data? get data => _data;
  String? get msg => _msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['msg'] = _msg;
    return map;
  }

}

/// id : 4
/// treatment_id : 5
/// category_id : 5
/// expertise_id : 8
/// hospital_id : 1
/// user_id : 3
/// image : "61a999d2b667f.jpg"
/// desc : "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos ex porro inventore laboriosam, magnam corporis nobis repellendus eligendi quam laborum non tenetur nam iure nemo debitis recusandae vero ullam atque."
/// education : "[{\"degree\":\"MBBS\",\"college\":\"CHRISTIAN MEDICAL COLLEGE\",\"year\":\"2000\"},{\"degree\":\"MD\",\"college\":\"B J Medical College\",\"year\":\"2003\"}]"
/// certificate : "[{\"certificate\":\"Best Doctor Award\",\"certificate_year\":\"2005\"}]"
/// appointment_fees : "1000"
/// experience : "5"
/// name : "Dr.Jasmine Smith"
/// start_time : "10:00 am"
/// end_time : "06:00 pm"
/// subscription_status : 1
/// is_popular : 0
/// commission_amount : "15"
/// custom_timeslot : null
/// is_filled : 1
/// hosiptal : [{"id":1,"name":"Rose Health Care","phone":"7418529630","address":"Kuvadva, Gujarat, India","lat":22,"lng":71,"facility":"25 AC Rooms  ,10 Emergency Ambulance,8 Operation Theater,5 ICU,70 Beds","status":1,"hospitalGallery":[{"image":"60925f28c37e3.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f28c37e3.jpg"},{"image":"60925f91b8dbb.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f91b8dbb.jpg"},{"image":"60925f9b7d522.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f9b7d522.jpg"}]}]
/// reviews : [{"id":18,"review":"good","rate":4,"appointment_id":157,"doctor_id":4,"user_id":66,"created_at":"2021-07-21T12:15:19.000000Z","updated_at":"2021-07-21T12:15:19.000000Z","user":{"id":66,"name":"ram","image":"61937164e6f0e.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/61937164e6f0e.png"}},{"id":26,"review":"The doctor was very calm and I did not have to wait at all as appointments were pre-booked.","rate":4,"appointment_id":219,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:20.000000Z","updated_at":"2021-11-16T04:23:20.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":28,"review":"The appointment time management work accurately. Patients do not have to wait for turn to come and there is no delay of time.","rate":5,"appointment_id":181,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:45.000000Z","updated_at":"2021-11-16T04:23:45.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":29,"review":"No extra or hidden charges are taken from the patients after booking an appointment.","rate":5,"appointment_id":53,"doctor_id":4,"user_id":44,"created_at":"2021-11-16T04:23:57.000000Z","updated_at":"2021-11-16T04:23:57.000000Z","user":{"id":44,"name":"test2","image":"defaultUser.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/defaultUser.png"}},{"id":30,"review":"0","rate":3,"appointment_id":230,"doctor_id":4,"user_id":209,"created_at":"2021-11-27T22:29:14.000000Z","updated_at":"2021-11-27T22:29:14.000000Z","user":{"id":209,"name":"aaron","image":"61aaa854b4a08.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/61aaa854b4a08.jpg"}},{"id":32,"review":"supper","rate":5,"appointment_id":247,"doctor_id":4,"user_id":209,"created_at":"2021-12-02T10:16:48.000000Z","updated_at":"2021-12-02T10:16:48.000000Z","user":{"id":209,"name":"aaron","image":"61aaa854b4a08.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/61aaa854b4a08.jpg"}}]
/// fullImage : "https://doctro.saasmonks.in/public/images/upload/61a999d2b667f.jpg"
/// rate : 4.29999999999999982236431605997495353221893310546875
/// review : 6
/// treatment : {"id":5,"name":"Skin & Hair","fullImage":"https://doctro.saasmonks.in/public/images/upload/"}
/// expertise : {"id":8,"name":"Cosmetic dermatology"}

class Data {
  Data({
      int? id, 
      int? treatmentId, 
      int? categoryId, 
      int? expertiseId, 
      int? hospitalId, 
      int? userId, 
      String? image, 
      String? desc, 
      String? education, 
      String? certificate, 
      String? appointmentFees, 
      String? experience, 
      String? name, 
      String? startTime, 
      String? endTime, 
      int? subscriptionStatus, 
      int? isPopular, 
      String? commissionAmount, 
      dynamic customTimeslot, 
      int? isFilled, 
      List<Hosiptal>? hosiptal, 
      List<Reviews>? reviews, 
      String? fullImage, 
      dynamic rate,
      dynamic review,
      Treatment? treatment, 
      Expertise? expertise,}){
    _id = id;
    _treatmentId = treatmentId;
    _categoryId = categoryId;
    _expertiseId = expertiseId;
    _hospitalId = hospitalId;
    _userId = userId;
    _image = image;
    _desc = desc;
    _education = education;
    _certificate = certificate;
    _appointmentFees = appointmentFees;
    _experience = experience;
    _name = name;
    _startTime = startTime;
    _endTime = endTime;
    _subscriptionStatus = subscriptionStatus;
    _isPopular = isPopular;
    _commissionAmount = commissionAmount;
    _customTimeslot = customTimeslot;
    _isFilled = isFilled;
    _hosiptal = hosiptal;
    _reviews = reviews;
    _fullImage = fullImage;
    _rate = rate;
    _review = review;
    _treatment = treatment;
    _expertise = expertise;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _treatmentId = json['treatment_id'];
    _categoryId = json['category_id'];
    _expertiseId = json['expertise_id'];
    _hospitalId = json['hospital_id'];
    _userId = json['user_id'];
    _image = json['image'];
    _desc = json['desc'];
    _education = json['education'];
    _certificate = json['certificate'];
    _appointmentFees = json['appointment_fees'];
    _experience = json['experience'];
    _name = json['name'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _subscriptionStatus = json['subscription_status'];
    _isPopular = json['is_popular'];
    _commissionAmount = json['commission_amount'];
    _customTimeslot = json['custom_timeslot'];
    _isFilled = json['is_filled'];
    if (json['hosiptal'] != null) {
      _hosiptal = [];
      json['hosiptal'].forEach((v) {
        _hosiptal?.add(Hosiptal.fromJson(v));
      });
    }
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
    _fullImage = json['fullImage'];
    _rate = json['rate'];
    _review = json['review'];
    _treatment = json['treatment'] != null ? Treatment.fromJson(json['treatment']) : null;
    _expertise = json['expertise'] != null ? Expertise.fromJson(json['expertise']) : null;
  }
  int? _id;
  int? _treatmentId;
  int? _categoryId;
  int? _expertiseId;
  int? _hospitalId;
  int? _userId;
  String? _image;
  String? _desc;
  String? _education;
  String? _certificate;
  String? _appointmentFees;
  String? _experience;
  String? _name;
  String? _startTime;
  String? _endTime;
  int? _subscriptionStatus;
  int? _isPopular;
  String? _commissionAmount;
  dynamic _customTimeslot;
  int? _isFilled;
  List<Hosiptal>? _hosiptal;
  List<Reviews>? _reviews;
  String? _fullImage;
  dynamic _rate;
  dynamic _review;
  Treatment? _treatment;
  Expertise? _expertise;

  int? get id => _id;
  int? get treatmentId => _treatmentId;
  int? get categoryId => _categoryId;
  int? get expertiseId => _expertiseId;
  int? get hospitalId => _hospitalId;
  int? get userId => _userId;
  String? get image => _image;
  String? get desc => _desc;
  String? get education => _education;
  String? get certificate => _certificate;
  String? get appointmentFees => _appointmentFees;
  String? get experience => _experience;
  String? get name => _name;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  int? get subscriptionStatus => _subscriptionStatus;
  int? get isPopular => _isPopular;
  String? get commissionAmount => _commissionAmount;
  dynamic get customTimeslot => _customTimeslot;
  int? get isFilled => _isFilled;
  List<Hosiptal>? get hosiptal => _hosiptal;
  List<Reviews>? get reviews => _reviews;
  String? get fullImage => _fullImage;
  dynamic get rate => _rate;
  dynamic get review => _review;
  Treatment? get treatment => _treatment;
  Expertise? get expertise => _expertise;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['treatment_id'] = _treatmentId;
    map['category_id'] = _categoryId;
    map['expertise_id'] = _expertiseId;
    map['hospital_id'] = _hospitalId;
    map['user_id'] = _userId;
    map['image'] = _image;
    map['desc'] = _desc;
    map['education'] = _education;
    map['certificate'] = _certificate;
    map['appointment_fees'] = _appointmentFees;
    map['experience'] = _experience;
    map['name'] = _name;
    map['start_time'] = _startTime;
    map['end_time'] = _endTime;
    map['subscription_status'] = _subscriptionStatus;
    map['is_popular'] = _isPopular;
    map['commission_amount'] = _commissionAmount;
    map['custom_timeslot'] = _customTimeslot;
    map['is_filled'] = _isFilled;
    if (_hosiptal != null) {
      map['hosiptal'] = _hosiptal?.map((v) => v.toJson()).toList();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    map['fullImage'] = _fullImage;
    map['rate'] = _rate;
    map['review'] = _review;
    if (_treatment != null) {
      map['treatment'] = _treatment?.toJson();
    }
    if (_expertise != null) {
      map['expertise'] = _expertise?.toJson();
    }
    return map;
  }

}

/// id : 8
/// name : "Cosmetic dermatology"

class Expertise {
  Expertise({
      int? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Expertise.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  int? _id;
  String? _name;

  int? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}

/// id : 5
/// name : "Skin & Hair"
/// fullImage : "https://doctro.saasmonks.in/public/images/upload/"

class Treatment {
  Treatment({
      int? id, 
      String? name, 
      String? fullImage,}){
    _id = id;
    _name = name;
    _fullImage = fullImage;
}

  Treatment.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _fullImage = json['fullImage'];
  }
  int? _id;
  String? _name;
  String? _fullImage;

  int? get id => _id;
  String? get name => _name;
  String? get fullImage => _fullImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['fullImage'] = _fullImage;
    return map;
  }

}

/// id : 18
/// review : "good"
/// rate : 4
/// appointment_id : 157
/// doctor_id : 4
/// user_id : 66
/// created_at : "2021-07-21T12:15:19.000000Z"
/// updated_at : "2021-07-21T12:15:19.000000Z"
/// user : {"id":66,"name":"ram","image":"61937164e6f0e.png","fullImage":"https://doctro.saasmonks.in/public/images/upload/61937164e6f0e.png"}

class Reviews {
  Reviews({
      int? id, 
      dynamic review,
      dynamic rate,
      int? appointmentId, 
      int? doctorId, 
      int? userId, 
      String? createdAt, 
      String? updatedAt, 
      User? user,}){
    _id = id;
    _review = review;
    _rate = rate;
    _appointmentId = appointmentId;
    _doctorId = doctorId;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
}

  Reviews.fromJson(dynamic json) {
    _id = json['id'];
    _review = json['review'];
    _rate = json['rate'];
    _appointmentId = json['appointment_id'];
    _doctorId = json['doctor_id'];
    _userId = json['user_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? _id;
  dynamic _review;
  dynamic _rate;
  int? _appointmentId;
  int? _doctorId;
  int? _userId;
  String? _createdAt;
  String? _updatedAt;
  User? _user;

  int? get id => _id;
  dynamic get review => _review;
  dynamic get rate => _rate;
  int? get appointmentId => _appointmentId;
  int? get doctorId => _doctorId;
  int? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['review'] = _review;
    map['rate'] = _rate;
    map['appointment_id'] = _appointmentId;
    map['doctor_id'] = _doctorId;
    map['user_id'] = _userId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 66
/// name : "ram"
/// image : "61937164e6f0e.png"
/// fullImage : "https://doctro.saasmonks.in/public/images/upload/61937164e6f0e.png"

class User {
  User({
      int? id, 
      String? name, 
      String? image, 
      String? fullImage,}){
    _id = id;
    _name = name;
    _image = image;
    _fullImage = fullImage;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _fullImage = json['fullImage'];
  }
  int? _id;
  String? _name;
  String? _image;
  String? _fullImage;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get fullImage => _fullImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['fullImage'] = _fullImage;
    return map;
  }

}

/// id : 1
/// name : "Rose Health Care"
/// phone : "7418529630"
/// address : "Kuvadva, Gujarat, India"
/// lat : 22
/// lng : 71
/// facility : "25 AC Rooms  ,10 Emergency Ambulance,8 Operation Theater,5 ICU,70 Beds"
/// status : 1
/// hospitalGallery : [{"image":"60925f28c37e3.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f28c37e3.jpg"},{"image":"60925f91b8dbb.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f91b8dbb.jpg"},{"image":"60925f9b7d522.jpg","fullImage":"https://doctro.saasmonks.in/public/images/upload/60925f9b7d522.jpg"}]

class Hosiptal {
  Hosiptal({
      int? id, 
      String? name, 
      String? phone, 
      String? address, 
      dynamic lat,
      dynamic lng,
      String? facility, 
      int? status, 
      List<HospitalGallery>? hospitalGallery,}){
    _id = id;
    _name = name;
    _phone = phone;
    _address = address;
    _lat = lat;
    _lng = lng;
    _facility = facility;
    _status = status;
    _hospitalGallery = hospitalGallery;
}

  Hosiptal.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _phone = json['phone'];
    _address = json['address'];
    _lat = json['lat'];
    _lng = json['lng'];
    _facility = json['facility'];
    _status = json['status'];
    if (json['hospitalGallery'] != null) {
      _hospitalGallery = [];
      json['hospitalGallery'].forEach((v) {
        _hospitalGallery?.add(HospitalGallery.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _phone;
  String? _address;
  dynamic _lat;
  dynamic _lng;
  String? _facility;
  int? _status;
  List<HospitalGallery>? _hospitalGallery;

  int? get id => _id;
  String? get name => _name;
  String? get phone => _phone;
  String? get address => _address;
  dynamic get lat => _lat;
  dynamic get lng => _lng;
  String? get facility => _facility;
  int? get status => _status;
  List<HospitalGallery>? get hospitalGallery => _hospitalGallery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['address'] = _address;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['facility'] = _facility;
    map['status'] = _status;
    if (_hospitalGallery != null) {
      map['hospitalGallery'] = _hospitalGallery?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// image : "60925f28c37e3.jpg"
/// fullImage : "https://doctro.saasmonks.in/public/images/upload/60925f28c37e3.jpg"

class HospitalGallery {
  HospitalGallery({
      String? image, 
      String? fullImage,}){
    _image = image;
    _fullImage = fullImage;
}

  HospitalGallery.fromJson(dynamic json) {
    _image = json['image'];
    _fullImage = json['fullImage'];
  }
  String? _image;
  String? _fullImage;

  String? get image => _image;
  String? get fullImage => _fullImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['fullImage'] = _fullImage;
    return map;
  }

}