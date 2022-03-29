import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctro/AddLocation.dart';
import 'package:doctro/Addtocart.dart';
import 'package:doctro/AllPharamacy.dart';
import 'package:doctro/Book_success.dart';
import 'package:doctro/Bookappointment.dart';
import 'package:doctro/Favoritedoctor.dart';
import 'package:doctro/FirebaseProviders/auth_provider.dart';
import 'package:doctro/FirebaseProviders/chat_provider.dart';
import 'package:doctro/FirebaseProviders/home_provider.dart';
import 'package:doctro/FirebaseProviders/setting_provider.dart';
import 'package:doctro/HealthTips.dart';
import 'package:doctro/HealthTipsDetail.dart';
import 'package:doctro/Home.dart';
import 'package:doctro/MedicineDescription.dart';
import 'package:doctro/Offer.dart';
import 'package:doctro/PharamacyDetail.dart';
import 'package:doctro/Review_Appointment.dart';
import 'package:doctro/Setting.dart';
import 'package:doctro/SignIn.dart';
import 'package:doctro/Specialist.dart';
import 'package:doctro/Treatment.dart';
import 'package:doctro/TreatmentSpecialist.dart';
import 'package:doctro/const/preference.dart';
import 'package:doctro/doctordetail.dart';
import 'package:doctro/forgotpassword.dart';
import 'package:doctro/Showlocation.dart';
import 'package:doctro/phoneverification.dart';
import 'package:doctro/profile.dart';
import 'package:doctro/signup.dart';
import 'package:doctro/Myprescription.dart';
import 'package:doctro/Appointment.dart';
import 'package:doctro/ChangeLanguage.dart';
import 'package:doctro/videocallhistory.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctro/ChangePassword.dart';
import 'package:doctro/MedicineOrder.dart';
import 'package:doctro/MedicineOrderDetail.dart';
import 'package:doctro/MedicinePayment.dart';
import 'package:doctro/StripePaymentScreen.dart';
import 'package:doctro/StripePaymentScreenMedicine.dart';
import 'package:doctro/notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AboutUs.dart';
import 'PrivacyPolicy.dart';
import 'VideoCall/overlay_handler.dart';
import 'api/Retrofit_Api.dart';
import 'api/base_model.dart';
import 'api/network_api.dart';
import 'api/server_error.dart';
import 'const/Palette.dart';
import 'const/prefConstatnt.dart';
import 'localization/language_localization.dart';
import 'localization/localization_constant.dart';
import 'model/detail_setting_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  await SharedPreferenceHelper.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  String? deviceToken = "";

  late SharedPreferences _prefs;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      callApiSetting();
      init();
    });
  }

  Future<SharedPreferences?> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  @override
  void didChangeDependencies() {
    getLocale().then((local) => {
          setState(() {
            this._locale = local;
          })
        });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    if (_locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthProvider>(
            create: (_) => AuthProvider(
              firebaseAuth: FirebaseAuth.instance,
              googleSignIn: GoogleSignIn(),
              prefs: this._prefs,
              firebaseFirestore: this.firebaseFirestore,
            ),
          ),
          Provider<SettingProvider>(
            create: (_) => SettingProvider(
              prefs: this._prefs,
              firebaseFirestore: this.firebaseFirestore,
              firebaseStorage: this.firebaseStorage,
            ),
          ),
          Provider<HomeProvider>(
            create: (_) => HomeProvider(
              firebaseFirestore: this.firebaseFirestore,
            ),
          ),
          Provider<ChatProvider>(
            create: (_) => ChatProvider(
              prefs: this._prefs,
              firebaseFirestore: this.firebaseFirestore,
              firebaseStorage: this.firebaseStorage,
            ),
          ),
        ],
        child: ChangeNotifierProvider<OverlayHandlerProvider>(
          create: (_) => OverlayHandlerProvider(),
          child: MaterialApp(
            title: 'Doctro',
            locale: _locale,
            supportedLocales: [
              Locale(ENGLISH, 'US'),
              Locale(SPANISH, 'ES'),
              Locale(ARABIC, 'AE'),
            ],
            localizationsDelegates: [
              LanguageLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (deviceLocal, supportedLocales) {
              for (var local in supportedLocales) {
                if (local.languageCode == deviceLocal!.languageCode &&
                    local.countryCode == deviceLocal.countryCode) {
                  return deviceLocal;
                }
              }
              return supportedLocales.first;
            },

            debugShowCheckedModeBanner: false,
            // home: Home(),
            initialRoute: "/",
            theme: ThemeData(
              splashColor: Palette.transparent,
              highlightColor: Palette.transparent,
            ),
            routes: {
              '/': (context) => Home(),
              'SignIn': (context) => SignIn(),
              'SignUp': (context) => SignUp(),
              'ForgotPasswordScreen': (context) => ForgotPasswordScreen(),
              'PhoneVerification': (context) => PhoneVerification(),
              'Home': (context) => Home(),
              'Treatment': (context) => Treatment(),
              'FavoriteDoctorScreen': (context) => FavoriteDoctorScreen(),
              'Specialist': (context) => Specialist(),
              'DoctorDetail': (context) => DoctorDetail(),
              'BookAppointment': (context) => BookAppointment(),
              'Appointment': (context) => Appointment(),
              'Myprescription': (context) => Myprescription(),
              'HealthTips': (context) => HealthTips(),
              'HealthTipsDetail': (context) => HealthTipsDetail(),
              'Setting': (context) => Setting(),
              'AddToCart': (context) => AddToCart(),
              'Offer': (context) => Offer(),
              'Profile': (context) => Profile(),
              'ShowLocation': (context) => ShowLocation(),
              'AddLocation': (context) => AddLocation(),
              'BookSuccess': (context) => BookSuccess(),
              'Review': (context) => Review(),
              'MedicineDescription': (context) => MedicineDescription(),
              'AllPharamacy': (context) => AllPharamacy(),
              'PharamacyDetail': (context) => PharamacyDetail(),
              'MedicinePayment': (context) => MedicinePayment(),
              'MedicineOrder': (context) => MedicineOrder(),
              'MedicineOrderDetail': (context) => MedicineOrderDetail(),
              'TreatmentSpecialist': (context) => TreatmentSpecialist(),
              'Notifications': (context) => Notifications(),
              'StripePaymentScreen': (context) => StripePaymentScreen(),
              'StripePaymentScreenMedicine': (context) =>
                  StripePaymentScreenMedicine(),
              'ChangePassword': (context) => ChangePassword(),
              'PrivacyPolicy': (context) => PrivacyPolicy(),
              'AboutUs': (context) => AboutUs(),
              'ChangeLanguage': (context) => ChangeLanguage(),
              'VideoCallHistory': (context) => VideoCallHistory(),
            },
          ),
        ),
      );
    }
  }

  Future<BaseModel<DetailSetting>> callApiSetting() async {
    DetailSetting response;
    try {
      response = await RestClient(RetroApi2().dioData2()).settingRequest();
      setState(() {
        if (response.success == true) {
          SharedPreferenceHelper.setString(
              Preferences.patientAppId, response.data!.patientAppId!);
          if (response.data!.patientAppId != null) {
            getOneSingleToken(SharedPreferenceHelper.getString(Preferences.patientAppId));
          }
        }
      });
    } catch (error, stacktrace) {
      print("Exception occur: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = response;
  }

  Future<bool> getOneSingleToken(appId) async {
    //one signal mate
    try {
      OneSignal.shared.consentGranted(true);
      OneSignal.shared.setAppId(appId);
      OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
      await OneSignal.shared
          .promptUserForPushNotificationPermission(fallbackToSettings: true);
      OneSignal.shared.promptLocationPermission();
      await OneSignal.shared.getDeviceState().then((value) {
        print('device token is ${value!.userId}');
        return SharedPreferenceHelper.setString(Preferences.device_token, value.userId!);
      });

      setState(() {
        deviceToken = SharedPreferenceHelper.getString(Preferences.device_token);
      });
      return true;

    } catch (e) {

      print("error${e.toString()}");
    return false;
    }


  }
}

