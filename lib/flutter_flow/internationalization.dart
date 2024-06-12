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
    'w9lpj0p6': {
      'ar': 'Front',
      'en': 'Front',
    },
    'fchdi5tj': {
      'ar': 'Back',
      'en': 'Back',
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
    'o3jwgyzh': {
      'ar': 'إضافة اموال',
      'en': 'Add money',
    },
    'qci1tooq': {
      'ar': 'إضافة اموال',
      'en': 'Add money',
    },
    '3p795s58': {
      'ar': 'إضافة اموال',
      'en': 'Add money',
    },
    '9ec0j6db': {
      'ar': 'إضافة اموال',
      'en': 'Add money',
    },
    '0dsvs6im': {
      'ar': 'الحملات و العروض',
      'en': 'Campaigns and offers',
    },
    'bhm7pnlr': {
      'ar': 'عرض الكل',
      'en': 'View all',
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
      'en': 'Change the language to English',
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
  // qr_home_page
  {
    '58x8yh38': {
      'ar': 'Page Title',
      'en': '',
    },
    '1t39y3md': {
      'ar': 'الدفع ب QR',
      'en': '',
    },
  },
  // transactions_home_page
  {
    'dv92jp1j': {
      'ar': 'Page Title',
      'en': '',
    },
    '1dz4sx9s': {
      'ar': 'الحركات',
      'en': '',
    },
  },
  // offers_home_page
  {
    'b5t94jyf': {
      'ar': 'Page Title',
      'en': '',
    },
    'fx3qydw8': {
      'ar': 'العروض',
      'en': 'offers',
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
    'k71ncand': {
      'ar': 'عندك حساب ؟ سجل دخولك الآن',
      'en': 'sign in',
    },
    '1f51n1l6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // register_page_2
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
    'v04sy0uk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // register_page_2Copy
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
    'mb5yfxcz': {
      'ar': ' 0569718347 ',
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
