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
      'en': '',
    },
    '1ib07wec': {
      'ar': 'Hello World',
      'en': '',
    },
    'v0wx94fq': {
      'ar': '\$7,630',
      'en': '',
    },
    '4hi7ozti': {
      'ar': '0149 **** ',
      'en': '',
    },
    'us0t1qpe': {
      'ar': '05/25',
      'en': '',
    },
    '4czyx03p': {
      'ar': '\$7,630',
      'en': '',
    },
    'rgpxmqoo': {
      'ar': '0149 **** ',
      'en': '',
    },
    'y9cj9076': {
      'ar': '021',
      'en': '',
    },
    'cu6j6f8g': {
      'ar': 'SECURITY\nCODE',
      'en': '',
    },
    'onhvxo49': {
      'ar': '05/25',
      'en': '',
    },
    '8w7jzo96': {
      'ar': 'VALID\nTHRU',
      'en': '',
    },
    '0dsvs6im': {
      'ar': 'الحركات',
      'en': 'Campaigns and offers',
    },
    '8xr1drdh': {
      'ar': 'عرض الكل',
      'en': '',
    },
    'mvlc1z5y': {
      'ar': 'ملفي الشخصي',
      'en': 'my personal file',
    },
    'dybj5wgt': {
      'ar': 'الإعدادات',
      'en': 'Settings',
    },
    '80d86a13': {
      'ar': 'تواصل معنا',
      'en': 'Help Center',
    },
    'nq7ri7jv': {
      'ar': 'أسعار العملات',
      'en': 'Exchange Rates',
    },
    'mcpocoa4': {
      'ar': 'تغير اللغة الى English',
      'en': 'Change the language to العربية',
    },
    'j8pno2ex': {
      'ar': 'تسجيل الخروج',
      'en': 'sign out',
    },
    '7qettrhk': {
      'ar': 'مرحبا , Basil',
      'en': 'Hello, Basil',
    },
    'hjejmmsa': {
      'ar': 'الرئيسية',
      'en': 'Main',
    },
  },
  // login
  {
    'kcjciuhj': {
      'ar': '5xxxxxxxx',
      'en': '',
    },
    'rlu297rm': {
      'ar': '',
      'en': '',
    },
    'huoga21w': {
      'ar': '+970',
      'en': '',
    },
    'aptr1z10': {
      'ar': '+970',
      'en': '',
    },
    'bx2290jy': {
      'ar': '+972',
      'en': '',
    },
    'bu04m7sg': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'wjlvy24l': {
      'ar': 'كلمة السر',
      'en': 'Password',
    },
    '3d2l5lvx': {
      'ar': 'تغير كلمة السر',
      'en': 'Change password',
    },
    'd8rj43jr': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    'q9ks8jtt': {
      'ar': 'مرحبا',
      'en': 'hello',
    },
    'nf068v0h': {
      'ar': 'من نحن',
      'en': 'About us',
    },
    '3mc67cej': {
      'ar': 'ما عندك حساب؟',
      'en': 'don\'t have an account?',
    },
    '07qpw4xc': {
      'ar': '  أنشئ حساب',
      'en': 'create account',
    },
    '6xbm4scs': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'frtzehgk': {
      'ar': '',
      'en': 'Please choose an option from the dropdown',
    },
    'e0zfluii': {
      'ar': '',
      'en': 'Field is required',
    },
    '8aj5u3ep': {
      'ar': 'ادخل كلمة مرور على الاقل من 6 احرف',
      'en': 'Please enter a password of at least 6 characters.',
    },
    'kzzt2ep3': {
      'ar': '',
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
      'en': '',
    },
    'bsofh1iq': {
      'ar': '2921532903099',
      'en': '',
    },
    'eoh7j0yp': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'd9yld9um': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'r9folfee': {
      'ar': '2921532903099',
      'en': '',
    },
    'iasjw9mk': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'r3nuqzac': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'cjdj0uoo': {
      'ar': '2921532903099',
      'en': '',
    },
    'uyq84yuq': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    '3bmvxbn4': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'jpjjjv5g': {
      'ar': '2921532903099',
      'en': '',
    },
    'zytruqc6': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'sli1lgre': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'zal27fs1': {
      'ar': '2921532903099',
      'en': '',
    },
    'esvddhsh': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'bs41kbym': {
      'ar': 'إجمالي الرصيد ',
      'en': '',
    },
    '63jl6fbe': {
      'ar': '08/12/2024 -  08/12/2024 ',
      'en': '',
    },
    '1dz4sx9s': {
      'ar': 'الحركات',
      'en': '',
    },
  },
  // notification_page
  {
    'n6fn9m9k': {
      'ar': 'الإشعارات',
      'en': '',
    },
    'b9tcv9w6': {
      'ar': 'بلشت تحوش لسفرة العيد ؟',
      'en': '',
    },
    'fd8j6p3a': {
      'ar': ' Jun, 8, 2024',
      'en': '',
    },
    'b1r7vqyn': {
      'ar': ' ',
      'en': '',
    },
    '92f23h94': {
      'ar':
          'افتح حساب تحوش ونذكر انه صا ر اسهل معا  وجهز لمصاريف السفر ! تمتع بالسحب والايداع وإادارة الاصاريف بأفضل طريقة',
      'en': '',
    },
    'zks01jx1': {
      'ar': ' مبارك، تم تفعيل بطاقتك رقم 4356**',
      'en': '',
    },
    'ckpq355p': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    '4ouibfps': {
      'ar': ' ',
      'en': '',
    },
    'w5sls8lu': {
      'ar':
          ' مبارك، تم تفعيل بطاقتك رقم 4356 **** \nاستمتع بخدمات نيو كاش قد ما بدك',
      'en': '',
    },
    '89vwnktl': {
      'ar': 'Home',
      'en': '',
    },
  },
  // register_page_1
  {
    'qv3v9r6a': {
      'ar': 'محفظتك\n  بجيبتك ',
      'en': '',
    },
    'xij3ettk': {
      'ar': 'إنشاء حساب ',
      'en': '',
    },
    'tdq0z7re': {
      'ar': 'عندك حساب ؟ سجل دخولك الآن',
      'en': '',
    },
    '1t39y3md': {
      'ar': 'Home',
      'en': '',
    },
  },
  // phone_number
  {
    '621g8xg0': {
      'ar': 'رقم تلفونك ',
      'en': '',
    },
    '5n57g2jq': {
      'ar': 'راح  يوصلك رمز تحقق على نفس الرقم , الرجاء التأكد وإدخال الرمز',
      'en': '',
    },
    'xoyvv7gu': {
      'ar': '5xxxxxxxx',
      'en': '',
    },
    'jffuvm1s': {
      'ar': '',
      'en': '',
    },
    'dk6o1l81': {
      'ar': '+970',
      'en': '',
    },
    'k890nwac': {
      'ar': '+970',
      'en': '',
    },
    'gangnkno': {
      'ar': '+972',
      'en': '',
    },
    'c040sz0r': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'nuxhazj7': {
      'ar': 'الحقل مطلوب',
      'en': '',
    },
    '20xg27or': {
      'ar': 'لا يمكن ان يكون الرقم اقل من 8',
      'en': '',
    },
    '2imdgl09': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ffd17gua': {
      'ar': 'التالي',
      'en': 'sign in',
    },
    '1f51n1l6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_does_not_exist_flow
  {
    'cvcns9e8': {
      'ar': 'تأكيد رقم التلفون',
      'en': '',
    },
    'qspd8ikt': {
      'ar': 'بعتنالك رمز تحقق على تليفونك  رقم',
      'en': '',
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
      'ar': ' ممكن تشوف مسجاتك  وتدخل الرمز؟',
      'en': '',
    },
    'qzqkzusk': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    '1xcx3ocl': {
      'ar': 'Home',
      'en': '',
    },
  },
  // card_details
  {
    'a0y0st45': {
      'ar': 'رصيد البطاقة ',
      'en': '',
    },
    'dunv88wl': {
      'ar': 'ILS',
      'en': '',
    },
    '0qulq80w': {
      'ar': ' 0.00',
      'en': '',
    },
    'kbbahzti': {
      'ar': 'الحساب الاساسي ',
      'en': '',
    },
    '7uzfifl2': {
      'ar': 'BASIL ASSI',
      'en': '',
    },
    '7w84f73c': {
      'ar': '4012 5421 2322 6521',
      'en': '',
    },
    'jkurh3hj': {
      'ar': '021',
      'en': '',
    },
    'e9nhu5rg': {
      'ar': 'SECURITY\nCODE',
      'en': '',
    },
    'pi80izf5': {
      'ar': '05/25',
      'en': '',
    },
    'oc5g9fy5': {
      'ar': 'VALID\nTHRU',
      'en': '',
    },
    '7wf328ns': {
      'ar': 'عرض الرمز \nالسري',
      'en': '',
    },
    'bmdetv0i': {
      'ar': 'عرض حركات\n البطاقة',
      'en': '',
    },
    'v2p9jewd': {
      'ar': 'قفل\nالبطاقة',
      'en': '',
    },
    '9xarkmih': {
      'ar': 'فك قفل\nالبطاقة',
      'en': '',
    },
    'pbrqcali': {
      'ar': 'تفاصيل البطاقة',
      'en': '',
    },
    'v04sy0uk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // user_profile
  {
    '897rfc7a': {
      'ar': 'ملفي الشخصي',
      'en': '',
    },
    'bp7pe903': {
      'ar': 'اسم المستخدم',
      'en': '',
    },
    'mgmvykns': {
      'ar': 'Basil',
      'en': '',
    },
    'dbqmodex': {
      'ar': 'رقم الموبايل',
      'en': '',
    },
    'ivhvtzdk': {
      'ar': '0569852',
      'en': '',
    },
    'ag1hrdqa': {
      'ar': 'الإيميل',
      'en': '',
    },
    'hpokmkgb': {
      'ar': 'basel@blockbuilders.ps ',
      'en': '',
    },
    'g3fbaqeh': {
      'ar': 'تم التحقق  ',
      'en': '',
    },
    'uemhjyul': {
      'ar': 'التحقق من\n البريد الإلكتروني',
      'en': '',
    },
    'fx3qydw8': {
      'ar': 'Home',
      'en': 'offers',
    },
  },
  // settings_page
  {
    'gj4fnvct': {
      'ar': 'الإعدادات',
      'en': '',
    },
    'ckdkpn5f': {
      'ar': 'بصمة التعريف',
      'en': '',
    },
    '5035sg3i': {
      'ar': 'نسيت الرمز السري',
      'en': '',
    },
    'c1m639px': {
      'ar': 'Home',
      'en': '',
    },
  },
  // transaction_details_page
  {
    'm9553mti': {
      'ar': 'تفاصيل الحركة',
      'en': '',
    },
    'mye4mdo1': {
      'ar': 'رقم البطاقة',
      'en': '',
    },
    'wfnpkxto': {
      'ar': '2921 5329 0309 9412',
      'en': '',
    },
    'jbdriiyr': {
      'ar': 'رمز الحركة',
      'en': '',
    },
    'k3cfquna': {
      'ar': '2921532903099',
      'en': '',
    },
    '6rh91bf4': {
      'ar': 'حالة الطلب',
      'en': '',
    },
    'hvz0m2gy': {
      'ar': 'تم القبول',
      'en': '',
    },
    'msl1dt85': {
      'ar': 'نوع الحركة',
      'en': '',
    },
    'y5yti1b1': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '8nhwfwiv': {
      'ar': 'المفوتر',
      'en': '',
    },
    'bpwgutti': {
      'ar': 'جّوال',
      'en': '',
    },
    'uo770vgi': {
      'ar': 'التاريخ ',
      'en': '',
    },
    'qfdp2l9l': {
      'ar': '06/09/2024',
      'en': '',
    },
    'rgp0qex3': {
      'ar': 'الوقت',
      'en': '',
    },
    'g6ujez0v': {
      'ar': ' 04:54  PM',
      'en': '',
    },
    'vgu0asxr': {
      'ar': 'رقم الوبايل',
      'en': '',
    },
    'j3f6mua1': {
      'ar': '00970598251350',
      'en': '',
    },
    'ot0eesux': {
      'ar': 'قيمة الحركة',
      'en': '',
    },
    '222b1j1b': {
      'ar': '50 ILS',
      'en': '',
    },
    '49lig4vu': {
      'ar': 'الرسوم',
      'en': '',
    },
    'mtbpjg1l': {
      'ar': '0 ILS',
      'en': '',
    },
    'rk80713u': {
      'ar': 'المجموع',
      'en': '',
    },
    'z3i6h5zp': {
      'ar': '50 ILS',
      'en': '',
    },
    '6jyekuwf': {
      'ar': 'تنزيل الصورة على الجهاز؟',
      'en': '',
    },
    'j5y93gae': {
      'ar': 'Home',
      'en': '',
    },
  },
  // view_pin_code_page
  {
    '2o6k2tg3': {
      'ar': 'الرمز السري الخاص بك هو ',
      'en': '',
    },
    'm38fpv1o': {
      'ar': 'هذا هو الرمز السري الخاص بك ',
      'en': '',
    },
    'lowepglo': {
      'ar': 'سيختفي الرقم خلال ',
      'en': '',
    },
    'dxq8c0aa': {
      'ar': '   ثانية ',
      'en': '',
    },
    'dc8glgg0': {
      'ar': 'تم',
      'en': '',
    },
    'tvzv3lwv': {
      'ar': 'Home',
      'en': '',
    },
  },
  // pin_code
  {
    '7b6ufiar': {
      'ar': '3',
      'en': '',
    },
    '9c7pp1l6': {
      'ar': '2',
      'en': '',
    },
    's1pboej2': {
      'ar': '1',
      'en': '',
    },
    'zkjy0s3s': {
      'ar': '6',
      'en': '',
    },
    'hoh686ue': {
      'ar': '5',
      'en': '',
    },
    '4vu9gcdy': {
      'ar': '4',
      'en': '',
    },
    'ae9m7z46': {
      'ar': '9',
      'en': '',
    },
    'bldx0dbs': {
      'ar': '8',
      'en': '',
    },
    'gbw0k1xf': {
      'ar': '7',
      'en': '',
    },
    'qggri9hp': {
      'ar': '',
      'en': '',
    },
    '6umc4o4u': {
      'ar': '0',
      'en': '',
    },
    '66whvcgs': {
      'ar': '',
      'en': '',
    },
    'ala30aup': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_01
  {
    'cui94pxw': {
      'ar': 'اسمك',
      'en': '',
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
      'ar': ' اسمك بالعربي',
      'en': '',
    },
    '8vcfnfcx': {
      'ar': 'اسمك الأول',
      'en': '',
    },
    'cqn3fqjj': {
      'ar': 'اسم الأب',
      'en': '',
    },
    'zzuwdsgd': {
      'ar': 'اسم الجد',
      'en': '',
    },
    'gwx7jr2c': {
      'ar': 'اسم عائلتك',
      'en': '',
    },
    '1xvldsbc': {
      'ar': ' اسمك بالانجليزي',
      'en': '',
    },
    '2d8uxzee': {
      'ar': 'اسمك الأول',
      'en': '',
    },
    '1csj5dyy': {
      'ar': 'اسم الأب',
      'en': '',
    },
    '2vcdhosp': {
      'ar': 'اسم الجد',
      'en': '',
    },
    'z3b9hdk2': {
      'ar': 'اسم عائلتك',
      'en': '',
    },
    'e3s0b90l': {
      'ar': 'التالي',
      'en': '',
    },
    'xzymsnvc': {
      'ar': 'Field is required',
      'en': '',
    },
    'x3v0m7qw': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'szccmsm4': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'abig6z1g': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'akl1d9zd': {
      'ar': 'Field is required',
      'en': '',
    },
    'eizatu2k': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tfwtgi9v': {
      'ar': 'Field is required',
      'en': '',
    },
    'f6mfyluo': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'y7vkhixh': {
      'ar': 'Field is required',
      'en': '',
    },
    '8vucega1': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xmu2qdk6': {
      'ar': 'Field is required',
      'en': '',
    },
    'k6h66wjo': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    't4qqigtg': {
      'ar': 'Field is required',
      'en': '',
    },
    'xo316gb5': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5hpn7ngb': {
      'ar': 'Field is required',
      'en': '',
    },
    '6ln7r1es': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jftsmhqt': {
      'ar': 'Home',
      'en': '',
    },
  },
  // qr_code_page
  {
    'n76z39u6': {
      'ar': 'الدفع ب QR',
      'en': '',
    },
    'of48qc4f': {
      'ar': 'امسح لدفع ',
      'en': 'My QR code',
    },
    'rao1ms25': {
      'ar': 'إلغاء',
      'en': 'Cancel',
    },
    'faufozi7': {
      'ar': 'QR Code  الخاص بي',
      'en': '',
    },
    'q065sddi': {
      'ar': 'الدفع ب QR',
      'en': '',
    },
  },
  // enter_id_page
  {
    'je18929v': {
      'ar': '  الهوية الشخصية',
      'en': '',
    },
    'lcpbbpxk': {
      'ar': 'الرجاء اختيار نوع وثيقتك  الشخصية ',
      'en': '',
    },
    'gx1gtqed': {
      'ar': 'الهوية  الفلسطينية',
      'en': '',
    },
    'bddgybnm': {
      'ar': 'هوية القدس',
      'en': '',
    },
    'olbvbygi': {
      'ar': 'اختيار نوع الهوية ',
      'en': '',
    },
    'f86i9p9t': {
      'ar': 'Search for an item...',
      'en': '',
    },
    '9hnsedy0': {
      'ar': 'الرجاء ادخال رقم الهوية بشكل صحيح',
      'en': '',
    },
    'c42bc1ay': {
      'ar': 'ادخال رقم الهوية',
      'en': '',
    },
    'avin42p9': {
      'ar': 'التالي',
      'en': '',
    },
    '4vmzjxq5': {
      'ar': 'تأكد إنه الإنترنت عندك شغال على التلفون , \nوحاول مرة ثانية',
      'en':
          'Make sure you have internet working on your phone , And try again.',
    },
    'n5zjlx3a': {
      'ar': 'العودة الى الصفحة الرئيسية\n',
      'en': '',
    },
    'o8vsd9cs': {
      'ar': 'رقم الهوية لا يمكن ان يكون فارغ',
      'en': '',
    },
    '8e3rsbjp': {
      'ar': 'رقم الهوية اقل من 7  ارقام',
      'en': '',
    },
    'w3k77fqk': {
      'ar': 'رقم الهوية اكبر من عشرة ارقام',
      'en': '',
    },
    '9tynz1pf': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '20mmouhk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_exist_flow
  {
    'yz1z1apd': {
      'ar': 'تأكيد رقم التلفون',
      'en': '',
    },
    'wz31dp5u': {
      'ar': 'بعتنالك رمز تحقق على تليفونك  رقم',
      'en': '',
    },
    '5xs4gjqu': {
      'ar': '\n',
      'en': '',
    },
    'jehqu9vd': {
      'ar': '\n',
      'en': '',
    },
    'x2iqegi0': {
      'ar': ' ممكن تشوف مسجاتك  وتدخل الرمز؟',
      'en': '',
    },
    '5axqffrl': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    'emqmmcve': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_02
  {
    '23yolomv': {
      'ar': 'معلوماتك الشخصية',
      'en': '',
    },
    '213i0qjp': {
      'ar': '7',
      'en': '',
    },
    '808vqhu1': {
      'ar': '6',
      'en': '',
    },
    's74r4pq0': {
      'ar': '5',
      'en': '',
    },
    'eiuy8p86': {
      'ar': '4',
      'en': '',
    },
    'xk8j1fbf': {
      'ar': '3',
      'en': '',
    },
    'pz0aym10': {
      'ar': '2',
      'en': '',
    },
    'vohah3vr': {
      'ar': '1',
      'en': '',
    },
    'j1orf7vl': {
      'ar': ' تاريخ ميلادك',
      'en': '',
    },
    'l0r5ylqb': {
      'ar': ' مكان الميلاد ',
      'en': '',
    },
    'ly33f7ka': {
      'ar': '',
      'en': '',
    },
    'ha0dpmjk': {
      'ar': 'المدينة',
      'en': '',
    },
    'zsteqakr': {
      'ar': 'Search for an item...',
      'en': '',
    },
    '1gqz1vk4': {
      'ar': 'اسم الأم باللغة الانجليزية',
      'en': '',
    },
    'a8pd7lhp': {
      'ar': 'اسم الأم',
      'en': '',
    },
    '87900l1f': {
      'ar': 'الجنس',
      'en': '',
    },
    'ogfo2bga': {
      'ar': 'ذكر',
      'en': '',
    },
    '5bjewnop': {
      'ar': 'أنثى',
      'en': '',
    },
    'k1p2swil': {
      'ar': 'الجنس',
      'en': '',
    },
    'iukrrbu7': {
      'ar': 'Search for an item...',
      'en': '',
    },
    '320f0ies': {
      'ar': 'الجنسية',
      'en': '',
    },
    'hnomrkxo': {
      'ar': 'فلسطيني',
      'en': '',
    },
    '0j9r8p17': {
      'ar': '',
      'en': '',
    },
    '6xgs3e3k': {
      'ar': 'الجنسية',
      'en': '',
    },
    '7shvqcy3': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'dp2tcpmy': {
      'ar': 'التالي',
      'en': '',
    },
    'm9cfiyyb': {
      'ar': 'الحقل مطلوب',
      'en': '',
    },
    'd9xrc6bn': {
      'ar': 'اسم الام يجب ان يكون باللغة الانجليزية',
      'en': '',
    },
    '90so78ix': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'd8ktttak': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_07
  {
    'uiaxgfy6': {
      'ar': 'أنشئ حسابك',
      'en': '',
    },
    'ffavvyxv': {
      'ar': '7',
      'en': '',
    },
    'fssmlfqt': {
      'ar': '6',
      'en': '',
    },
    'w6dpnxja': {
      'ar': '5',
      'en': '',
    },
    'atecu50y': {
      'ar': '4',
      'en': '',
    },
    'utakl669': {
      'ar': '3',
      'en': '',
    },
    '8apop96s': {
      'ar': '2',
      'en': '',
    },
    'uvw9emg0': {
      'ar': '1',
      'en': '',
    },
    'm7w4y74p': {
      'ar': 'دخل باقي المعلومات',
      'en': '',
    },
    'jr2dayzi': {
      'ar': 'إيميلك هو :',
      'en': '',
    },
    '1jb5vlr1': {
      'ar': 'بمجرد إنشاء حسابك سنرسل لك رابط لتأكيد الايميل',
      'en': '',
    },
    'futstmfr': {
      'ar': 'كلمة المرور',
      'en': '',
    },
    'af8ji769': {
      'ar': 'تأكيد كلمة المرور',
      'en': '',
    },
    's0eeyypj': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف ويحتوي على حرف واحد كبير، حرف واحد صغير، ورقم واحد',
      'en':
          'The password must be at least 7 characters long and include one uppercase letter, one lowercase letter, and one number.',
    },
    'wjbn27v2': {
      'ar': 'دخل الرمز السري  مكون من اربع خانات',
      'en': '',
    },
    'jixxx7a7': {
      'ar':
          'الرمز المكون من 4 أرقام سيستخدم لإتمام الحركات المالية من خلال التطبيق',
      'en':
          '4-digit PIN will be used to authorize financial transactions within the app',
    },
    't2k8mdj6': {
      'ar': 'استخدامك لنيو كاش يعني انك \nموافق على  ',
      'en': '',
    },
    'xzwvglof': {
      'ar': 'الشروط والأحكام',
      'en': '',
    },
    'ype1jx4m': {
      'ar': 'تسجيل',
      'en': '',
    },
    '7zhaj7vf': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_04
  {
    'nl00v5wv': {
      'ar': 'عنوانك',
      'en': '',
    },
    '0ayded09': {
      'ar': '7',
      'en': '',
    },
    'fcu1y098': {
      'ar': '6',
      'en': '',
    },
    'jsjuum27': {
      'ar': '5',
      'en': '',
    },
    'nkl1lwis': {
      'ar': '4',
      'en': '',
    },
    '7qeq06zo': {
      'ar': '3',
      'en': '',
    },
    'mlxvov7q': {
      'ar': '2',
      'en': '',
    },
    'wi7o68lx': {
      'ar': '1',
      'en': '',
    },
    'p14tzvud': {
      'ar': 'اختار المدينة',
      'en': '',
    },
    'dowog7hd': {
      'ar': 'رام الله',
      'en': '',
    },
    'datw7s90': {
      'ar': 'نابلس',
      'en': '',
    },
    'hpoynkc2': {
      'ar': 'طولكرم',
      'en': '',
    },
    'ypyuuid2': {
      'ar': 'الخليل',
      'en': '',
    },
    'yl24v67s': {
      'ar': 'أنثى',
      'en': '',
    },
    'suedt6vn': {
      'ar': 'المدينة',
      'en': '',
    },
    '04g3os27': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'nixpiac4': {
      'ar': 'التجمع السكني',
      'en': '',
    },
    'hqo3yxs0': {
      'ar': 'رام الله',
      'en': '',
    },
    'sdio1sit': {
      'ar': 'نابلس',
      'en': '',
    },
    'tj7muqn7': {
      'ar': 'طولكرم',
      'en': '',
    },
    'g4175wca': {
      'ar': 'الخليل',
      'en': '',
    },
    'ywspq09j': {
      'ar': 'أنثى',
      'en': '',
    },
    'vi5yluyt': {
      'ar': 'التجمع السكني',
      'en': '',
    },
    'ica2i3n1': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'yfoglq5k': {
      'ar': 'العنوان',
      'en': '',
    },
    '8shompx7': {
      'ar': '',
      'en': '',
    },
    'x8wk3106': {
      'ar': 'موقعك: الحي , الشارع  ',
      'en': '',
    },
    'vq6zsk0n': {
      'ar': 'التالي',
      'en': '',
    },
    'nrngf3v4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // send_money_to_friend
  {
    'jbiuuahw': {
      'ar': '  إرسال لصديق ',
      'en': '',
    },
    '20m44xdy': {
      'ar': '0149 ',
      'en': '',
    },
    'axen44ml': {
      'ar': '\$7,630',
      'en': '',
    },
    '114q9k4z': {
      'ar': 'Mastercard Ending in 4021',
      'en': '',
    },
    'xgm3exrb': {
      'ar': '\$425.24',
      'en': '',
    },
    'd75eqmgj': {
      'ar': '5xxxxxxxx',
      'en': '',
    },
    'v1u8v2hp': {
      'ar': '',
      'en': '',
    },
    'sdfxter1': {
      'ar': '+970',
      'en': '',
    },
    '1uytg858': {
      'ar': '+972 ',
      'en': '',
    },
    'uf70ikbn': {
      'ar': '+970',
      'en': '',
    },
    '4soo0d3t': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'ynmq9egf': {
      'ar': 'القيمة',
      'en': '',
    },
    '6x2d07fd': {
      'ar': '',
      'en': '',
    },
    'fhwcji5k': {
      'ar': 'الهدف من التحويل',
      'en': '',
    },
    'jh7ruwuj': {
      'ar': '',
      'en': '',
    },
    'dr4519ce': {
      'ar': 'التالي',
      'en': '',
    },
    'hlwqlc5j': {
      'ar': 'إرسال لصديق',
      'en': '',
    },
  },
  // transfer_money_between_cards
  {
    'mhiy4xcu': {
      'ar': 'تحويل بين البطاقات',
      'en': '',
    },
    'gsq7zcfk': {
      'ar': 'من حساب:',
      'en': '',
    },
    'emfwruah': {
      'ar': '0149 ',
      'en': '',
    },
    '2bhoxaxr': {
      'ar': '\$7,630',
      'en': '',
    },
    'mrr7gjmr': {
      'ar': 'Mastercard Ending in 4021',
      'en': '',
    },
    'xzb0rw26': {
      'ar': '\$425.24',
      'en': '',
    },
    'tvjgxrqx': {
      'ar': 'الى حساب:',
      'en': '',
    },
    'go2zpmye': {
      'ar': '0149 ',
      'en': '',
    },
    'zg0gj56z': {
      'ar': '\$7,630',
      'en': '',
    },
    'tydwr8ll': {
      'ar': 'Mastercard Ending in 4021',
      'en': '',
    },
    'x9qkdujl': {
      'ar': '\$425.24',
      'en': '',
    },
    'r8hxgkfb': {
      'ar': 'القيمة',
      'en': '',
    },
    '5zdegweg': {
      'ar': '0.00',
      'en': '',
    },
    '1r5wtr3t': {
      'ar': 'الناتج',
      'en': '',
    },
    'nknpry4t': {
      'ar': '',
      'en': '',
    },
    '9d7vx8kw': {
      'ar': '0.00',
      'en': '',
    },
    'g8ub0m5g': {
      'ar': 'التالي',
      'en': '',
    },
    's4vsfq3u': {
      'ar': 'Home',
      'en': '',
    },
  },
  // confirm_transfer_between_cards
  {
    'scgd2yef': {
      'ar': 'تأكيد التحويل بين الحسابات',
      'en': '',
    },
    '9qo8gc6l': {
      'ar': 'تحويل من حساب ',
      'en': '',
    },
    'glohmjwh': {
      'ar': 'Mastercard Ending in 4021',
      'en': '',
    },
    'dzynwqi4': {
      'ar': '\$425.24',
      'en': '',
    },
    '6hukh2tg': {
      'ar': 'المبلغ: ',
      'en': '',
    },
    'my0bpgqe': {
      'ar': '\$100',
      'en': '',
    },
    'p5301wne': {
      'ar': 'الباقي: ',
      'en': '',
    },
    'x8q9zv2v': {
      'ar': '\$325.24',
      'en': '',
    },
    'bdn0hzbv': {
      'ar': 'تحويل الى حساب  ',
      'en': '',
    },
    '6915ed9m': {
      'ar': 'Mastercard Ending in 4123',
      'en': '',
    },
    '7086kl7y': {
      'ar': 'ILS 4205.29',
      'en': '',
    },
    'of0t09zx': {
      'ar': 'المبلغ: ',
      'en': '',
    },
    '0wo54mur': {
      'ar': 'ILS 4205.29',
      'en': '',
    },
    '2theifrp': {
      'ar': 'الناتج',
      'en': '',
    },
    've6j84mu': {
      'ar': 'ILS 4565.29',
      'en': '',
    },
    'nekoz6a2': {
      'ar': 'سعر الصرف',
      'en': '',
    },
    'ef295384': {
      'ar': 'ILS 3.72 = \$1',
      'en': '',
    },
    '9lqhcuai': {
      'ar': 'تأكيد ',
      'en': '',
    },
    'kvlrhd8q': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_03
  {
    'bqk6hgnw': {
      'ar': 'معلوماتك الشخصية',
      'en': '',
    },
    'q7ve0j8x': {
      'ar': '7',
      'en': '',
    },
    'ewexqkqz': {
      'ar': '6',
      'en': '',
    },
    '9dytv4p0': {
      'ar': '5',
      'en': '',
    },
    'xurogjlo': {
      'ar': '4',
      'en': '',
    },
    'jqv5l81n': {
      'ar': '3',
      'en': '',
    },
    'sdeo1sm7': {
      'ar': '2',
      'en': '',
    },
    '9ftbo6mx': {
      'ar': '1',
      'en': '',
    },
    'uroujvhf': {
      'ar': 'هل أنت مقيم في البلد؟',
      'en': 'Are you a resident of the country?',
    },
    'afjbsqja': {
      'ar': 'نعم',
      'en': '',
    },
    '6o1swgu5': {
      'ar': 'لا',
      'en': '',
    },
    'btro9yps': {
      'ar': 'مقيم في البلد؟',
      'en': '',
    },
    'w8fc26vi': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'tv5scspx': {
      'ar': 'هل عندك جواز أمريكي؟',
      'en': 'Do you have an American passport?',
    },
    'rbncbqss': {
      'ar': 'نعم',
      'en': '',
    },
    't62zgocx': {
      'ar': 'لا',
      'en': '',
    },
    '8xxpotti': {
      'ar': 'عندك جواز سفر أمريكي؟',
      'en': '',
    },
    '26jpolzb': {
      'ar': 'Search for an item...',
      'en': '',
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
      'en': '',
    },
    '5i8vcalm': {
      'ar': 'مكان العمل',
      'en': '',
    },
    '3wiufgi9': {
      'ar': '',
      'en': '',
    },
    '825ld0i8': {
      'ar': 'مكان العمل',
      'en': '',
    },
    'bvo31zkk': {
      'ar': 'الدخل الشهري ',
      'en': '',
    },
    '5w21n1s1': {
      'ar': '',
      'en': '',
    },
    'cki60vlr': {
      'ar': 'الدخل الشهري بالدولار',
      'en': '',
    },
    '4bmwbw9n': {
      'ar': 'التالي',
      'en': '',
    },
    'fg9qljcu': {
      'ar': 'الحقل مطلوب',
      'en': '',
    },
    'rqwfk1m3': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'r8ss9mpo': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'my2ri9k8': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '8693qu5v': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'waw6vcko': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5g4y5rge': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_05
  {
    'tlsedmig': {
      'ar': 'طبيعة حسابك',
      'en': '',
    },
    '1ctislht': {
      'ar': '7',
      'en': '',
    },
    'u6yl7pi5': {
      'ar': '6',
      'en': '',
    },
    '1ulxndzu': {
      'ar': '5',
      'en': '',
    },
    'dhkwr4c7': {
      'ar': '4',
      'en': '',
    },
    '7d4pdf2s': {
      'ar': '3',
      'en': '',
    },
    'idysyybb': {
      'ar': '2',
      'en': '',
    },
    'j0fegxwu': {
      'ar': '1',
      'en': '',
    },
    'gdk2t82t': {
      'ar': 'هل أنت المستفيد الحقيقي من الحساب؟',
      'en': '',
    },
    'n5ifl7pf': {
      'ar': 'نعم',
      'en': '',
    },
    'do0uczj5': {
      'ar': 'لا',
      'en': '',
    },
    '0t8zizvu': {
      'ar': 'هل أنت معرض سياسيا',
      'en': '',
    },
    'bdv4ojpq': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'igttbcem': {
      'ar': ' اسم المستفيد الحقيقي  ',
      'en': '',
    },
    '1vatub9u': {
      'ar': '',
      'en': '',
    },
    'gdczccov': {
      'ar': 'اسم المستفيد الحقيقي   ',
      'en': '',
    },
    'plzrglhj': {
      'ar': ' طبيعة العلاقة ',
      'en': '',
    },
    'b6ncsijs': {
      'ar': '',
      'en': '',
    },
    'kqevx2de': {
      'ar': 'مثال : أب, ابن , أخ',
      'en': '',
    },
    's0hgt3cz': {
      'ar': 'التالي',
      'en': '',
    },
    'pjy8nseh': {
      'ar': 'Home',
      'en': '',
    },
  },
  // DetailsReceipt
  {
    'rlkgl0jb': {
      'ar': 'تفاصيل الحوالة',
      'en': '',
    },
    'gwvb64zo': {
      'ar': 'المبلغ المراد تحويله',
      'en': '',
    },
    'l13k1m3t': {
      'ar': '\$25,250',
      'en': '',
    },
    '6ghsqz1c': {
      'ar': 'الرقم :  ',
      'en': '',
    },
    '5tjyfmxy': {
      'ar': '056982453',
      'en': '',
    },
    'jlnohcyj': {
      'ar': 'رقم البطاقة :  ',
      'en': '',
    },
    '32nits09': {
      'ar': '5201',
      'en': '',
    },
    'tskvpav0': {
      'ar': 'الهدف من التحويل :  ',
      'en': '',
    },
    '06feclzd': {
      'ar': 'تحويل مبلغ لصديق ',
      'en': '',
    },
    'eb6zsi1i': {
      'ar': 'تأكيد',
      'en': '',
    },
    'ikp3qll2': {
      'ar': 'Home',
      'en': '',
    },
  },
  // confirm_transfer_between_friends_old
  {
    'truneh6l': {
      'ar': 'تأكيد التحويل لصديق',
      'en': '',
    },
    'o83ax2uf': {
      'ar': 'تحويل من حساب ',
      'en': '',
    },
    '5rt9xf5u': {
      'ar': '4012 5421 2322 6521',
      'en': '',
    },
    '0u697jmf': {
      'ar': '\$425.24',
      'en': '',
    },
    'sxgsnv5g': {
      'ar': 'رقم الهاتف: ',
      'en': '',
    },
    'dfulps16': {
      'ar': '0569718347',
      'en': '',
    },
    'n9vdl0hl': {
      'ar': 'المبلغ: ',
      'en': '',
    },
    'a0x5ttbz': {
      'ar': '\$100',
      'en': '',
    },
    'u9kq7zz8': {
      'ar': 'الباقي: ',
      'en': '',
    },
    'qx08q154': {
      'ar': '\$325.24',
      'en': '',
    },
    '4qitr4j0': {
      'ar': 'تحويل الى حساب  ',
      'en': '',
    },
    'u37rv44l': {
      'ar': 'Mastercard Ending in 4123',
      'en': '',
    },
    '5sg1xdr6': {
      'ar': 'المبلغ: ',
      'en': '',
    },
    'glywilo3': {
      'ar': 'ILS 4205.29',
      'en': '',
    },
    'qk31ay10': {
      'ar': 'الناتج',
      'en': '',
    },
    'psm6l883': {
      'ar': 'ILS 4565.29',
      'en': '',
    },
    'k1013p9n': {
      'ar': 'سعر الصرف',
      'en': '',
    },
    '40dc3fyf': {
      'ar': 'ILS 3.72 = \$1',
      'en': '',
    },
    'g42425zj': {
      'ar': 'تأكيد ',
      'en': '',
    },
    '3bzww1bw': {
      'ar': 'Home',
      'en': '',
    },
  },
  // details_receipt_between_freineds
  {
    '557qyliz': {
      'ar': 'إشعار تحويل ',
      'en': '',
    },
    '8u5s3kdp': {
      'ar': 'من',
      'en': '',
    },
    'bp9j12y6': {
      'ar': 'محمد علي ربحي حج',
      'en': '',
    },
    'jcodl840': {
      'ar': '400 دولار أمريكي',
      'en': '',
    },
    'b4rghdc4': {
      'ar': 'إلى',
      'en': '',
    },
    'j75tx4ic': {
      'ar': 'احمد عدنان عماد خريوش',
      'en': '',
    },
    'l8prkq3a': {
      'ar': '1493.65  شيقل',
      'en': '',
    },
    'c1taeylq': {
      'ar': 'رقم هاتف المستفيد:     ',
      'en': '',
    },
    'klshmt2t': {
      'ar': '452224444444',
      'en': '',
    },
    '9yc1rnuq': {
      'ar': 'سعر التحويل    ',
      'en': '',
    },
    'uvwprbrm': {
      'ar': '0.2678',
      'en': '',
    },
    '55xtsanr': {
      'ar': 'تاريخ الحركة    ',
      'en': '',
    },
    'lr59zkft': {
      'ar': '30/07/2024',
      'en': '',
    },
    'i2amd03h': {
      'ar': 'الرقم المرجعي    ',
      'en': '',
    },
    '1bzkc9tu': {
      'ar': '985742',
      'en': '',
    },
    'a0gypbn7': {
      'ar': 'العودة إلى الصفحة الرئيسية ',
      'en': '',
    },
    'oyawx3t8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // confirm_transfer_between_friends
  {
    'd29j6etm': {
      'ar': 'تأكيد التحويل لصديق',
      'en': '',
    },
    'd2k4fk0b': {
      'ar': 'من',
      'en': '',
    },
    '25j8ynvt': {
      'ar': '4012 5421 2322 6521',
      'en': '',
    },
    'xxcnxg3a': {
      'ar': '\$725.24',
      'en': '',
    },
    'v8skjqoe': {
      'ar': 'محمد علي ربحي حج',
      'en': '',
    },
    'famtr075': {
      'ar': '400 دولار أمريكي',
      'en': '',
    },
    'ktpl4i3i': {
      'ar': 'رقم الهاتف: ',
      'en': '',
    },
    'twcdlx8x': {
      'ar': '0569718347',
      'en': '',
    },
    '9469oihh': {
      'ar': 'رصيد البطاقة بعد التحويل:',
      'en': '',
    },
    '2akp7w76': {
      'ar': '\$325.24',
      'en': '',
    },
    'xglo4xli': {
      'ar': 'إلى',
      'en': '',
    },
    'hldlatz0': {
      'ar': 'Mastercard Ending in 4123',
      'en': '',
    },
    'qhuf7lae': {
      'ar': 'احمد  خريوش',
      'en': '',
    },
    'of136owk': {
      'ar': '1493.65  شيقل',
      'en': '',
    },
    '911r0zlk': {
      'ar': 'رقم الهاتف: ',
      'en': '',
    },
    'i2wof63l': {
      'ar': '0569718347',
      'en': '',
    },
    '7yfdl2ft': {
      'ar': 'سعر التحويل    ',
      'en': '',
    },
    '7tetyknn': {
      'ar': '0.2678',
      'en': '',
    },
    '3aqgsgal': {
      'ar': 'تأكيد ',
      'en': '',
    },
    'ni2f36n1': {
      'ar': 'Home',
      'en': '',
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
      'en': '',
    },
    'mp3k2ofz': {
      'ar': 'description',
      'en': '',
    },
    '8r06p8xt': {
      'ar': 'description',
      'en': '',
    },
    'c4fvj91y': {
      'ar': 'إنشاء حساب',
      'en': '',
    },
    '6jkjfkmj': {
      'ar': 'Home',
      'en': '',
    },
  },
  // registeration_06
  {
    'sg2jhd5x': {
      'ar': 'معلوماتك الشخصية',
      'en': '',
    },
    'q0hhs5qv': {
      'ar': '7',
      'en': '',
    },
    'y1zt6sxo': {
      'ar': '6',
      'en': '',
    },
    '0bfzx3j8': {
      'ar': '5',
      'en': '',
    },
    'yppsjt4m': {
      'ar': '4',
      'en': '',
    },
    'jb44c62z': {
      'ar': '3',
      'en': '',
    },
    '187c2h58': {
      'ar': '2',
      'en': '',
    },
    'o90qaw7j': {
      'ar': '1',
      'en': '',
    },
    '2fczhuql': {
      'ar': 'هل أنت معرض سياسيا',
      'en': '',
    },
    'p6zgikvq': {
      'ar': 'نعم',
      'en': '',
    },
    '4r3n20ct': {
      'ar': 'لا',
      'en': '',
    },
    '3ths88ya': {
      'ar': 'هل أنت معرض سياسيا',
      'en': '',
    },
    'bey4z88s': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'junmb9xt': {
      'ar': 'اسم المعرض سياسيا (بالعربي)',
      'en': '',
    },
    'i3huoxzz': {
      'ar': '',
      'en': '',
    },
    'bcv9kzes': {
      'ar': 'الاسم الكامل باللغة العربية',
      'en': '',
    },
    'j4rwrsn3': {
      'ar': 'اسم المعرض سياسيا (بالانجليزي)',
      'en': '',
    },
    'jrzargp1': {
      'ar': '',
      'en': '',
    },
    'u7i1idxb': {
      'ar': 'الاسم الكامل باللغة الانجليزية',
      'en': '',
    },
    'xr0qsc4r': {
      'ar': 'صلة القرابة مع المعرض سياسيا',
      'en': '',
    },
    'dmrx6uya': {
      'ar': '',
      'en': '',
    },
    'gagxqvml': {
      'ar': 'مثال : أب, ابن , أخ',
      'en': '',
    },
    'u6bu8xfy': {
      'ar': 'المنصب للمعرض سياسيا',
      'en': '',
    },
    'pq098rwi': {
      'ar': '',
      'en': '',
    },
    'q5333xki': {
      'ar': 'المنصب للمعرض سياسيا\n',
      'en': '',
    },
    '0qtinpje': {
      'ar': 'التالي',
      'en': '',
    },
    'lboxqnwa': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'emd08oiv': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'wu1u3yv7': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'sn1ac2pa': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'eggopym5': {
      'ar': 'Field is required',
      'en': '',
    },
    'rc19rnrm': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6vimgdj6': {
      'ar': 'Field is required',
      'en': '',
    },
    '691jtwsm': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'irznv3uq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // set_password_exist_flow
  {
    'qj8edcp1': {
      'ar': 'كلمة السر',
      'en': '',
    },
    '5hbla8hx': {
      'ar': 'دخل باقي المعلومات',
      'en': '',
    },
    'm6sf741h': {
      'ar': 'إيميلك هو :',
      'en': '',
    },
    'hlg7j9ky': {
      'ar': 'بمجرد إنشاء حسابك سنرسل لك رابط لتأكيد الايميل',
      'en': '',
    },
    'pqomtgby': {
      'ar': 'كلمة السر',
      'en': '',
    },
    'b4d362pe': {
      'ar': 'تأكيد كلمة السر',
      'en': '',
    },
    'jdfo80hm': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف ويحتوي على حرف واحد كبير، حرف واحد صغير، ورقم واحد',
      'en':
          'The password must be at least 7 characters long and include one uppercase letter, one lowercase letter, and one number.',
    },
    'h8w9gxlk': {
      'ar': 'دخل الرمز السري  مكون من اربع خانات',
      'en': '',
    },
    '7accpmyt': {
      'ar':
          'الرمز المكون من 4 أرقام سيستخدم لإتمام الحركات المالية من خلال التطبيق',
      'en': '',
    },
    'zsckrnmu': {
      'ar': 'تسجيل',
      'en': '',
    },
    'iwe5m9b5': {
      'ar': 'Home',
      'en': '',
    },
  },
  // about_us
  {
    'h2geav6c': {
      'ar': 'تفاصيل عنا',
      'en': '',
    },
    'oex1z0ns': {
      'ar': 'Home',
      'en': '',
    },
  },
  // terms_and_conditions
  {
    'h9i4rbsx': {
      'ar': 'الشروط و الأحكام',
      'en': '',
    },
    '96y42bfw': {
      'ar': 'Home',
      'en': '',
    },
  },
  // id_forgot_pin
  {
    'fvzfxcqw': {
      'ar': 'نسيت كلمة المرور',
      'en': '',
    },
    'r6nzurqp': {
      'ar': 'الهوية  الفلسطينية',
      'en': '',
    },
    'jq2h3kwv': {
      'ar': 'هوية القدس',
      'en': '',
    },
    'b2r8gjy6': {
      'ar': 'اختيار نوع الهوية ',
      'en': '',
    },
    'r87qx93n': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'wuwr4gcb': {
      'ar': 'الرجاء ادخال رقم الهوية بشكل صحيح',
      'en': '',
    },
    'v854yanp': {
      'ar': 'ادخال رقم الهوية',
      'en': '',
    },
    'eh9aeadi': {
      'ar': 'الرجاء اختيار نوع وثيقتك  الشخصية ',
      'en': '',
    },
    '4ydgmlj5': {
      'ar': 'التالي',
      'en': '',
    },
    'nm2mbj7p': {
      'ar': 'Home',
      'en': '',
    },
  },
  // confirm_reset_password
  {
    '2cug9a5q': {
      'ar': 'تغير كلمة السر',
      'en': '',
    },
    'ff3upr4v': {
      'ar': 'كلمة السر الجديدة',
      'en': '',
    },
    'xibhd1bs': {
      'ar': 'تأكيد كلمة السر',
      'en': '',
    },
    'v4jg8lhr': {
      'ar': 'تأكيد',
      'en': '',
    },
    'djfdrczz': {
      'ar': 'Home',
      'en': '',
    },
  },
  // agent_list
  {
    '91cfvzqe': {
      'ar': 'قائمة الوكلاء',
      'en': '',
    },
    'et7esr06': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_email_forgot_pin
  {
    'de1cfdxp': {
      'ar': 'تأكيد إيميلك',
      'en': '',
    },
    'nyn9hgws': {
      'ar': 'بعتنالك رمز تحقق على إيميلك',
      'en': '',
    },
    '0u39zzxp': {
      'ar': '\n',
      'en': '',
    },
    'k2o5twom': {
      'ar': 'xxxxx@gmail.com',
      'en': '',
    },
    'skza5adf': {
      'ar': '\n',
      'en': '',
    },
    'l9zv2cch': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    'qh3rq7c0': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_phone_reset_password
  {
    'f89lzjja': {
      'ar': 'تأكيد رقم التلفون',
      'en': '',
    },
    '8870pp45': {
      'ar': 'بعتنالك رمز تحقق على تليفونك  رقم',
      'en': '',
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
      'ar': ' ممكن تشوف مسجاتك  وتدخل الرمز؟',
      'en': '',
    },
    '9em721k3': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    '1y0ohfao': {
      'ar': 'التالي',
      'en': '',
    },
    '0q24e3y0': {
      'ar': 'Home',
      'en': '',
    },
  },
  // basic_infi_forgot_pin
  {
    'hfce6qeb': {
      'ar': 'معلوماتك الشخصية',
      'en': '',
    },
    '237bqagw': {
      'ar': 'دخل المعلومات بشكل صحيح',
      'en': '',
    },
    'zptptm6s': {
      'ar': 'اختار تاريخ ميلادك',
      'en': '',
    },
    'vwbeeetc': {
      'ar': ' مكان الميلاد ',
      'en': '',
    },
    'mr04czpu': {
      'ar': 'رام الله',
      'en': '',
    },
    '8unec181': {
      'ar': 'نابلس',
      'en': '',
    },
    'a88vr3st': {
      'ar': 'طولكرم',
      'en': '',
    },
    'nqv1u0dt': {
      'ar': 'الخليل',
      'en': '',
    },
    'syi4b462': {
      'ar': 'أنثى',
      'en': '',
    },
    'a39kpk4q': {
      'ar': 'المدينة',
      'en': '',
    },
    '1kca2mao': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'takmk9lm': {
      'ar': 'التالي',
      'en': '',
    },
    'aizmi0ii': {
      'ar': 'Home',
      'en': '',
    },
  },
  // success_page
  {
    'kh49fpqs': {
      'ar': 'مبااارك!',
      'en': 'Congrats!',
    },
    '7uvhtze5': {
      'ar':
          'تهانينا! تم تقديم طلبك بنجاح ستتمكن من استخدام حسابك في غضون بضعة أيام عمل بعد الموافقة على الحساب',
      'en':
          'Congratulations! Your application has been successfully submitted. You will be able to use your account within a few business days once it is approved',
    },
    'pm7u8x69': {
      'ar': 'الصفحة الرئيسية ',
      'en': '',
    },
    'bk5yl1fb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // error_component
  {
    'gzit5wjk': {
      'ar': 'موافق',
      'en': '',
    },
  },
  // error_componentCopy
  {
    'w1jz0htw': {
      'ar': 'لا  يوجد رصيد كافي في\nبطاقتك',
      'en': '',
    },
    'x8w737e8': {
      'ar': 'موافق',
      'en': '',
    },
  },
  // Card61TransferDetailsSmall
  {
    'cyiq8fob': {
      'ar': 'يبدو انه الشخص عند أكثر من بطاقة ',
      'en': '',
    },
    'nm3mpspk': {
      'ar': 'يرجى ادخال اخر اربع ارقام  من البطاقة',
      'en': '',
    },
    'sgku2hqq': {
      'ar': 'تأكيد',
      'en': '',
    },
    '3zrntypz': {
      'ar': 'إلغاء',
      'en': '',
    },
  },
  // block_card_component
  {
    '7xsfy4k8': {
      'ar':
          'هل أنت متأكد من أنك تريد حظر هذه البطاقة؟ سيتم إيقاف جميع المعاملات المالية فورًا بعد حظر البطاقة',
      'en': '',
    },
    'ec1qwqbv': {
      'ar': 'نعم',
      'en': '',
    },
    'fn8r00q7': {
      'ar': 'لا',
      'en': '',
    },
  },
  // cancel_card_component
  {
    'igtr41hr': {
      'ar':
          'هل أنت متأكد من أنك تريد إلغاء هذه البطاقة؟ سيتم إلغاء البطاقة بشكل دائم.',
      'en': '',
    },
    '4hr9f17o': {
      'ar': 'نعم',
      'en': '',
    },
    'jfxi1b37': {
      'ar': 'لا',
      'en': '',
    },
  },
  // home_page_list_transaction_component
  {
    'nsavudjo': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'ay52o26k': {
      'ar': '2921532903099',
      'en': '',
    },
    'ca2wtsdn': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    '3xp6eido': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'jgngh5xx': {
      'ar': '2921532903099',
      'en': '',
    },
    'ekp45l3e': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'qrbttcv9': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'gsajqi1l': {
      'ar': '2921532903099',
      'en': '',
    },
    'hiemgsju': {
      'ar': 'Jun, 8, 2024',
      'en': '',
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
      'en': '',
    },
    'vewvjana': {
      'ar': 'إغلاق',
      'en': '',
    },
  },
  // disable_biometric_component
  {
    'tkt5qtwo': {
      'ar': 'هل أنت متأكد أنك تريد تعطيل بصمة الاصبع؟',
      'en': 'Are you sure you want to disable the Touch ID',
    },
    'hoxhpkmm': {
      'ar': 'نعم',
      'en': '',
    },
    'hmwblstk': {
      'ar': 'لا',
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
