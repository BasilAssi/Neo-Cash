import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // home_page
  {
    'u0aukl6s': {
      'ar': 'مجموع الأرصدة',
      'en': 'Total Balances',
    },
    '1ib07wec': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    '0dsvs6im': {
      'ar': 'الحركات',
      'en': 'Transactions',
    },
    '8xr1drdh': {
      'ar': 'عرض الكل',
      'en': 'Show All',
    },
    'mvlc1z5y': {
      'ar': 'ملفي الشخصي',
      'en': 'My Profile',
    },
    'dybj5wgt': {
      'ar': 'الإعدادات',
      'en': 'Settings',
    },
    '80d86a13': {
      'ar': 'تواصل معنا',
      'en': 'Contact Us',
    },
    'nq7ri7jv': {
      'ar': 'أسعار العملات',
      'en': 'Currency Exchange Rates',
    },
    'mcpocoa4': {
      'ar': 'تغير اللغة الى English',
      'en': 'Change Language to English',
    },
    'j8pno2ex': {
      'ar': 'تسجيل الخروج',
      'en': 'Sign Out',
    },
    'hjejmmsa': {
      'ar': 'الرئيسية',
      'en': 'Home',
    },
  },
  // login
  {
    'kcjciuhj': {
      'ar': '5xxxxxxxx',
      'en': '5xxxxxxx',
    },
    'rlu297rm': {
      'ar': '',
      'en': '',
    },
    'huoga21w': {
      'ar': '+970',
      'en': '+970',
    },
    'ke1w6n59': {
      'ar': '+970',
      'en': '+970',
    },
    'mydegl1b': {
      'ar': '+972',
      'en': '+972',
    },
    'bu04m7sg': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wjlvy24l': {
      'ar': 'كلمة السر',
      'en': 'Password',
    },
    '3d2l5lvx': {
      'ar': 'تغير كلمة السر',
      'en': 'Change Password',
    },
    'd8rj43jr': {
      'ar': 'تسجيل الدخول',
      'en': 'Login',
    },
    'q9ks8jtt': {
      'ar': 'مرحبا',
      'en': 'Welcome',
    },
    'nf068v0h': {
      'ar': 'من نحن؟',
      'en': 'Who we are?',
    },
    '3mc67cej': {
      'ar': 'ما عندك حساب؟',
      'en': 'Don\'t you have an account?',
    },
    '07qpw4xc': {
      'ar': '  أنشئ حساب',
      'en': 'Create New Account',
    },
    'nuxhazj7': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'mmnenext': {
      'ar': 'لا يمكن ان يكون الرقم اقل من 9 خانات',
      'en': '',
    },
    '2imdgl09': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'szccmsm4': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'xg9pxhd2': {
      'ar': 'لا يمكن ان يكون الرقم اقل من 9 خانات',
      'en': '',
    },
    '9u91qgdo': {
      'ar': 'لا يمكن ان يكون الرقم أكبر من 9 خانات',
      'en': '',
    },
    'abig6z1g': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'klhdzxhy': {
      'ar': '',
      'en': 'Home',
    },
  },
  // transactions_home_page
  {
    'uepqecre': {
      'ar': 'شحن رصيد موبايل',
      'en': 'Mobile top-up',
    },
    'bsofh1iq': {
      'ar': '2921532903099',
      'en': '2921532903099',
    },
    'eoh7j0yp': {
      'ar': 'Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
    'bs41kbym': {
      'ar': 'إجمالي الرصيد ',
      'en': 'Total Balance',
    },
    '63jl6fbe': {
      'ar': '08/12/2024 -  08/12/2024 ',
      'en': '08/12/2024 - 08/12/2024',
    },
    '1dz4sx9s': {
      'ar': 'الحركات',
      'en': 'Transactions',
    },
  },
  // notification_page
  {
    'n6fn9m9k': {
      'ar': 'الإشعارات',
      'en': 'Notifications',
    },
    'b9tcv9w6': {
      'ar': 'بلشت تحوش لسفرة العيد ؟',
      'en': 'Have you started saving for Eid?',
    },
    'fd8j6p3a': {
      'ar': ' Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
    'b1r7vqyn': {
      'ar': ' ',
      'en': '',
    },
    '92f23h94': {
      'ar':
          'افتح حساب تحوش ونذكر انه صا ر اسهل معا  وجهز لمصاريف السفر ! تمتع بالسحب والايداع وإادارة الاصاريف بأفضل طريقة',
      'en':
          'Open a savings account and remember that it has become easier with us and prepare for travel expenses! Enjoy withdrawals, deposits and managing expenses in the best way',
    },
    'zks01jx1': {
      'ar': ' مبارك، تم تفعيل بطاقتك رقم 4356**',
      'en': 'Congratulations, your card number 4356** has been activated.',
    },
    'ckpq355p': {
      'ar': 'Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
    '4ouibfps': {
      'ar': ' ',
      'en': '',
    },
    'w5sls8lu': {
      'ar':
          ' مبارك، تم تفعيل بطاقتك رقم 4356 **** \nاستمتع بخدمات نيو كاش قد ما بدك',
      'en':
          'Congratulations, your card number 4356**** has been activated. Enjoy New Cash services as much as you want.',
    },
    '89vwnktl': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // register_page_1
  {
    'qv3v9r6a': {
      'ar': 'محفظتك\n  بجيبتك ',
      'en': 'Your wallet in your pocket',
    },
    'xij3ettk': {
      'ar': 'إنشاء حساب ',
      'en': 'Create an account',
    },
    'tdq0z7re': {
      'ar': 'عندك حساب ؟ سجل دخولك الآن',
      'en': 'Do you have an account? Log in now',
    },
    '1t39y3md': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // phone_number
  {
    '621g8xg0': {
      'ar': 'رقم تلفونك ',
      'en': 'Your Phone Number',
    },
    '5n57g2jq': {
      'ar': 'راح  يوصلك رمز تحقق على نفس الرقم , الرجاء التأكد من الرقم المدخل',
      'en':
          'You will receive a verification code on the same number. Please make sure of the provided number.',
    },
    'xoyvv7gu': {
      'ar': '5xxxxxxxx',
      'en': '5xxxxxxx',
    },
    'jffuvm1s': {
      'ar': '',
      'en': '',
    },
    'dk6o1l81': {
      'ar': '+970',
      'en': '+970',
    },
    'k890nwac': {
      'ar': '+970',
      'en': '+970',
    },
    'gangnkno': {
      'ar': '+972',
      'en': '+972',
    },
    'c040sz0r': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'm9cfiyyb': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '20xg27or': {
      'ar': 'لا يمكن ان يكون الرقم اقل من 9 خانات',
      'en': 'The number cannot be less than 9 digits.',
    },
    'o3pcr58o': {
      'ar': 'لا يمكن ان يكون الرقم أكبر من 9 خانات',
      'en': 'The number cannot be greater than 9 digits.',
    },
    'frtzehgk': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ffd17gua': {
      'ar': 'التالي',
      'en': 'Next',
    },
    '1f51n1l6': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // otp_does_not_exist_flow
  {
    'cvcns9e8': {
      'ar': 'تأكيد رقم التلفون',
      'en': 'Confirm Phone Number',
    },
    'qspd8ikt': {
      'ar': 'أرسلنالك رمز تحقق على تليفونك  رقم:  ',
      'en': 'We have sent you a verification code on your phone number:  ',
    },
    'tcup8vos': {
      'ar': '\n',
      'en': '',
    },
    'y9am0wim': {
      'ar': '\n',
      'en': '',
    },
    'tkx75g2g': {
      'ar': ' الرجاء إدخال الرمز',
      'en': 'Please enter the code',
    },
    'qzqkzusk': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': 'Resend verification code',
    },
    '1xcx3ocl': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // card_details
  {
    'a0y0st45': {
      'ar': 'رصيد البطاقة ',
      'en': 'Card balance',
    },
    'jci1ufx5': {
      'ar': '',
      'en': '',
    },
    'kbbahzti': {
      'ar': 'الحساب الاساسي ',
      'en': 'Basic account',
    },
    'e9nhu5rg': {
      'ar': 'SECURITY\nCODE',
      'en': 'SECURITY\nCODE',
    },
    'oc5g9fy5': {
      'ar': 'VALID\nTHRU',
      'en': 'VALID\nTHRU',
    },
    '7wf328ns': {
      'ar': 'عرض الرمز \nالسري',
      'en': 'Show PIN ',
    },
    'bmdetv0i': {
      'ar': 'عرض حركات\n البطاقة',
      'en': 'Card Transactions',
    },
    'v2p9jewd': {
      'ar': 'قفل\nالبطاقة',
      'en': 'Block Card',
    },
    '509evjxa': {
      'ar':
          'عند قفل البطاقة سيتم إيقاف جميع المعاملات المالية من خلال البطاقة فورًا. بإمكانك فك القفل عن البطاقة في أي وقت لاحقا من خلال تطبيق الهاتف',
      'en':
          'When you block your card, all financial transactions will be stopped immediately. You can unblock the card at any time through the application',
    },
    '6rfifwnu': {
      'ar': 'فك قفل\nالبطاقة',
      'en': 'UnBlock  Card',
    },
    'pbrqcali': {
      'ar': 'تفاصيل البطاقة',
      'en': 'Card Details',
    },
    'v04sy0uk': {
      'ar': 'Home',
      'en': 'Transactions',
    },
  },
  // user_profile
  {
    '897rfc7a': {
      'ar': 'ملفي الشخصي',
      'en': 'My Profile',
    },
    'bp7pe903': {
      'ar': 'اسم المستخدم',
      'en': 'User Name',
    },
    'dbqmodex': {
      'ar': 'رقم الموبايل',
      'en': 'Mobile Number',
    },
    'ag1hrdqa': {
      'ar': 'الإيميل',
      'en': 'Email',
    },
    'g3fbaqeh': {
      'ar': 'تم التحقق  ',
      'en': 'Verified',
    },
    'uemhjyul': {
      'ar': 'التحقق من\n البريد الإلكتروني',
      'en': 'Verify Email',
    },
    'fx3qydw8': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // settings_page
  {
    'gj4fnvct': {
      'ar': 'الإعدادات',
      'en': 'Settings',
    },
    'ckdkpn5f': {
      'ar': 'بصمة التعريف',
      'en': 'Fingerprint ID',
    },
    '5035sg3i': {
      'ar': 'نسيت الرمز السري؟',
      'en': 'Forgot your PIN?',
    },
    'c1m639px': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // transaction_details_page
  {
    'm9553mti': {
      'ar': 'تفاصيل الحركة',
      'en': 'Transaction Details',
    },
    'mye4mdo1': {
      'ar': 'رقم البطاقة',
      'en': 'Card Number',
    },
    'jbdriiyr': {
      'ar': 'رمز الحركة',
      'en': 'Transaction Code',
    },
    'k3cfquna': {
      'ar': '2921532903099',
      'en': '2921532903099',
    },
    '6rh91bf4': {
      'ar': 'حالة الطلب',
      'en': 'Transaction Status',
    },
    'hvz0m2gy': {
      'ar': 'تم القبول',
      'en': 'Accepted',
    },
    'msl1dt85': {
      'ar': 'نوع الحركة',
      'en': 'Transaction Type',
    },
    'y5yti1b1': {
      'ar': 'شحن رصيد موبايل',
      'en': 'Top Up Mobile Balance',
    },
    '8nhwfwiv': {
      'ar': 'المفوتر',
      'en': 'Biller',
    },
    'bpwgutti': {
      'ar': 'جّوال',
      'en': 'Jawwal',
    },
    'uo770vgi': {
      'ar': 'التاريخ ',
      'en': 'Date',
    },
    'qfdp2l9l': {
      'ar': '06/09/2024',
      'en': '06/09/2024',
    },
    'rgp0qex3': {
      'ar': 'الوقت',
      'en': 'Time',
    },
    'g6ujez0v': {
      'ar': ' 04:54  PM',
      'en': '04:54 PM',
    },
    'vgu0asxr': {
      'ar': 'رقم الوبايل',
      'en': 'Mobile Number',
    },
    'j3f6mua1': {
      'ar': '00970598251350',
      'en': '00970598251350',
    },
    'ot0eesux': {
      'ar': 'قيمة الحركة',
      'en': 'Transaction Value',
    },
    '222b1j1b': {
      'ar': '50 ILS',
      'en': '50 ILS',
    },
    '49lig4vu': {
      'ar': 'الرسوم',
      'en': 'Fees',
    },
    'mtbpjg1l': {
      'ar': '0 ILS',
      'en': '0 ILS',
    },
    'rk80713u': {
      'ar': 'المجموع',
      'en': 'Total',
    },
    'z3i6h5zp': {
      'ar': '50 ILS',
      'en': '50 ILS',
    },
    '6jyekuwf': {
      'ar': 'تنزيل الصورة على الجهاز؟',
      'en': 'Download image to your device?',
    },
    'j5y93gae': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // view_pin_code_page
  {
    '2o6k2tg3': {
      'ar': 'الرمز السري الخاص بك هو ',
      'en': 'Your PIN',
    },
    'm38fpv1o': {
      'ar': 'هذا هو الرمز السري الخاص بك ',
      'en': 'This is your Your PIN ',
    },
    'lowepglo': {
      'ar': 'سيختفي الرقم خلال ',
      'en': 'The PIN will disappear within',
    },
    'dxq8c0aa': {
      'ar': 'ثوان',
      'en': 'seconds',
    },
    'dc8glgg0': {
      'ar': 'تم',
      'en': 'Done',
    },
    'tvzv3lwv': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // pin_code
  {
    '7b6ufiar': {
      'ar': '3',
      'en': '3',
    },
    '9c7pp1l6': {
      'ar': '2',
      'en': '2',
    },
    's1pboej2': {
      'ar': '1',
      'en': '1',
    },
    'zkjy0s3s': {
      'ar': '6',
      'en': '6',
    },
    'hoh686ue': {
      'ar': '5',
      'en': '5',
    },
    '4vu9gcdy': {
      'ar': '4',
      'en': '4',
    },
    'ae9m7z46': {
      'ar': '9',
      'en': '9',
    },
    'bldx0dbs': {
      'ar': '8',
      'en': '8',
    },
    'gbw0k1xf': {
      'ar': '7',
      'en': '7',
    },
    'qggri9hp': {
      'ar': '',
      'en': '',
    },
    '6umc4o4u': {
      'ar': '0',
      'en': '0',
    },
    '66whvcgs': {
      'ar': '',
      'en': '',
    },
    'ala30aup': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_01
  {
    'cui94pxw': {
      'ar': 'معلوماتك الشخصية',
      'en': 'Your Personal Information',
    },
    '8zu7pt0o': {
      'ar': '7',
      'en': '7',
    },
    'mvfh9kzv': {
      'ar': '6',
      'en': '6',
    },
    '3zv73tw8': {
      'ar': '5',
      'en': '5',
    },
    'ugl2cchw': {
      'ar': '4',
      'en': '4',
    },
    '3wtypfwt': {
      'ar': '3',
      'en': '3',
    },
    '34dnfvoe': {
      'ar': '2',
      'en': '2',
    },
    '533s40y7': {
      'ar': '1',
      'en': '1',
    },
    'ejq0qsaw': {
      'ar': ' الاسم باللغة العربية',
      'en': 'Name in Arabic',
    },
    '8vcfnfcx': {
      'ar': 'اسمك الأول',
      'en': 'Your first name',
    },
    'cqn3fqjj': {
      'ar': 'اسم الأب',
      'en': 'Father\'s name',
    },
    'zzuwdsgd': {
      'ar': 'اسم الجد',
      'en': 'Grandfather\'s name',
    },
    'gwx7jr2c': {
      'ar': 'اسم عائلتك',
      'en': 'Your last name',
    },
    '1xvldsbc': {
      'ar': ' الاسم باللغة الإنجليزية',
      'en': 'Name in English',
    },
    '2d8uxzee': {
      'ar': 'اسمك الأول',
      'en': 'Your first name',
    },
    '1csj5dyy': {
      'ar': 'اسم الأب',
      'en': 'Father\'s name',
    },
    '2vcdhosp': {
      'ar': 'اسم الجد',
      'en': 'Grandfather\'s name',
    },
    'z3b9hdk2': {
      'ar': 'اسم عائلتك',
      'en': 'Your last name',
    },
    'e3s0b90l': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'fg9qljcu': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '4qyygkkl': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'q00zvrwj': {
      'ar': 'الاسم يجب ان يكون باللغة العربية',
      'en': 'Name must be in Arabic',
    },
    'kzzt2ep3': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'r8ss9mpo': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'unpl269b': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'a5kpo2rp': {
      'ar': 'الاسم يجب ان يكون باللغة العربية',
      'en': 'Name must be in Arabic',
    },
    '90so78ix': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'akl1d9zd': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'x802qk9b': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'e62e5k8n': {
      'ar': 'الاسم يجب ان يكون باللغة العربية',
      'en': 'Name must be in Arabic',
    },
    'eizatu2k': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'tfwtgi9v': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '28alnuln': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    '972ziqbl': {
      'ar': 'الاسم يجب ان يكون باللغة العربية',
      'en': 'Name must be in Arabic',
    },
    'f6mfyluo': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'y7vkhixh': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'pjcomu85': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    '6e7r5kul': {
      'ar': 'الاسم يجب ان يكون باللغة الانجليزية',
      'en': 'Name must be in English',
    },
    '8vucega1': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'xmu2qdk6': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'sh8ve8ex': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    '7go408ld': {
      'ar': 'الاسم يجب ان يكون باللغة الانجليزية',
      'en': 'Name must be in English',
    },
    'k6h66wjo': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    't4qqigtg': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'vhf4dh58': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'x114xo5o': {
      'ar': 'الاسم يجب ان يكون باللغة الانجليزية',
      'en': 'Name must be in English',
    },
    'xo316gb5': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '5hpn7ngb': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'agkzy9t0': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'a7t0jgxg': {
      'ar': 'الاسم يجب ان يكون باللغة الانجليزية',
      'en': 'Name must be in English',
    },
    '6ln7r1es': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'jftsmhqt': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // qr_code_page
  {
    'n76z39u6': {
      'ar': 'الدفع ب QR',
      'en': 'Pay with QR',
    },
    'of48qc4f': {
      'ar': 'امسح لدفع ',
      'en': 'Scan QR code',
    },
    'rao1ms25': {
      'ar': 'إلغاء',
      'en': 'Cancel',
    },
    'faufozi7': {
      'ar': 'QR Code  الخاص بي',
      'en': 'My QR Code ',
    },
    'q065sddi': {
      'ar': 'الدفع ب QR',
      'en': 'Pay with QR',
    },
  },
  // enter_id_page
  {
    'je18929v': {
      'ar': '  هويتك الشخصية',
      'en': 'Your Personal ID',
    },
    'lcpbbpxk': {
      'ar': 'الرجاء اختيار نوع وثيقتك  الشخصية ',
      'en': 'Please select your Identification Type',
    },
    'gx1gtqed': {
      'ar': 'الهوية  الفلسطينية',
      'en': 'Palestinian ID',
    },
    'bddgybnm': {
      'ar': 'هوية القدس',
      'en': 'Jerusalem ID',
    },
    'hnmksn50': {
      'ar': 'هوية 48',
      'en': ' 48 ID',
    },
    'gbfbw5q5': {
      'ar': 'جواز السفر',
      'en': 'Passport',
    },
    'olbvbygi': {
      'ar': 'اختيار نوع الهوية ',
      'en': 'Select ID type',
    },
    'f86i9p9t': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '9hnsedy0': {
      'ar': 'الرجاء إدخال رقم الهوية بشكل صحيح',
      'en': 'Please enter your ID number correctly',
    },
    'c42bc1ay': {
      'ar': ' رقم الهوية',
      'en': 'ID number',
    },
    'avin42p9': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'n5zjlx3a': {
      'ar': 'العودة الى الصفحة الرئيسية\n',
      'en': 'Back to home page',
    },
    'o8vsd9cs': {
      'ar': 'الحقل لا يمكن ان يكون أقل من 10 خانات',
      'en': 'ID number cannot be empty',
    },
    '8e3rsbjp': {
      'ar': 'رقم الهوية اقل من 9  ارقام',
      'en': 'ID number less than 9 digits',
    },
    'haww7dt2': {
      'ar': 'الحقل لا يمكن ان يكون أكبر من 10 خانات',
      'en': '',
    },
    'rqwfk1m3': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '20mmouhk': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_02
  {
    '23yolomv': {
      'ar': 'معلوماتك الشخصية',
      'en': 'Your Personal Information',
    },
    '213i0qjp': {
      'ar': '7',
      'en': '7',
    },
    '808vqhu1': {
      'ar': '6',
      'en': '6',
    },
    's74r4pq0': {
      'ar': '5',
      'en': '5',
    },
    'eiuy8p86': {
      'ar': '4',
      'en': '4',
    },
    'xk8j1fbf': {
      'ar': '3',
      'en': '3',
    },
    'pz0aym10': {
      'ar': '2',
      'en': '2',
    },
    'vohah3vr': {
      'ar': '1',
      'en': '1',
    },
    'j1orf7vl': {
      'ar': ' تاريخ الميلاد',
      'en': 'Date of Birth',
    },
    'l0r5ylqb': {
      'ar': ' مكان الميلاد ',
      'en': 'Place of Birth',
    },
    'a43y2yh2': {
      'ar': '',
      'en': '',
    },
    '7n7qut9f': {
      'ar': 'المدينة',
      'en': 'City',
    },
    '1gqz1vk4': {
      'ar': 'اسم الأم باللغة الانجليزية',
      'en': 'Mother\'s name in English',
    },
    'a8pd7lhp': {
      'ar': 'اسم الأم',
      'en': 'Mother\'s name',
    },
    '87900l1f': {
      'ar': 'الجنس',
      'en': 'Gender',
    },
    'ogfo2bga': {
      'ar': 'ذكر',
      'en': 'Male',
    },
    '5bjewnop': {
      'ar': 'أنثى',
      'en': 'Female',
    },
    'k1p2swil': {
      'ar': 'الجنس',
      'en': 'Gender',
    },
    'iukrrbu7': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '320f0ies': {
      'ar': 'الجنسية',
      'en': 'Nationality',
    },
    '6xgs3e3k': {
      'ar': 'الجنسية',
      'en': 'Nationality',
    },
    '7shvqcy3': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'dp2tcpmy': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'yqzok9cw': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '2z8oap5p': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'my2ri9k8': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'caq9antt': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'wiu3u5p7': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'd9xrc6bn': {
      'ar': 'اسم الام يجب ان يكون باللغة الانجليزية',
      'en': 'Mother\'s name must be in English',
    },
    'emd08oiv': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'd8ktttak': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_07
  {
    'uiaxgfy6': {
      'ar': 'أنشئ حسابك',
      'en': 'Create Your Account',
    },
    'ffavvyxv': {
      'ar': '7',
      'en': '7',
    },
    'fssmlfqt': {
      'ar': '6',
      'en': '6',
    },
    'w6dpnxja': {
      'ar': '5',
      'en': '5',
    },
    'atecu50y': {
      'ar': '4',
      'en': '4',
    },
    'utakl669': {
      'ar': '3',
      'en': '3',
    },
    '8apop96s': {
      'ar': '2',
      'en': '2',
    },
    'uvw9emg0': {
      'ar': '1',
      'en': '1',
    },
    'm7w4y74p': {
      'ar': 'أدخل باقي المعلومات',
      'en': 'Complete your information',
    },
    'jr2dayzi': {
      'ar': 'الإيميل',
      'en': 'Email',
    },
    'futstmfr': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    'af8ji769': {
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm password',
    },
    'kcvjgihf': {
      'ar': 'أدخل الرمز السري الخاص بحركاتك المالية  ',
      'en': 'Enter your PIN for financial transactions authorization',
    },
    'k2kbci2a': {
      'ar':
          'الرمز المكون من 4 أرقام سيستخدم لإتمام الحركات المالية من خلال التطبيق',
      'en':
          'The 4-digit PIN will be used to authorize financial transactions within the app',
    },
    't2k8mdj6': {
      'ar': 'الرجاء الموافقة على  ',
      'en': 'Please Accept ',
    },
    'xzwvglof': {
      'ar': 'الشروط والأحكام',
      'en': 'Terms and Conditions',
    },
    'ype1jx4m': {
      'ar': 'تسجيل',
      'en': 'Registration',
    },
    'tt0swmgt': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'qbk4zj7i': {
      'ar': 'الرجاء إدخال بريد إلكتروني صحيح.',
      'en': 'Please enter a valid email.',
    },
    'sn1ac2pa': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'e0zfluii': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '6q1dfoo5': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'rc19rnrm': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8693qu5v': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'sh8pcgv7': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'x3v0m7qw': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'eggopym5': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '7zhaj7vf': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_06
  {
    'nl00v5wv': {
      'ar': 'عنوانك',
      'en': 'Your Address',
    },
    'ldicnasa': {
      'ar': '7',
      'en': '7',
    },
    'bzkvn9vt': {
      'ar': '6',
      'en': '6',
    },
    'esw6f001': {
      'ar': '5',
      'en': '5',
    },
    'ea5xqjj9': {
      'ar': '4',
      'en': '4',
    },
    '5da2g9zm': {
      'ar': '3',
      'en': '3',
    },
    'levc8meb': {
      'ar': '2',
      'en': '2',
    },
    '1dhppwx7': {
      'ar': '1',
      'en': '1',
    },
    'p14tzvud': {
      'ar': ' المدينة',
      'en': 'City',
    },
    'm37d1181': {
      'ar': '',
      'en': '',
    },
    '4zyjb59r': {
      'ar': 'المدينة',
      'en': 'City',
    },
    'fvcq8d1v': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'nixpiac4': {
      'ar': 'التجمع السكني',
      'en': 'Town or residential complex',
    },
    'vi5yluyt': {
      'ar': 'التجمع السكني',
      'en': 'Town or Residential complex',
    },
    'ica2i3n1': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'yfoglq5k': {
      'ar': 'العنوان ',
      'en': 'Address',
    },
    '8shompx7': {
      'ar': '',
      'en': '',
    },
    'x8wk3106': {
      'ar': ' الحي , الشارع  ',
      'en': 'Neighborhood, Street',
    },
    'vq6zsk0n': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'cva7bxnb': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'v4bkyj9y': {
      'ar': 'يجب ألا يتجاوز النص 100 حرفًا.',
      'en': 'Text must not exceed 100 characters.',
    },
    '9tynz1pf': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'nrngf3v4': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // send_money_to_friend
  {
    'jbiuuahw': {
      'ar': '  إرسال لصديق ',
      'en': 'Send to Friend',
    },
    '20m44xdy': {
      'ar': '0149 ',
      'en': '0149',
    },
    'axen44ml': {
      'ar': '\$7,630',
      'en': '\$7,630',
    },
    '114q9k4z': {
      'ar': 'Mastercard Ending in 4021',
      'en': 'Mastercard Ending in 4021',
    },
    'xgm3exrb': {
      'ar': '\$425.24',
      'en': '\$425.24',
    },
    'd75eqmgj': {
      'ar': '5xxxxxxxx',
      'en': '5xxxxxxx',
    },
    'v1u8v2hp': {
      'ar': '',
      'en': '',
    },
    'sdfxter1': {
      'ar': '+970',
      'en': '+970',
    },
    '1uytg858': {
      'ar': '+972 ',
      'en': '+972',
    },
    'uf70ikbn': {
      'ar': '+970',
      'en': '+970',
    },
    '4soo0d3t': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ynmq9egf': {
      'ar': 'القيمة',
      'en': 'Value',
    },
    '6x2d07fd': {
      'ar': '',
      'en': '',
    },
    'fhwcji5k': {
      'ar': 'الهدف من التحويل',
      'en': 'The purpose of the transfer',
    },
    'jh7ruwuj': {
      'ar': '',
      'en': '',
    },
    'dr4519ce': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'hlwqlc5j': {
      'ar': 'إرسال لصديق',
      'en': 'Send Money',
    },
  },
  // transfer_money_between_cards
  {
    'mhiy4xcu': {
      'ar': 'تحويل بين البطاقات',
      'en': 'Transfer Money Between Cards',
    },
    'gsq7zcfk': {
      'ar': 'من حساب:',
      'en': 'From account:',
    },
    'emfwruah': {
      'ar': '0149 ',
      'en': '0149',
    },
    '2bhoxaxr': {
      'ar': '\$7,630',
      'en': '\$7,630',
    },
    'mrr7gjmr': {
      'ar': 'Mastercard Ending in 4021',
      'en': 'Mastercard Ending in 4021',
    },
    'xzb0rw26': {
      'ar': '\$425.24',
      'en': '\$425.24',
    },
    'tvjgxrqx': {
      'ar': 'الى حساب:',
      'en': 'To account:',
    },
    'go2zpmye': {
      'ar': '0149 ',
      'en': '0149',
    },
    'zg0gj56z': {
      'ar': '\$7,630',
      'en': '\$7,630',
    },
    'tydwr8ll': {
      'ar': 'Mastercard Ending in 4021',
      'en': 'Mastercard Ending in 4021',
    },
    'x9qkdujl': {
      'ar': '\$425.24',
      'en': '\$425.24',
    },
    'r8hxgkfb': {
      'ar': 'القيمة',
      'en': 'Value',
    },
    '5zdegweg': {
      'ar': '0.00',
      'en': '0.00',
    },
    '1r5wtr3t': {
      'ar': 'الناتج',
      'en': 'Output',
    },
    'nknpry4t': {
      'ar': '',
      'en': '',
    },
    '9d7vx8kw': {
      'ar': '0.00',
      'en': '0.00',
    },
    'g8ub0m5g': {
      'ar': 'التالي',
      'en': 'Next',
    },
    's4vsfq3u': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // confirm_transfer_between_cards
  {
    'scgd2yef': {
      'ar': 'تأكيد التحويل بين الحسابات',
      'en': 'Confirm transfer between accounts',
    },
    '9qo8gc6l': {
      'ar': 'تحويل من حساب ',
      'en': 'Transfer from account',
    },
    'glohmjwh': {
      'ar': 'Mastercard Ending in 4021',
      'en': 'Mastercard Ending in 4021',
    },
    'dzynwqi4': {
      'ar': '\$425.24',
      'en': '\$425.24',
    },
    '6hukh2tg': {
      'ar': 'المبلغ: ',
      'en': 'Amount:',
    },
    'my0bpgqe': {
      'ar': '\$100',
      'en': '\$100',
    },
    'p5301wne': {
      'ar': 'الباقي: ',
      'en': 'Remaining:',
    },
    'x8q9zv2v': {
      'ar': '\$325.24',
      'en': '\$325.24',
    },
    'bdn0hzbv': {
      'ar': 'تحويل الى حساب  ',
      'en': 'Transfer to account',
    },
    '6915ed9m': {
      'ar': 'Mastercard Ending in 4123',
      'en': 'Mastercard Ending in 4123',
    },
    '7086kl7y': {
      'ar': 'ILS 4205.29',
      'en': 'ILS 4205.29',
    },
    'of0t09zx': {
      'ar': 'المبلغ: ',
      'en': 'Amount:',
    },
    '0wo54mur': {
      'ar': 'ILS 4205.29',
      'en': 'ILS 4205.29',
    },
    '2theifrp': {
      'ar': 'الناتج',
      'en': 'Output',
    },
    've6j84mu': {
      'ar': 'ILS 4565.29',
      'en': 'ILS 4565.29',
    },
    'nekoz6a2': {
      'ar': 'سعر الصرف',
      'en': 'Exchange rate',
    },
    'ef295384': {
      'ar': 'ILS 3.72 = \$1',
      'en': 'ILS 3.72 = \$1',
    },
    '9lqhcuai': {
      'ar': 'تأكيد ',
      'en': 'Confirm',
    },
    'kvlrhd8q': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_03
  {
    'bqk6hgnw': {
      'ar': 'معلوماتك الشخصية',
      'en': 'Your Personal Information',
    },
    'q7ve0j8x': {
      'ar': '7',
      'en': '7',
    },
    'ewexqkqz': {
      'ar': '6',
      'en': '6',
    },
    '9dytv4p0': {
      'ar': '5',
      'en': '5',
    },
    'xurogjlo': {
      'ar': '4',
      'en': '4',
    },
    'jqv5l81n': {
      'ar': '3',
      'en': '3',
    },
    'sdeo1sm7': {
      'ar': '2',
      'en': '2',
    },
    '9ftbo6mx': {
      'ar': '1',
      'en': '1',
    },
    'uroujvhf': {
      'ar': 'هل أنت مقيم في البلد؟',
      'en': 'Are you resident?',
    },
    'bg1z8bxj': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    'g5scq0d2': {
      'ar': 'لا',
      'en': 'No',
    },
    'btro9yps': {
      'ar': 'مقيم في البلد؟',
      'en': 'Resident in the country?',
    },
    'w8fc26vi': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'tv5scspx': {
      'ar': 'هل لديك وثيقة أمريكية (جواز سفر أو جربن كارد على سبيل المثال)؟',
      'en': 'Do you have any US documents, such as a passport or green card?',
    },
    'rbncbqss': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    't62zgocx': {
      'ar': 'لا',
      'en': 'No',
    },
    '8xxpotti': {
      'ar': 'عندك جواز سفر أمريكي؟',
      'en': 'Do you have a US passport?',
    },
    '26jpolzb': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'fgb7p83i': {
      'ar': 'المهنة',
      'en': 'Profession',
    },
    '1vskji67': {
      'ar': '',
      'en': '',
    },
    '8jw98ap3': {
      'ar': 'المهنة',
      'en': 'Profession',
    },
    '5i8vcalm': {
      'ar': 'مكان العمل',
      'en': 'Workplace',
    },
    '3wiufgi9': {
      'ar': '',
      'en': '',
    },
    '825ld0i8': {
      'ar': 'مكان العمل',
      'en': 'Workplace',
    },
    'bvo31zkk': {
      'ar': 'الدخل الشهري (بالدولار)  ',
      'en': 'Monthly Income (USD)',
    },
    '5w21n1s1': {
      'ar': '',
      'en': '',
    },
    'cki60vlr': {
      'ar': 'الدخل الشهري بالدولار',
      'en': 'Monthly income in dollars',
    },
    '4bmwbw9n': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'ckc46hur': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'wnf2fraw': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'bcmiiojk': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '7193jimg': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'rn5wudke': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'iw5fw6si': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '0ny3hsku': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '3emqfmua': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'wqglt18i': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '5g4y5rge': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_05
  {
    'tlsedmig': {
      'ar': 'معلومات حسابك',
      'en': 'Your Account Information',
    },
    '1ctislht': {
      'ar': '7',
      'en': '7',
    },
    'u6yl7pi5': {
      'ar': '6',
      'en': '6',
    },
    '1ulxndzu': {
      'ar': '5',
      'en': '5',
    },
    'dhkwr4c7': {
      'ar': '4',
      'en': '4',
    },
    '7d4pdf2s': {
      'ar': '3',
      'en': '3',
    },
    'idysyybb': {
      'ar': '2',
      'en': '2',
    },
    'j0fegxwu': {
      'ar': '1',
      'en': '1',
    },
    'gdk2t82t': {
      'ar': 'هل أنت المستفيد الحقيقي من الحساب؟',
      'en': 'Are you the beneficiary of the account?',
    },
    'n5ifl7pf': {
      'ar': 'لا',
      'en': 'No',
    },
    'do0uczj5': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    '0t8zizvu': {
      'ar': 'هل أنت معرض سياسيا',
      'en': 'Are you politically exposed?',
    },
    'bdv4ojpq': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'igttbcem': {
      'ar': ' اسم المستفيد الحقيقي  ',
      'en': 'Real beneficiary name',
    },
    '1vatub9u': {
      'ar': '',
      'en': '',
    },
    'gdczccov': {
      'ar': 'اسم المستفيد الحقيقي   ',
      'en': 'Real Beneficiary Name',
    },
    'plzrglhj': {
      'ar': ' طبيعة العلاقة ',
      'en': 'Nature of the relationship with the beneficiary',
    },
    'b6ncsijs': {
      'ar': '',
      'en': '',
    },
    'kqevx2de': {
      'ar': 'مثال : أب, ابن , أخ',
      'en': 'Example: father, son, brother',
    },
    '9la124ib': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '0snrq15l': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'ff20u9xu': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ot9dvbxc': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '6b8ufb9o': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    's0hgt3cz': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'pjy8nseh': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // DetailsReceipt
  {
    'rlkgl0jb': {
      'ar': 'تفاصيل الحوالة',
      'en': 'Transfer Details',
    },
    'gwvb64zo': {
      'ar': 'المبلغ المراد تحويله',
      'en': 'Amount to be transferred',
    },
    'l13k1m3t': {
      'ar': '\$25,250',
      'en': '\$25,250',
    },
    '6ghsqz1c': {
      'ar': 'الرقم :  ',
      'en': 'Number:',
    },
    '5tjyfmxy': {
      'ar': '056982453',
      'en': '5700-01-21T22:00:00Z',
    },
    'jlnohcyj': {
      'ar': 'رقم البطاقة :  ',
      'en': 'Card number:',
    },
    '32nits09': {
      'ar': '5201',
      'en': '5201',
    },
    'tskvpav0': {
      'ar': 'الهدف من التحويل :  ',
      'en': 'The purpose of the money transfer:',
    },
    '06feclzd': {
      'ar': 'تحويل مبلغ لصديق ',
      'en': 'Transfer money to a friend',
    },
    'eb6zsi1i': {
      'ar': 'تأكيد',
      'en': 'Confirm',
    },
    'ikp3qll2': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // confirm_transfer_between_friends_old
  {
    'truneh6l': {
      'ar': 'تأكيد التحويل لصديق',
      'en': 'Confirm money transfer ',
    },
    'o83ax2uf': {
      'ar': 'تحويل من حساب ',
      'en': 'Transfer from account',
    },
    '5rt9xf5u': {
      'ar': '4012 5421 2322 6521',
      'en': '4012 5421 2322 6521',
    },
    '0u697jmf': {
      'ar': '\$425.24',
      'en': '\$425.24',
    },
    'sxgsnv5g': {
      'ar': 'رقم الهاتف: ',
      'en': 'Phone number:',
    },
    'dfulps16': {
      'ar': '0569718347',
      'en': '0569718347',
    },
    'n9vdl0hl': {
      'ar': 'المبلغ: ',
      'en': 'Amount:',
    },
    'a0x5ttbz': {
      'ar': '\$100',
      'en': '\$100',
    },
    'u9kq7zz8': {
      'ar': 'الباقي: ',
      'en': 'Remaining:',
    },
    'qx08q154': {
      'ar': '\$325.24',
      'en': '\$325.24',
    },
    '4qitr4j0': {
      'ar': 'تحويل الى حساب  ',
      'en': 'Transfer to account',
    },
    'u37rv44l': {
      'ar': 'Mastercard Ending in 4123',
      'en': 'Mastercard Ending in 4123',
    },
    '5sg1xdr6': {
      'ar': 'المبلغ: ',
      'en': 'Amount:',
    },
    'glywilo3': {
      'ar': 'ILS 4205.29',
      'en': 'ILS 4205.29',
    },
    'qk31ay10': {
      'ar': 'الناتج',
      'en': 'Output',
    },
    'psm6l883': {
      'ar': 'ILS 4565.29',
      'en': 'ILS 4565.29',
    },
    'k1013p9n': {
      'ar': 'سعر الصرف',
      'en': 'Exchange rate',
    },
    '40dc3fyf': {
      'ar': 'ILS 3.72 = \$1',
      'en': 'ILS 3.72 = \$1',
    },
    'g42425zj': {
      'ar': 'تأكيد ',
      'en': 'Confirm',
    },
    '3bzww1bw': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // details_receipt_between_freineds
  {
    '557qyliz': {
      'ar': 'إشعار تحويل ',
      'en': 'Transfer Notice',
    },
    '8u5s3kdp': {
      'ar': 'من',
      'en': 'From',
    },
    'bp9j12y6': {
      'ar': 'محمد علي ربحي حج',
      'en': 'Mohammed Ali Rabhi Hajj',
    },
    'jcodl840': {
      'ar': '400 دولار أمريكي',
      'en': '400 USD',
    },
    'b4rghdc4': {
      'ar': 'إلى',
      'en': 'To',
    },
    'j75tx4ic': {
      'ar': 'احمد عدنان عماد خريوش',
      'en': 'Ahmed Adnan Imad Khrioush',
    },
    'l8prkq3a': {
      'ar': '1493.65  شيقل',
      'en': '1493.65 shekels',
    },
    'c1taeylq': {
      'ar': 'رقم هاتف المستفيد:     ',
      'en': 'Beneficiary\'s phone number:',
    },
    'klshmt2t': {
      'ar': '452224444444',
      'en': '452224444444',
    },
    '9yc1rnuq': {
      'ar': 'سعر التحويل    ',
      'en': 'Exchange rate',
    },
    'uvwprbrm': {
      'ar': '0.2678',
      'en': '0.2678',
    },
    '55xtsanr': {
      'ar': 'تاريخ الحركة    ',
      'en': 'Transaction history',
    },
    'lr59zkft': {
      'ar': '30/07/2024',
      'en': '07/30/2024',
    },
    'i2amd03h': {
      'ar': 'الرقم المرجعي    ',
      'en': 'Reference number',
    },
    '1bzkc9tu': {
      'ar': '985742',
      'en': '985742',
    },
    'a0gypbn7': {
      'ar': 'العودة إلى الصفحة الرئيسية ',
      'en': 'Back to Home Page',
    },
    'zs5rbl31': {
      'ar': 'تنزيل الصورة على الجهاز؟',
      'en': 'Download image to your device?',
    },
    'oyawx3t8': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // confirm_transfer_between_friends
  {
    'd29j6etm': {
      'ar': 'تأكيد التحويل لصديق',
      'en': 'Confirm Money Transfer',
    },
    'd2k4fk0b': {
      'ar': 'من',
      'en': 'From',
    },
    '25j8ynvt': {
      'ar': '4012 5421 2322 6521',
      'en': '4012 5421 2322 6521',
    },
    'xxcnxg3a': {
      'ar': '\$725.24',
      'en': '\$725.24',
    },
    'v8skjqoe': {
      'ar': 'محمد علي ربحي حج',
      'en': 'Mohammed Ali Rabhi Hajj',
    },
    'famtr075': {
      'ar': '400 دولار أمريكي',
      'en': '400 USD',
    },
    'ktpl4i3i': {
      'ar': 'رقم الهاتف: ',
      'en': 'Phone number:',
    },
    'twcdlx8x': {
      'ar': '0569718347',
      'en': '0569718347',
    },
    '9469oihh': {
      'ar': 'رصيد البطاقة بعد التحويل:',
      'en': 'Card balance after money transfer:',
    },
    '2akp7w76': {
      'ar': '\$325.24',
      'en': '\$325.24',
    },
    'xglo4xli': {
      'ar': 'إلى',
      'en': 'to',
    },
    'hldlatz0': {
      'ar': 'Mastercard Ending in 4123',
      'en': 'Mastercard Ending in 4123',
    },
    'qhuf7lae': {
      'ar': 'احمد  خريوش',
      'en': 'Ahmed Khrioush',
    },
    'of136owk': {
      'ar': '1493.65  شيقل',
      'en': '1493.65 shekels',
    },
    '911r0zlk': {
      'ar': 'رقم الهاتف: ',
      'en': 'Phone number:',
    },
    'i2wof63l': {
      'ar': '0569718347',
      'en': '0569718347',
    },
    '7yfdl2ft': {
      'ar': 'سعر التحويل     ',
      'en': 'Exchange rate',
    },
    '7tetyknn': {
      'ar': '0.2678',
      'en': '0.2678',
    },
    '3aqgsgal': {
      'ar': 'تأكيد ',
      'en': 'Confirm',
    },
    'ni2f36n1': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // card_limits
  {
    'haicrzyo': {
      'ar': 'قيود البطاقة',
      'en': '',
    },
    '290trq5n': {
      'ar': 'الشراء عبر الانترنت',
      'en': '',
    },
    'ryd9xzdd': {
      'ar': 'يوميا',
      'en': '',
    },
    'bsw2hzk3': {
      'ar': 'الحد',
      'en': '',
    },
    'idsetwnf': {
      'ar': '200  NIS',
      'en': '',
    },
    '87ovu4el': {
      'ar': 'المستخدم',
      'en': '',
    },
    'yqlkr8i9': {
      'ar': '0.00 NIS',
      'en': '',
    },
    'tpxqrxrn': {
      'ar': 'شهريا',
      'en': '',
    },
    'a9m3ypjl': {
      'ar': 'الحد',
      'en': '',
    },
    'd5698hjb': {
      'ar': '1000  NIS',
      'en': '',
    },
    'qxr9vybk': {
      'ar': 'المستخدم',
      'en': '',
    },
    '9gkf66d5': {
      'ar': '100.50 NIS',
      'en': '',
    },
    'c28orvgg': {
      'ar': 'السحب النقدي',
      'en': '',
    },
    'jhqfsb2b': {
      'ar': 'يوميا',
      'en': '',
    },
    'by3dn7g1': {
      'ar': 'الحد',
      'en': '',
    },
    'zgzocf3t': {
      'ar': 'Unlimited',
      'en': '',
    },
    'vw9olpky': {
      'ar': 'المستخدم',
      'en': '',
    },
    'nchlru8s': {
      'ar': '0.00 NIS',
      'en': '',
    },
    'xzwtdxo7': {
      'ar': 'شهريا',
      'en': '',
    },
    'lt14blaa': {
      'ar': 'الحد',
      'en': '',
    },
    'dm5ureoq': {
      'ar': '200  NIS',
      'en': '',
    },
    'mr8w610x': {
      'ar': 'المستخدم',
      'en': '',
    },
    '285yy2fy': {
      'ar': '50.50 NIS',
      'en': '',
    },
    'j9wdxfqm': {
      'ar': 'المدفوعات',
      'en': '',
    },
    'oz8wuha5': {
      'ar': 'يوميا',
      'en': '',
    },
    'yqc515t4': {
      'ar': 'الحد',
      'en': '',
    },
    'bwamgs4d': {
      'ar': '500  NIS',
      'en': '',
    },
    '52893xaz': {
      'ar': 'المستخدم',
      'en': '',
    },
    '4j8cx1cv': {
      'ar': '150.00 NIS',
      'en': '',
    },
    'igp67d31': {
      'ar': 'شهريا',
      'en': '',
    },
    'r6xnueov': {
      'ar': 'الحد',
      'en': '',
    },
    'pg65poul': {
      'ar': '700  NIS',
      'en': '',
    },
    '720rzu66': {
      'ar': 'المستخدم',
      'en': '',
    },
    'ftg9bd6x': {
      'ar': '250.00 NIS',
      'en': '',
    },
    'mm2yzqyl': {
      'ar': 'تعديل',
      'en': '',
    },
    '0tb6xhcz': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_08
  {
    'zwhfi7na': {
      'ar': 'إرفاق الصور',
      'en': 'Attach photos',
    },
    'c4fvj91y': {
      'ar': 'حفظ',
      'en': 'Save',
    },
    '6jkjfkmj': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // registeration_04
  {
    'sg2jhd5x': {
      'ar': 'معلوماتك الشخصية',
      'en': 'Your Personal Information',
    },
    'zlka5rrp': {
      'ar': '7',
      'en': '7',
    },
    'nfyvyh6k': {
      'ar': '6',
      'en': '6',
    },
    '1vtpfq63': {
      'ar': '5',
      'en': '5',
    },
    '9y58d25u': {
      'ar': '4',
      'en': '4',
    },
    '34392ni6': {
      'ar': '3',
      'en': '3',
    },
    'jjsy49ch': {
      'ar': '2',
      'en': '2',
    },
    '1lf4tpx7': {
      'ar': '1',
      'en': '1',
    },
    '2fczhuql': {
      'ar': 'هل أنت معرض سياسيا',
      'en': 'Are you politically exposed?',
    },
    'p6zgikvq': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    '4r3n20ct': {
      'ar': 'لا',
      'en': 'No',
    },
    '3ths88ya': {
      'ar': 'هل أنت معرض سياسيا',
      'en': 'Are you politically exposed?',
    },
    'bey4z88s': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'junmb9xt': {
      'ar': 'اسم المعرض سياسيا (باللغة العربية)',
      'en': 'Full Name of Politically Exposed Person (Arabic)',
    },
    'i3huoxzz': {
      'ar': '',
      'en': '',
    },
    'bcv9kzes': {
      'ar': 'الاسم الكامل باللغة العربية',
      'en': 'Full name in Arabic',
    },
    'j4rwrsn3': {
      'ar': 'اسم المعرض سياسيا (باللغة الإنجليزية)',
      'en': 'Full Name of Politically Exposed Person(in English)',
    },
    'jrzargp1': {
      'ar': '',
      'en': '',
    },
    'u7i1idxb': {
      'ar': 'الاسم الكامل باللغة الانجليزية',
      'en': 'Full name in English',
    },
    'xr0qsc4r': {
      'ar': 'صلة القرابة مع المعرض سياسيا',
      'en': 'Relationship with the Politically Exposed Person',
    },
    'dmrx6uya': {
      'ar': '',
      'en': '',
    },
    'gagxqvml': {
      'ar': 'مثال : أب, ابن , أخ',
      'en': 'Example: father, son, brother',
    },
    'u6bu8xfy': {
      'ar': 'منصب المعرض سياسيا',
      'en': 'Politically exposed position',
    },
    'pq098rwi': {
      'ar': '',
      'en': '',
    },
    'q5333xki': {
      'ar': 'مثال: سفير، مسؤول تنفيذي، ',
      'en': 'Example: Ambassador, Executive',
    },
    '0qtinpje': {
      'ar': 'التالي',
      'en': 'Next',
    },
    '77xgtb0q': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '8uyk2yx4': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'nrirvjsc': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'tjiw19nd': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'gjmeocq2': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'ukwnlenj': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'bp5kq706': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'bs15x86c': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    'pljieomh': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8cxs6xh6': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '988ahozd': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
    },
    '2dzzz8zd': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'irznv3uq': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // set_password_exist_flow
  {
    'qj8edcp1': {
      'ar': 'فعل حسابك على هذا الجهاز',
      'en': 'Activate Your Device',
    },
    '5hbla8hx': {
      'ar': 'أدخل باقي المعلومات',
      'en': 'Complete your Information',
    },
    'm6sf741h': {
      'ar': 'الإيميل',
      'en': 'Email',
    },
    'f3jdv1tf': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'xb8br4rz': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'pqomtgby': {
      'ar': 'كلمة السر',
      'en': 'Password',
    },
    'b4d362pe': {
      'ar': 'تأكيد كلمة السر',
      'en': 'Confirm password',
    },
    '5qtwq427': {
      'ar': 'أدخل الرمز السري الخاص بحركاتك المالية  ',
      'en': 'Enter your PIN',
    },
    'xhrkcmyz': {
      'ar':
          'الرمز المكون من 4 أرقام سيستخدم لإتمام الحركات المالية من خلال التطبيق',
      'en':
          'The 4-digit PIN will be used to authorize financial transactions within the app',
    },
    'l0dw1urg': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'a9l80f02': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'The password must be at least 7 characters long and include one uppercase letter, one lowercase letter, and one number',
    },
    'lcc8trnq': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    't31v2sxc': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    '0hz9033c': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'dmi0qnnd': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'w5wdtbjl': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'zsckrnmu': {
      'ar': 'تسجيل',
      'en': 'Register',
    },
    'iwe5m9b5': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // about_us
  {
    'h2geav6c': {
      'ar': 'تفاصيل عنا',
      'en': 'About Us',
    },
    'oex1z0ns': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // terms_and_conditions
  {
    'h9i4rbsx': {
      'ar': 'الشروط و الأحكام',
      'en': 'Terms and Conditions',
    },
    '96y42bfw': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // id_forgot_pin
  {
    'fvzfxcqw': {
      'ar': 'نسيت كلمة المرور؟',
      'en': 'Forgot Password?',
    },
    'eh9aeadi': {
      'ar': 'الرجاء اختيار نوع وثيقتك  الشخصية ',
      'en': 'Please select your Identification Type',
    },
    'r6nzurqp': {
      'ar': 'الهوية  الفلسطينية',
      'en': 'Palestinian Identity',
    },
    'jq2h3kwv': {
      'ar': 'هوية القدس',
      'en': 'Jerusalem Identity',
    },
    'b2r8gjy6': {
      'ar': 'اختيار نوع الهوية ',
      'en': 'Select ID type',
    },
    'r87qx93n': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wuwr4gcb': {
      'ar': 'الرجاء ادخال رقم الهوية بشكل صحيح',
      'en': 'Please enter your ID number correctly',
    },
    'v854yanp': {
      'ar': 'ادخال رقم الهوية',
      'en': 'ID number',
    },
    '4ydgmlj5': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'nm2mbj7p': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // confirm_reset_password
  {
    '2cug9a5q': {
      'ar': 'تغيير كلمة السر',
      'en': 'Change Password',
    },
    'ff3upr4v': {
      'ar': 'كلمة السر الجديدة',
      'en': 'New password',
    },
    'xibhd1bs': {
      'ar': 'تأكيد كلمة السر',
      'en': 'Confirm password',
    },
    'v4jg8lhr': {
      'ar': 'تأكيد',
      'en': 'Confirm',
    },
    'djfdrczz': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // agent_list
  {
    '91cfvzqe': {
      'ar': 'قائمة الوكلاء',
      'en': 'Agents List',
    },
    'et7esr06': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // otp_email_forgot_pin
  {
    'de1cfdxp': {
      'ar': 'تأكيد إيميلك',
      'en': 'Confirm your Email',
    },
    'nyn9hgws': {
      'ar': 'بعتنالك رمز تحقق على إيميلك',
      'en': 'We sent you a verification code to your email.',
    },
    '0u39zzxp': {
      'ar': '\n',
      'en': '',
    },
    'k2o5twom': {
      'ar': 'xxxxx@gmail.com',
      'en': 'xxxxx@gmail.com',
    },
    'skza5adf': {
      'ar': '\n',
      'en': '',
    },
    'l9zv2cch': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': 'Resend verification code',
    },
    'qh3rq7c0': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // otp_phone_reset_password
  {
    'f89lzjja': {
      'ar': 'تأكيد رقم التلفون',
      'en': 'Confirm Phone Number',
    },
    '8870pp45': {
      'ar': 'بعتنالك رمز تحقق على تليفونك  رقم',
      'en': 'We sent you a verification code on your phone number',
    },
    'j4stwg16': {
      'ar': '\n',
      'en': '',
    },
    'a3gk6gid': {
      'ar': '\n',
      'en': '',
    },
    'pxsjwm17': {
      'ar': ' الرجاء إدخال الرمز',
      'en': 'Please enter the verification code',
    },
    '9em721k3': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': 'Resend verification code',
    },
    '0q24e3y0': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // basic_infi_forgot_pin
  {
    'hfce6qeb': {
      'ar': 'تأكيد معلوماتك الشخصية',
      'en': 'Confirm Your Personal Data',
    },
    'zptptm6s': {
      'ar': 'تاريخ الميلاد',
      'en': 'Date of Birth',
    },
    'vwbeeetc': {
      'ar': ' مكان الميلاد ',
      'en': 'Place of Birth',
    },
    'mh8eec57': {
      'ar': '',
      'en': '',
    },
    'axjjzo1w': {
      'ar': 'المدينة',
      'en': 'City',
    },
    '35hkijz2': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'takmk9lm': {
      'ar': 'التالي',
      'en': 'Next',
    },
    'aizmi0ii': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // success_page
  {
    'kh49fpqs': {
      'ar': 'مبااارك!',
      'en': 'Congratulations!',
    },
    '7uvhtze5': {
      'ar':
          'تهانينا! تم تقديم طلبك بنجاح ستتمكن من استخدام حسابك في غضون بضعة أيام عمل بعد الموافقة على الحساب',
      'en':
          'Congratulations! Your application has been successfully submitted. You will be able to use your account within a few business days once it is approved',
    },
    'pm7u8x69': {
      'ar': 'الصفحة الرئيسية ',
      'en': 'Home',
    },
    'emqmmcve': {
      'ar': 'الصفحة الرئيسية ',
      'en': 'Home',
    },
  },
  // set_pin_forgot_pin
  {
    'wwmjyqx9': {
      'ar': ' نسيت الرمز السري؟',
      'en': 'Forgot PIN?',
    },
    'pfhb06nu': {
      'ar': 'أدخل الرمز السري الجديد الخاص  بحركاتك المالية  ',
      'en': 'Enter the new PIN for your financial transactions.',
    },
    '82drjyts': {
      'ar':
          'الرمز المكون من 4 أرقام سيستخدم لإتمام الحركات المالية من خلال التطبيق',
      'en':
          'The 4-digit PIN will be used to authorize financial transactions within the app',
    },
    'ijhz7zxu': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'fh31bdqg': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '2g5fsj83': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'rddnpd8l': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف ويحتوي على حرف واحد كبير، حرف واحد صغير، ورقم واحد',
      'en':
          'The password must be at least 7 characters long and include one uppercase letter, one lowercase letter, and one number',
    },
    '1beiicvo': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '2jt0d9nr': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'ju2oiiam': {
      'ar': 'تأكيد',
      'en': 'Confirm',
    },
    'utcofzjq': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // transactions_page
  {
    '983o6iht': {
      'ar': '08/12/2024 -  08/12/2024 ',
      'en': '',
    },
    'ht9cg4jd': {
      'ar': 'الحركات',
      'en': '',
    },
  },
  // error_component
  {
    'gzit5wjk': {
      'ar': 'موافق',
      'en': 'OK',
    },
  },
  // error_componentCopy
  {
    'w1jz0htw': {
      'ar': 'لا  يوجد رصيد كافي في\nبطاقتك',
      'en': 'You don\'t have enough balance',
    },
    'x8w737e8': {
      'ar': 'موافق',
      'en': 'OK',
    },
  },
  // Card61TransferDetailsSmall
  {
    'cyiq8fob': {
      'ar': 'يبدو أن الصديق  لديه أكثر من بطاقة ',
      'en': 'Looks like your friend has more than one card.',
    },
    'nm3mpspk': {
      'ar': 'يرجى ادخال اخر اربع ارقام  من البطاقة التي ترغب بالتحويل لها',
      'en':
          'Please insert the last 4 digits of the card you would like to transfer money to',
    },
    'sgku2hqq': {
      'ar': 'تأكيد',
      'en': 'Confirm',
    },
    '3zrntypz': {
      'ar': 'إلغاء',
      'en': 'Cancel',
    },
  },
  // block_card_component
  {
    '7xsfy4k8': {
      'ar':
          'هل أنت متأكد من أنك تريد قفل هذه البطاقة؟ سيتم إيقاف جميع المعاملات المالية فورًا بعد قفل البطاقة. بإمكانك فك القفل عن البطاقة في أي وقت لاحقا من خلال تطبيق الهاتف',
      'en':
          'Are you sure you would like to Block this card? All financial transactions will be stopped immediately after blocking this card. You can unblock the card at any time through the application',
    },
    'ec1qwqbv': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    'fn8r00q7': {
      'ar': 'لا',
      'en': 'No',
    },
  },
  // cancel_card_component
  {
    'igtr41hr': {
      'ar':
          'هل أنت متأكد من أنك تريد إلغاء هذه البطاقة؟ سيتم إلغاء البطاقة بشكل دائم.',
      'en':
          'Are you sure you want to cancel this card? The card will be permanently cancelled.',
    },
    '4hr9f17o': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    'jfxi1b37': {
      'ar': 'لا',
      'en': 'No',
    },
  },
  // home_page_list_transaction_component
  {
    'nsavudjo': {
      'ar': 'شحن رصيد موبايل',
      'en': 'Mobile top-up',
    },
    'ay52o26k': {
      'ar': '2921532903099',
      'en': '2921532903099',
    },
    'ca2wtsdn': {
      'ar': 'Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
    '3xp6eido': {
      'ar': 'شحن رصيد موبايل',
      'en': 'Mobile top-up',
    },
    'jgngh5xx': {
      'ar': '2921532903099',
      'en': '2921532903099',
    },
    'ekp45l3e': {
      'ar': 'Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
    'qrbttcv9': {
      'ar': 'شحن رصيد موبايل',
      'en': 'Mobile top-up',
    },
    'gsajqi1l': {
      'ar': '2921532903099',
      'en': '2921532903099',
    },
    'hiemgsju': {
      'ar': 'Jun, 8, 2024',
      'en': 'Jun, 8, 2024',
    },
  },
  // enable_biometric_component
  {
    'svta24mk': {
      'ar':
          'تفعيل البصمة غير آمن إذا كان جهازك يحتوي على عدة بصمات. عند تفعيل البصمة يمكن استخدامها كبديل لكلمة المرور عند تسجيل الدخول و بديل للرمز السري المستخدم لتأكيد الحركات المالية.',
      'en':
          'This can be risky if your device has multiple Touch IDs. Touch ID will replace your password on the login screen and will also replace the 4-digit PIN required for authorizing financial transactions',
    },
    '9mp6qdlx': {
      'ar': 'تفعيل',
      'en': 'Activate',
    },
    'vewvjana': {
      'ar': 'إغلاق',
      'en': 'Close',
    },
  },
  // disable_biometric_component
  {
    'tkt5qtwo': {
      'ar': 'هل أنت متأكد أنك تريد تعطيل بصمة الاصبع؟',
      'en': 'Are you sure you want to disable fingerprint ID?',
    },
    'hoxhpkmm': {
      'ar': 'نعم',
      'en': 'Yes',
    },
    'hmwblstk': {
      'ar': 'لا',
      'en': 'No',
    },
  },
  // otp_session_expired_component
  {
    '7qtlctjf': {
      'ar': 'Session expired, please enter the OTP again',
      'en': 'Session expired, please enter the OTP again',
    },
    'weybzccb': {
      'ar': 'موافق',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '2noqmglu': {
      'ar': '',
      'en': '',
    },
    'ioukah6f': {
      'ar': '',
      'en': '',
    },
    'pg4entmg': {
      'ar': '',
      'en': '',
    },
    'qwiw8hej': {
      'ar': '',
      'en': '',
    },
    'o3yh893o': {
      'ar': '',
      'en': '',
    },
    'ty9by898': {
      'ar': '',
      'en': '',
    },
    'pd649ubu': {
      'ar': '',
      'en': '',
    },
    '6zu6vftk': {
      'ar': '',
      'en': '',
    },
    '4r0yvd7k': {
      'ar': '',
      'en': '',
    },
    'i1vxq9nr': {
      'ar': '',
      'en': '',
    },
    '1e7lwsqv': {
      'ar': '',
      'en': '',
    },
    '7dg6vj55': {
      'ar': '',
      'en': '',
    },
    'pcdu4n6b': {
      'ar': '',
      'en': '',
    },
    's8h951l1': {
      'ar': '',
      'en': '',
    },
    'qoclz1wf': {
      'ar': '',
      'en': '',
    },
    'n8e4v5x4': {
      'ar': '',
      'en': '',
    },
    '1ztfpnph': {
      'ar': '',
      'en': '',
    },
    'eooy1o2h': {
      'ar': '',
      'en': '',
    },
    'x3r4zzqp': {
      'ar': '',
      'en': '',
    },
    'dwxtwx6b': {
      'ar': '',
      'en': '',
    },
    'vti7b1yt': {
      'ar': '',
      'en': '',
    },
    '2ubzqha0': {
      'ar': '',
      'en': '',
    },
    'mck9agei': {
      'ar': '',
      'en': '',
    },
    'i7oxhs1v': {
      'ar': '',
      'en': '',
    },
    'ayt0f7zl': {
      'ar': '',
      'en': '',
    },
    'qjozj8mx': {
      'ar': '',
      'en': '',
    },
    'pz8ljhhj': {
      'ar': '',
      'en': '',
    },
    'a8n8k006': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
