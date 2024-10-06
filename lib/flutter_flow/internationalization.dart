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
    'yzclqe4f': {
      'ar': 'قائمة الوكلاء',
      'en': 'Agent List',
    },
    'u0kt0xim': {
      'ar': 'الاسئلة الشائعة',
      'en': 'Frequently asked questions',
    },
    'lqmr7caz': {
      'ar': 'الشروط والاحكام',
      'en': 'Terms and conditions',
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
      'ar': '970+',
      'en': '+970',
    },
    'mydegl1b': {
      'ar': '972+',
      'en': '+972',
    },
    'bu04m7sg': {
      'ar': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wjlvy24l': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    '3d2l5lvx': {
      'ar': 'نسيت كلمة المرور؟',
      'en': 'Forgot Password?',
    },
    'd8rj43jr': {
      'ar': 'تسجيل الدخول',
      'en': 'Login',
    },
    'ys56dzfk': {
      'ar':
          'تعريف البصمة غير مفعل\nعلى هذا الجهاز الرجاء تسجيل\nالدخول لتفعيل تعريف بصمة \nمن الاعدادات  ',
      'en':
          'Biometric is disabled for this\n device.Please login and enable\n it from Settings\n',
    },
    'q9ks8jtt': {
      'ar': 'تسجيل الدخول من خلال خاصية التعرف',
      'en': 'Biometric login',
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
      'ar': '   أنشئ حساب',
      'en': '  Create New Account',
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
    '2fng89k8': {
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
    'bs41kbym': {
      'ar': ' الرصيد ',
      'en': 'Balance',
    },
    '3lgcu7uz': {
      'ar': '  ',
      'en': '',
    },
    'nj67827h': {
      'ar': '',
      'en': '',
    },
    '2xfis4wg': {
      'ar': ' ',
      'en': '',
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
    'b1r7vqyn': {
      'ar': ' ',
      'en': '',
    },
    '89vwnktl': {
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
      'ar': 'رح  يوصلك رمز تحقق على نفس الرقم , الرجاء التأكد من الرقم المدخل',
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
      'ar': 'الرجاء إدخال رقم هاتف محمول \nصالح يبدأ بـ 5 متبوعًا بـ 8 أرقام',
      'en':
          'Please enter a valid mobile\n number starting with  5 \nfollowed by 8 digits',
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
    '1t39y3md': {
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
      'ar': ' أرسلنالك رمز تحقق على تليفونك  رقم:  ',
      'en': ' We have sent you a verification code on your phone number:   ',
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
      'ar': '  الرجاء إدخال الرمز',
      'en': ' Please enter the code',
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
      'ar': ' ',
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
    'sruxt71n': {
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
    'd3mi7j0c': {
      'ar': 'تغيير كلمة المرور؟',
      'en': 'Change password?',
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
    '6rh91bf4': {
      'ar': 'حالة الطلب',
      'en': 'Transaction Status',
    },
    'msl1dt85': {
      'ar': 'نوع الحركة',
      'en': 'Transaction Type',
    },
    '8nhwfwiv': {
      'ar': ' التاجر',
      'en': 'Biller',
    },
    'uo770vgi': {
      'ar': 'التاريخ ',
      'en': 'Date',
    },
    'ot0eesux': {
      'ar': 'قيمة الحركة بعملة البطاقة',
      'en': 'Transaction Value',
    },
    '0o5knh13': {
      'ar': 'قيمة الحركة',
      'en': '',
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
    'fd194nlo': {
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
    'ex6jv13c': {
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
    'srrvkkcw': {
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
      'ar': 'الرجاء إدخال رقم الوثيقة بشكل صحيح',
      'en': 'Please enter your ID number correctly',
    },
    'c42bc1ay': {
      'ar': ' رقم الوثيقة',
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
          'الرمز المكون من 4 أرقام سيستخدم لتأكيد حركاتك المالية من خلال التطبيق',
      'en':
          'The 4-digit PIN will be used to authorize financial transactions within the app',
    },
    'jr2dayzi': {
      'ar': 'الإيميل',
      'en': 'Email',
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
      'en': 'Register',
    },
    'tt0swmgt': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'kqhv55n9': {
      'ar': 'يجب ألا يتجاوز النص 100 حرفًا.',
      'en': 'Text must not exceed 100 characters.',
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
    'eu1pfxnv': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'adnsilw0': {
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
    '4v74j3ei': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'nrngf3v4': {
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
    'ngvl7l9y': {
      'ar': 'يجب ألا يتجاوز النص 25 حرفًا.',
      'en': 'Text must not exceed 25 characters.',
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
    'rakbs32l': {
      'ar': 'الاسم يجب ان يكون باللغة الانجليزية',
      'en': 'Name must be in English',
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
          'الرمز المكون من 4 أرقام سيستخدم لتأكيد حركاتك المالية من خلال التطبيق',
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
    'Requires4Characters': {
      'ar': 'يتطلب اربع خانات',
      'en': 'Requires 4 characters.',
    },
    'onlyNumbers': {
      'ar': ' يجب أن يتكون الرمز السري  من 4 أرقام فقط.',
      'en': 'The PIN must be 4 digits only.',
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
  // confirm_reset_password
  {
    '2cug9a5q': {
      'ar': 'تغيير كلمة المرور',
      'en': 'Change Password',
    },
    'ff3upr4v': {
      'ar': 'كلمة المرور الحالية',
      'en': 'New password',
    },
    'bpv1pkml': {
      'ar': 'كلمة المرور الجديدة',
      'en': '',
    },
    'xibhd1bs': {
      'ar': 'تأكيد كلمة المرور الجديدة',
      'en': 'Confirm password',
    },
    'v4jg8lhr': {
      'ar': 'تأكيد',
      'en': 'Confirm',
    },
    '6xbm4scs': {
      'ar': 'Field is required',
      'en': '',
    },
    'yg2m1odw': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'pu3jza3e': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    '5jznvy9c': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'c4le5k7i': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'cta50rh5': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'vu3icv7j': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    'cqkkp185': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
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
      'ar': 'كلمة المرور الحالية',
      'en': 'Current Password',
    },
    'xyv5l5tm': {
      'ar': 'كلمة المرور الحالية',
      'en': '',
    },
    'takmk9lm': {
      'ar': 'التالي',
      'en': 'Next',
    },
    '2120b3ra': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    '3r5ueaze': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en':
          'Password must be at least 7 characters long and contain one uppercase letter, one lowercase letter, and one number.',
    },
    '981vqtqf': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
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
    'ju2oiiam': {
      'ar': 'تأكيد',
      'en': 'Confirm',
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
    'utcofzjq': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // transactions_page
  {
    'ry73pybn': {
      'ar': ' ',
      'en': '',
    },
    'ht9cg4jd': {
      'ar': 'الحركات',
      'en': '',
    },
  },
  // frequently_asked_questions
  {
    'r794e0cb': {
      'ar': 'الأسئلة الشائعة',
      'en': '',
    },
    'w9kjqj59': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_verify_email
  {
    'fa4xb5qw': {
      'ar': 'تأكيد الإيميل',
      'en': 'Verify email',
    },
    'f562xrix': {
      'ar': ' أرسلنالك رمز تحقق على إيميلك :  ',
      'en': 'We have sent you a verification code to your email:',
    },
    '80egks64': {
      'ar': '\n',
      'en': '',
    },
    'wzavwwmu': {
      'ar': '\n',
      'en': '',
    },
    'lnrfvstt': {
      'ar': '  الرجاء إدخال الرمز',
      'en': 'please enter the code',
    },
    'k5owyn2e': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    'inwrazsk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_phone_forgot_pin
  {
    'bgqb2ioh': {
      'ar': 'تأكيد رقم التلفون',
      'en': '',
    },
    'qm1h1z55': {
      'ar': ' أرسلنالك رمز تحقق على تليفونك  رقم:  ',
      'en': '',
    },
    '9rqdog66': {
      'ar': '\n',
      'en': '',
    },
    'vjg78hih': {
      'ar': '\n',
      'en': '',
    },
    'fn6f3pzw': {
      'ar': '  الرجاء إدخال الرمز',
      'en': '',
    },
    'ucahdamy': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    'h6i318f6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // enter_id_page_forgot_password
  {
    'bvpaznti': {
      'ar': '  هويتك الشخصية',
      'en': '',
    },
    'ot6z8cbr': {
      'ar': 'الرجاء اختيار نوع وثيقتك  الشخصية ',
      'en': '',
    },
    '382qm4sy': {
      'ar': 'الهوية  الفلسطينية',
      'en': '',
    },
    '1sxsz5bu': {
      'ar': 'هوية القدس',
      'en': '',
    },
    '7b0t6go8': {
      'ar': 'هوية 48',
      'en': '',
    },
    'fti5wvz8': {
      'ar': 'جواز السفر',
      'en': '',
    },
    '9mp5d3qd': {
      'ar': 'اختيار نوع الهوية ',
      'en': '',
    },
    'vsmxky0m': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'at1quu1z': {
      'ar': 'الرجاء إدخال رقم الوثيقة بشكل صحيح',
      'en': '',
    },
    'lonwiwbb': {
      'ar': ' رقم الوثيقة',
      'en': '',
    },
    'qge4504d': {
      'ar': 'التالي',
      'en': '',
    },
    'od60cyt0': {
      'ar': 'الحقل لا يمكن ان يكون أقل من 10 خانات',
      'en': '',
    },
    'ig90grnc': {
      'ar': 'رقم الهوية اقل من 9  ارقام',
      'en': '',
    },
    '5191d3yv': {
      'ar': 'الحقل لا يمكن ان يكون أكبر من 10 خانات',
      'en': '',
    },
    'sodw4ip3': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jiwcbcrz': {
      'ar': 'Home',
      'en': '',
    },
  },
  // otp_phone_forgot_password
  {
    'q3n3vtoe': {
      'ar': 'تأكيد رقم التلفون',
      'en': '',
    },
    'oqv7ut56': {
      'ar': ' أرسلنالك رمز تحقق على تليفونك  رقم:  ',
      'en': '',
    },
    'wlxozkwp': {
      'ar': '\n',
      'en': '',
    },
    '5vwxjzb4': {
      'ar': '\n',
      'en': '',
    },
    'o87lm0cu': {
      'ar': '  الرجاء إدخال الرمز',
      'en': '',
    },
    'uozvedle': {
      'ar': 'إعادة إرسال رمز التحقق',
      'en': '',
    },
    'bdoxr5rb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // confirm_forgot_password
  {
    '2sb6pvno': {
      'ar': 'تغيير كلمة المرور',
      'en': '',
    },
    'edqpsq9u': {
      'ar': 'كلمة المرور الجديدة',
      'en': '',
    },
    'l3y5xzu3': {
      'ar': 'تأكيد كلمة المرور الجديدة',
      'en': '',
    },
    'corv76m6': {
      'ar': 'تأكيد',
      'en': '',
    },
    'kq8nfhqt': {
      'ar': 'Field is required',
      'en': '',
    },
    'cnr9d944': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en': '',
    },
    'w0zd4h1o': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'm2886y5m': {
      'ar': 'Field is required',
      'en': '',
    },
    's9hilgvk': {
      'ar':
          'يجب أن تكون كلمة المرور بطول لا يقل عن 7 أحرف\n ويحتوي على حرف واحد كبير،حرف واحد صغير، ورقم واحد',
      'en': '',
    },
    '06evdp52': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '2b6qtbns': {
      'ar': 'Home',
      'en': '',
    },
  },
  // pin_code
  {
    'sbpwr6w5': {
      'ar': '3',
      'en': '',
    },
    'xqd9clfs': {
      'ar': '2',
      'en': '',
    },
    '5fhxcvo0': {
      'ar': '1',
      'en': '',
    },
    'e9c5wdbk': {
      'ar': '6',
      'en': '',
    },
    '3oj4h2he': {
      'ar': '5',
      'en': '',
    },
    '5rx752cb': {
      'ar': '4',
      'en': '',
    },
    '6buto0oh': {
      'ar': '9',
      'en': '',
    },
    'cn1wslyn': {
      'ar': '8',
      'en': '',
    },
    '1u9wq6yc': {
      'ar': '7',
      'en': '',
    },
    '08749mxw': {
      'ar': '',
      'en': '',
    },
    '41v9f6zg': {
      'ar': '0',
      'en': '',
    },
    'v16kqthu': {
      'ar': '',
      'en': '',
    },
    'gwyheqi4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // list_exchange_rate
  {
    'sno3w7d0': {
      'ar': 'العملة',
      'en': 'Currency',
    },
    'm0m5k6uc': {
      'ar': 'شراء',
      'en': 'Buying',
    },
    '2365y9ek': {
      'ar': 'بيع',
      'en': 'Selling',
    },
    '5408c9tx': {
      'ar': 'أسعار العملات',
      'en': 'Currency Exchange Rates',
    },
    'ropov1fv': {
      'ar': 'Home',
      'en': '',
    },
  },
  // error_componentCopy
  {
    'x8w737e8': {
      'ar': 'موافق',
      'en': 'OK',
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
  // home_page_list_transaction_component
  {
    '6cnnlwbl': {
      'ar': 'إعادة تحميل الحركات',
      'en': 'Refresh Transactions',
    },
    '5hnon1gy': {
      'ar': ' ',
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
  // home_page_list_cards_component
  {
    'sidsk0va': {
      'ar': 'تأكيد البصمة للاستمرار',
      'en': 'Confirm biometric to continue  ',
    },
  },
  // otp_session_expired_component
  {
    '7qtlctjf': {
      'ar': 'انتهت صلاحية رمز التحقق، الرجاء إدخال رمز التحقق مرة أخرى',
      'en': 'Session expired, please enter the OTP again',
    },
    'weybzccb': {
      'ar': 'موافق',
      'en': 'Ok',
    },
  },
  // terms_and_conditions_component
  {
    '8fhrr738': {
      'ar': 'الشروط و الأحكام',
      'en': '',
    },
  },
  // filter_transactions_component1
  {
    'y69w9ruk': {
      'ar': 'الخيارات',
      'en': 'Options',
    },
    'brv3wjhr': {
      'ar': 'اليوم',
      'en': 'Today',
    },
    'wj6v08aa': {
      'ar': 'اخر اسبوع',
      'en': 'Last week',
    },
    '4o1kgke2': {
      'ar': 'اخر شهر',
      'en': 'Last Month',
    },
    '2h4n5v5v': {
      'ar': 'اختر فترة',
      'en': 'selecte date range',
    },
  },
  // empty_list_of_cards
  {
    'yj1s13rf': {
      'ar': 'لا يوجد بطاقات ',
      'en': 'No cards',
    },
  },
  // settings_change_photo
  {
    'e6kdvpqx': {
      'ar': 'تغير الصورة',
      'en': 'Change Photo',
    },
    'ltiag9l2': {
      'ar': 'قم بتحميل صورة جديدة.',
      'en': 'Upload a new photo below.',
    },
    'def6ozqk': {
      'ar': 'حفظ',
      'en': 'Save Changes',
    },
    'cda62kdp': {
      'ar': 'تحميل صورة',
      'en': 'Upload Image',
    },
  },
  // empty_list_of_transactions
  {
    'l9vp4tx5': {
      'ar': 'لا يوجد أي حركات ',
      'en': '',
    },
  },
  // empty_list_of_notification
  {
    '0ryy5jsu': {
      'ar': 'لا يوجد أي إشعارات ',
      'en': 'There are no notifications.',
    },
  },
  // update_email_component
  {
    'tv7c0z7t': {
      'ar': 'تعديل  الإيميل الخاص بك',
      'en': '',
    },
    'sgi9gsvt': {
      'ar': 'الإيميل الحالي ',
      'en': 'Current Email',
    },
    'pleqp1ju': {
      'ar': 'الإيميل الجديد ',
      'en': 'New email',
    },
    'c7jp7ev3': {
      'ar': 'الحقل مطلوب',
      'en': '',
    },
    '7f7b5uid': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fws67ayg': {
      'ar': 'الحقل مطلوب',
      'en': 'Field is required',
    },
    'tt5y9myk': {
      'ar': 'يجب ألا يتجاوز النص 100 حرفًا.',
      'en': '',
    },
    'l9l47kgh': {
      'ar': 'الرجاء إدخال بريد إلكتروني صحيح.',
      'en': 'Please enter a valid email.',
    },
    'if3r7kvc': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'x9ni795n': {
      'ar': 'تأكيد',
      'en': '',
    },
  },
  // pin_code_component
  {
    'fj8ikdq9': {
      'ar': '3',
      'en': '',
    },
    't8l67tzg': {
      'ar': '2',
      'en': '',
    },
    '4ezp2cxb': {
      'ar': '1',
      'en': '',
    },
    'xxhlgslh': {
      'ar': '6',
      'en': '',
    },
    'gchhwvc8': {
      'ar': '5',
      'en': '',
    },
    'bg4uaucw': {
      'ar': '4',
      'en': '',
    },
    'mcv9tml9': {
      'ar': '9',
      'en': '',
    },
    '9bb0dgr9': {
      'ar': '8',
      'en': '',
    },
    'ymichjjl': {
      'ar': '7',
      'en': '',
    },
    '9l081t2i': {
      'ar': '',
      'en': '',
    },
    '0vxgida4': {
      'ar': '0',
      'en': '',
    },
    'xlcer1iy': {
      'ar': 'close',
      'en': '',
    },
  },
  // empty_list_of_exchange_rate
  {
    'mmcsxokt': {
      'ar': 'لا يوجد اسعار صرف ',
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
    'mqcga6w0': {
      'ar':
          'This app uses notifications to send you important updates and alerts.',
      'en': '',
    },
    'ai9jriog': {
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
