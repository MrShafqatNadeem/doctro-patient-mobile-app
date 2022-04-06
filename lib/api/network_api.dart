import 'dart:developer';

import 'package:doctro/model/add_address_model.dart';
import 'package:doctro/model/appointments_model.dart';
import 'package:doctro/model/banner_model.dart';
import 'package:doctro/model/book_medicine_model.dart';
import 'package:doctro/model/cancel_appointment_model.dart';
import 'package:doctro/model/delete_address_model.dart';
import 'package:doctro/model/detail_setting_model.dart';
import 'package:doctro/model/display_offer_model.dart';
import 'package:doctro/model/favorite_doctor_model.dart';
import 'package:doctro/model/forgot_password_model.dart';
import 'package:doctro/model/health_tip_model.dart';
import 'package:doctro/model/healtht_tip_detail_model.dart';
import 'package:doctro/model/medicine_order_detail_model.dart';
import 'package:doctro/model/medicine_order_model_model.dart';
import 'package:doctro/model/medicine_details_model.dart';
import 'package:doctro/model/notification_model.dart';
import 'package:doctro/model/Pharamacies_details_model.dart';
import 'package:doctro/model/resend_otp_model.dart';
import 'package:doctro/model/review_model.dart';
import 'package:doctro/model/show_address_model.dart';
import 'package:doctro/model/show_favorite_doctor_model.dart';
import 'package:doctro/model/time_slot_model.dart';
import 'package:doctro/model/treatment_wish_doctor_model.dart';
import 'package:doctro/model/treatments_model.dart';
import 'package:doctro/model/update_profile_model.dart';
import 'package:doctro/model/update_user_image_model.dart';
import 'package:doctro/model/user_detail_model.dart';
import 'package:doctro/model/apply_offer_model.dart';
import 'package:doctro/model/change_password_model.dart';
import 'package:doctro/model/doctor_detail_model.dart';
import 'package:doctro/model/pharamacies_model.dart';
import 'package:doctro/model/prescription_model.dart';
import 'package:doctro/model/register_model.dart';
import 'package:doctro/model/show_video_call_history_model.dart';
import 'package:doctro/model/video_call_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doctro/model/login_model.dart';
import 'package:dio/dio.dart';
import 'package:doctro/model/doctors_model.dart';
import 'package:doctro/model/book_appointments_model.dart';
import 'package:doctro/model/check_otp_model.dart';
import 'package:retrofit/http.dart';

import 'apis.dart';

part 'network_api.g.dart';

@RestApi(baseUrl: Apis.baseUrl)

abstract class RestClient {
  factory RestClient(Dio dio,{String? baseUrl}) = _RestClient;

  @POST(Apis.login)
  Future<Login> loginRequest(@Body() body);

  @POST(Apis.register)
  Future<Register> registerRequest(@Body() body);

  @POST(Apis.doctors_list)
  Future<Doctors> doctorList(@Body() body);

  @GET(Apis.doctor_detail)
  Future<DoctorDetailModel> doctorDetailRequest(@Path() int? id);

  @GET(Apis.healthTip)
  Future<HealthTip> healthTipRequest();

  @GET(Apis.healthTip_detail)
  Future<HealthTipDetails> healthTipDetailRequest(@Path() int? id);

  @GET(Apis.treatment_list)
  Future<Treatments> treatmentsRequest();

  @GET(Apis.book_appointment_list)
  Future<Appointments> appointmentsRequest();

  @GET(Apis.medicine_detail)
    Future<Medicinedetails> medicineDetails(@Path() int? id);

  @POST(Apis.user_book_appointment)
  Future<Bookappointments> bookAppointment(@Body() body);

  @POST(Apis.check_otp)
  Future<Checkotp> checkOtp(@Body() body);

  @POST(Apis.timeSlot)
  Future<Timeslot> timeslot(@Body() body);

  @POST(Apis.add_address)
  Future<AddAddress> addAddressRequest(@Body() body);

  @GET(Apis.show_address)
  Future<ShowAddress> showAddressRequest();

  @GET(Apis.delete_address)
  Future<DeleteAddress> deleteAddressRequest(@Path() int? id);

  @GET(Apis.user_detail)
  Future<UserDetail> userDetailRequest();

  @GET(Apis.setting)
  Future<DetailSetting> settingRequest();

  @GET(Apis.all_pharamacy)
  Future<Pharamacy> pharamacyRequest();

  @GET(Apis.pharamacy_detail)
  Future<PharamaciesDetails> pharmacyDetailRequest(@Path() int? id);

  @POST(Apis.book_medicine)
  Future<BookMedicine> bookMedicineRequest(@Body() body);

  @POST(Apis.add_review)
  Future<ReviewAppointment> addReviewRequest(@Body() body);

  @POST(Apis.cancel_appointment)
  Future<CancelAppointment> cancelAppointmentRequest(@Body() body);

  @GET(Apis.medicine_order_list)
  Future<MedicineOrderModel> medicineOrderRequest();

  @POST(Apis.update_profile)
  Future<UpdateProfile> updateProfileRequest(@Body() body);

  @GET(Apis.medicine_order_detail)
  Future<MedicineOrderDetails>  medicineOrderDetailRequest(@Path() int? id);

  @GET(Apis.offer)
  Future<DisplayOffer> displayOfferRequest();

  @POST(Apis.treatmentWise_doctor)
  Future<TreatmentWishDoctor> treatmentWishDoctorRequest(@Path() int? id,@Body() body);

  @POST(Apis.update_image)
  Future<UpdateUserImage> updateUserImageRequest(@Body() body);

  @GET(Apis.user_notification)
  Future<UserNotification> notificationRequest();

  @GET(Apis.banner)
    Future<Banners> bannerRequest();

  @GET(Apis.add_favorite_doctor)
  Future<FavoriteDoctor> favoriteDoctorRequest(@Path() int? id);

  @GET(Apis.show_favorite_doctor)
  Future<ShowFavoriteDoctor> showFavoriteDoctorRequest();

  @POST(Apis.forgot_password)
  Future<ForgotPassword> forgotPasswordRequest(@Body() body);

  @POST(Apis.apply_offer)
  Future<ApplyOffer> applyOfferRequest(@Body() body);

  @POST(Apis.change_password)
  Future<ChangePasswords> changePasswordRequest(@Body() body);

  @GET(Apis.resend_otp)
  Future<ResendOtp> resendOtpRequest(@Path() int? id);

  @GET(Apis.prescription)
  Future<PrescriptionModel> prescriptionRequest(@Path() int? id);

  @POST(Apis.videoCallToken)
  Future<VideoCallModel> videoCallRequest(@Body() body);

  @GET(Apis.ShowVideoCallHistory)
  Future<ShowVideoCallHistoryModel> showVideoCallHistoryRequest();

  /////////////////////// shafqat api's from here //////////////////
  @POST(Apis.AppointmentSurvey)
  Future<bool> AppointmentSurveyAPI(@Body() body);
}


