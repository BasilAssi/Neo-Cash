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
    'cnx1ihao': {
      'ar': 'الرصيد',
      'en': 'Balance',
    },
    'sh8gaq69': {
      'ar': '\$7,630',
      'en': '\$7,630',
    },
    'l2b9vkcr': {
      'ar': '**** 0149',
      'en': '**** 0149',
    },
    '7w73lynf': {
      'ar': '05/25',
      'en': '05/25',
    },
    'dp5u5is9': {
      'ar': 'إرسال',
      'en': 'send',
    },
    'gk5d680r': {
      'ar': 'طلب',
      'en': 'to request',
    },
    '16dokqg5': {
      'ar': 'سحب',
      'en': 'to withdraw',
    },
    '322bihj5': {
      'ar': 'إضافة اموال',
      'en': 'Add money',
    },
    '0dsvs6im': {
      'ar': 'الحركات',
      'en': 'Campaigns and offers',
    },
    '8xr1drdh': {
      'ar': 'عرض الكل',
      'en': '',
    },
    '2ry21gdf': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'wz8vtv3o': {
      'ar': '2921532903099',
      'en': '',
    },
    'iw2o94v0': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'wc5x1bfd': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '81h20nzo': {
      'ar': '2921532903099',
      'en': '',
    },
    '2s0j82r6': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'fnrjs91q': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'es1gcrq5': {
      'ar': '2921532903099',
      'en': '',
    },
    'l8qagz24': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'mvlc1z5y': {
      'ar': 'ملفي الشخصي',
      'en': 'my personal file',
    },
    'z44sbop0': {
      'ar': 'تفاصيل الحساب',
      'en': 'account details',
    },
    'dybj5wgt': {
      'ar': 'الإعدادات',
      'en': 'Settings',
    },
    '80d86a13': {
      'ar': 'مركز المساعدة',
      'en': 'Help Center',
    },
    'nq7ri7jv': {
      'ar': 'أسعار العملات',
      'en': 'Exchange Rates',
    },
    'k2t41utr': {
      'ar': 'أقرب صراف آلي',
      'en': 'The nearest ATM',
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
    's57yw88q': {
      'ar': 'الإيميل',
      'en': 'Email',
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
    '1c7iwymx': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '8aywn5lr': {
      'ar': '2921532903099',
      'en': '',
    },
    '62u1crji': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'coj6rbh7': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'huylt2c1': {
      'ar': '2921532903099',
      'en': '',
    },
    'l3mf719r': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'ih7j8yhr': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '5lnbdsoc': {
      'ar': '2921532903099',
      'en': '',
    },
    'u70vwya6': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'l88zj4v1': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '0sb9ya8c': {
      'ar': '2921532903099',
      'en': '',
    },
    'e4vmvyah': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'v2wrcm0a': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'giehio3x': {
      'ar': '2921532903099',
      'en': '',
    },
    '450tuma3': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'bs2k8vc1': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'q1te9mnv': {
      'ar': '2921532903099',
      'en': '',
    },
    'wrmeuj58': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'l71kmf7a': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '3spkf008': {
      'ar': '2921532903099',
      'en': '',
    },
    'rkfmkwgp': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    '0hdidrmp': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    '69byw3ab': {
      'ar': '2921532903099',
      'en': '',
    },
    '6bjseayp': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'agzb7eki': {
      'ar': 'شحن رصيد موبايل',
      'en': '',
    },
    'v8x6lysn': {
      'ar': '2921532903099',
      'en': '',
    },
    'vecnswc0': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'bs41kbym': {
      'ar': 'إجمالي الرصيد ',
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
    'l77of1rz': {
      'ar': 'الجميع',
      'en': '',
    },
    '7gyeebmx': {
      'ar': 'العروض',
      'en': '',
    },
    'unb72wpa': {
      'ar': 'معاملاتي',
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
    '43krzxkt': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    '5v7wrssv': {
      'ar': 'بلشت تحوش لسفرة العيد ؟',
      'en': '',
    },
    '1d558j8e': {
      'ar': ' ',
      'en': '',
    },
    'y73ge7sl': {
      'ar':
          'افتح حساب تحوش ونذكر انه صا ر اسهل معا  وجهز لمصاريف السفر ! تمتع بالسحب والايداع وإادارة الاصاريف بأفضل طريقة',
      'en': '',
    },
    'ckpq355p': {
      'ar': 'Jun, 8, 2024',
      'en': '',
    },
    'zks01jx1': {
      'ar': 'بلشت تحوش لسفرة العيد ؟',
      'en': '',
    },
    '4ouibfps': {
      'ar': ' ',
      'en': '',
    },
    'w5sls8lu': {
      'ar':
          'افتح حساب تحوش ونذكر انه صا ر اسهل معا  وجهز لمصاريف السفر ! تمتع بالسحب والايداع وإادارة الاصاريف بأفضل طريقة',
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
    'esyo1sgz': {
      'ar': 'إنشاء حساب ',
      'en': 'sign in',
    },
    'bkv43rhi': {
      'ar': 'سجل تلفونك واستخدم التطبيق',
      'en': '',
    },
    'k71ncand': {
      'ar': 'عندك حساب ؟ سجل دخولك الآن',
      'en': 'sign in',
    },
    '1t39y3md': {
      'ar': 'Home',
      'en': '',
    },
  },
  // register_page_2_phone_number
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
      'ar': '+972',
      'en': '',
    },
    'gangnkno': {
      'ar': '+970',
      'en': '',
    },
    'c040sz0r': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'agq6bq8b': {
      'ar': 'استخدامك لنيو كاش يعني انك \nموافق على  ',
      'en': '',
    },
    'nynwtcbl': {
      'ar': 'الشروط والأحكام',
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
  // register_page_3_otp
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
    '8cw85wg1': {
      'ar': 'التالي',
      'en': 'sign in',
    },
    '1xcx3ocl': {
      'ar': 'Home',
      'en': '',
    },
  },
  // card_details
  {
    'a0y0st45': {
      'ar': 'الحساب الاساسي ',
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
    'blre5d6e': {
      'ar': 'Neo Cash',
      'en': '',
    },
    'ysdi9pqi': {
      'ar': 'VISA',
      'en': '',
    },
    '5fildslc': {
      'ar': 'BASIL ASSI',
      'en': '',
    },
    'pm2r0kmy': {
      'ar': 'رقم البطاقة',
      'en': '',
    },
    '61ordqge': {
      'ar': '4444  4214  4215  4522',
      'en': '',
    },
    'gz4uayjg': {
      'ar': 'CVV',
      'en': '',
    },
    'z8pr40ks': {
      'ar': 'تاريخ الانتهاء',
      'en': '',
    },
    'egimiqvx': {
      'ar': '696',
      'en': '',
    },
    '5x6mz1oq': {
      'ar': '05/28',
      'en': '',
    },
    'v04sy0uk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // user_page
  {
    '897rfc7a': {
      'ar': 'ملفي الشخصي',
      'en': '',
    },
    'bp7pe903': {
      'ar': 'اسم العرض',
      'en': '',
    },
    'mgmvykns': {
      'ar': 'Basil',
      'en': '',
    },
    'z1qrqkvj': {
      'ar': 'تاريخ الميلاد',
      'en': '',
    },
    'au5atau4': {
      'ar': '21/07/2001',
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
    'z15cn135': {
      'ar': 'رقم الموبايل',
      'en': '',
    },
    '1xrjbpy9': {
      'ar': '0569718347',
      'en': '',
    },
    'oefdlwk5': {
      'ar': 'تعديل',
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
    'm43nimhw': {
      'ar': 'الإشعارات',
      'en': '',
    },
    '7jmoj145': {
      'ar': 'بصمة التعريف',
      'en': '',
    },
    'ckdkpn5f': {
      'ar': 'الرمز السري',
      'en': '',
    },
    '1mb1dqsl': {
      'ar': 'تغير الرمز السري',
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
      'ar': 'رمز الحركة',
      'en': '',
    },
    'wfnpkxto': {
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
    '5z95uda8': {
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
    'j5y93gae': {
      'ar': 'Home',
      'en': '',
    },
  },
  // card_settings_page
  {
    '4fvtakhj': {
      'ar': 'إعدادات البطاقة',
      'en': '',
    },
    'wficmk0f': {
      'ar': 'عرض الرمز السري',
      'en': '',
    },
    '1srml0uw': {
      'ar': 'تسجيل  الدخول من خلال خاصية التعرف',
      'en': '',
    },
    'pr4uja06': {
      'ar': 'عمليات الدفع الكترونياً',
      'en': '',
    },
    '7cmhawhy': {
      'ar': 'الدفعات اللاتلامسية',
      'en': '',
    },
    '1dzuzjzn': {
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
  // Miscellaneous
  {
    '2noqmglu': {
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
