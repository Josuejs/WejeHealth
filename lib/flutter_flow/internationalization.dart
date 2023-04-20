import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

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
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

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
  // createAccount
  {
    'lsi6s6dc': {
      'en': 'Welcome!',
      'es': 'Bienvenido!',
    },
    'dhmqmbpw': {
      'en': 'Use the form below to get started.',
      'es': 'Use el siguiente formulario para comenzar.',
    },
    'balwxjt0': {
      'en': 'Email Address',
      'es': '',
    },
    'q9mxthxm': {
      'en': 'Enter your email here...',
      'es': '',
    },
    'eflaavnq': {
      'en': 'Password',
      'es': '',
    },
    '0kdevzd4': {
      'en': 'Enter your password here...',
      'es': '',
    },
    '8xl9lhsy': {
      'en': 'Confirm Password',
      'es': '',
    },
    '7z1wf54p': {
      'en': 'Confirm password here...',
      'es': '',
    },
    'djw66t7t': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    'diqcmgcr': {
      'en': 'Use a social platform to continue',
      'es': '',
    },
    '9a7kqnlv': {
      'en': 'Home',
      'es': '',
    },
  },
  // forgotPassword
  {
    '5l29zrp1': {
      'en': 'Forgot Password',
      'es': '',
    },
    'nuhepkcb': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'es': '',
    },
    'douoxlkl': {
      'en': 'Email Address',
      'es': '',
    },
    '7rbg88pz': {
      'en': 'Please enter a valid email...',
      'es': '',
    },
    'g16vf1mj': {
      'en': 'Send Reset Link',
      'es': '',
    },
    'y2cuqvzd': {
      'en': 'Home',
      'es': '',
    },
  },
  // Login
  {
    'qp3pvs3s': {
      'en': 'Welcome!',
      'es': 'Bienvenido!',
    },
    'jkgh1cz4': {
      'en': 'Completa el formulario para crear cuenta.',
      'es': '',
    },
    'uodv29wi': {
      'en': 'Email Address',
      'es': '',
    },
    'mmph7ous': {
      'en': 'Enter your email here...',
      'es': '',
    },
    '8pzn9vzo': {
      'en': 'Password',
      'es': '',
    },
    'e8bsop8o': {
      'en': 'Enter your password here...',
      'es': '',
    },
    'gfyweohi': {
      'en': 'Olvido Contraseña?',
      'es': '',
    },
    'gspi7n5q': {
      'en': 'Login',
      'es': 'Acceso',
    },
    'pabl6qyd': {
      'en': 'No tienes una cuenta?',
      'es': '',
    },
    'b1ntdim0': {
      'en': 'Crear Cuenta',
      'es': '',
    },
    'cwdwqnvx': {
      'en': 'Home',
      'es': '',
    },
  },
  // OrdenMedica
  {
    'ob9jwujf': {
      'en': 'Cancelar',
      'es': '',
    },
    '2vd4tzvp': {
      'en': 'Medicar',
      'es': '',
    },
    'i8g9al9b': {
      'en': 'Home',
      'es': '',
    },
  },
  // Home
  {
    'tylu0ebo': {
      'en': 'Patients',
      'es': '',
    },
    'a32mitc0': {
      'en': 'Appoinments',
      'es': '',
    },
    'xy0dadhf': {
      'en': 'News',
      'es': '',
    },
    'wz3y4oy7': {
      'en': 'Dashboard',
      'es': '',
    },
    'zb9o36ox': {
      'en': 'Day',
      'es': '',
    },
    '1ym7sp8g': {
      'en': 'Time',
      'es': '',
    },
    'tryglcil': {
      'en': 'Daily tracker',
      'es': '',
    },
    'tzla9e7u': {
      'en': 'Progress',
      'es': '',
    },
    'khiuwdto': {
      'en': '__',
      'es': '',
    },
  },
  // Main_customerList
  {
    'i1n5cq2i': {
      'en': 'Patients',
      'es': '',
    },
    '9fdkoakn': {
      'en': 'Search Patient...',
      'es': '',
    },
    's7fekuxt': {
      'en': 'Option 1',
      'es': '',
    },
    'ti6g1f5j': {
      'en': '__',
      'es': '',
    },
  },
  // Main_customerListCopy
  {
    'li56ywd8': {
      'en': 'Doctors',
      'es': '',
    },
    'cq5cvoyy': {
      'en': 'All',
      'es': '',
    },
    'ck3nicdq': {
      'en': 'Eladio Carrion',
      'es': '',
    },
    'bf5hdgam': {
      'en': 'Odontologo',
      'es': '',
    },
    'qc2lmexg': {
      'en': 'Cedimat',
      'es': '',
    },
    'jpbd32jf': {
      'en': 'Benito Antonio',
      'es': '',
    },
    '0ntzflyi': {
      'en': 'Epidemiologo',
      'es': '',
    },
    'a0u1zilo': {
      'en': 'Cedimat',
      'es': '',
    },
    'h9ep6iud': {
      'en': 'Cristiano Ronaldo',
      'es': '',
    },
    'xjafe23l': {
      'en': 'Oncologo',
      'es': '',
    },
    '0ken1626': {
      'en': 'Cedimat',
      'es': '',
    },
    '675gzej9': {
      'en': 'Customers',
      'es': '',
    },
    'fap4x55v': {
      'en': '__',
      'es': '',
    },
  },
  // AddUser
  {
    'e0f1jaaw': {
      'en': 'Medical Record',
      'es': '',
    },
    'ng6urjrr': {
      'en': 'Personal Information',
      'es': '',
    },
    'reqr1tdq': {
      'en': 'Name',
      'es': '',
    },
    '03kwjo8z': {
      'en': 'Escriba nombre completo...',
      'es': '',
    },
    '010roj74': {
      'en': 'Age',
      'es': '',
    },
    'dh466qx1': {
      'en': 'Escriba edad...',
      'es': '',
    },
    'voy5y34h': {
      'en': 'Weight',
      'es': '',
    },
    'sgnxz3sh': {
      'en': 'Escriba edad...',
      'es': '',
    },
    'b4zib27p': {
      'en': 'Gender',
      'es': '',
    },
    'a0eluwpo': {
      'en': 'Escriba edad...',
      'es': '',
    },
    '9gbqjrds': {
      'en': 'Fecha de Nacimiento',
      'es': '',
    },
    'tv69fcan': {
      'en': 'dd/mm/yyyy..',
      'es': '',
    },
    'y8ehrznt': {
      'en': 'Email',
      'es': '',
    },
    '5zfgw70n': {
      'en': 'Ejemplo@gmail.com',
      'es': '',
    },
    'lexjextc': {
      'en': 'Direction',
      'es': '',
    },
    '78hygult': {
      'en': 'Escriba edad...',
      'es': '',
    },
    'h8zkmvup': {
      'en': 'Phone Number',
      'es': '',
    },
    'bqmd6i99': {
      'en': 'Escriba lugar de nacimiento...',
      'es': '',
    },
    't959nxqx': {
      'en': 'Medical History',
      'es': '',
    },
    'op4r6etn': {
      'en': 'Diabetes',
      'es': '',
    },
    'hny6qxzp': {
      'en': 'Cancer',
      'es': '',
    },
    '7769wia3': {
      'en': 'Alegies (Medications & Foods)',
      'es': '',
    },
    'v31anw83': {
      'en': 'Escriba numero de emergencia...',
      'es': '',
    },
    '056ep171': {
      'en': 'Social History',
      'es': '',
    },
    'f5og5jke': {
      'en': 'Ocupation',
      'es': '',
    },
    'flyw2jr7': {
      'en': 'Escriba edad...',
      'es': '',
    },
    'c4fnfbrq': {
      'en': 'Civil State',
      'es': '',
    },
    'f600ctdz': {
      'en': 'Escriba lugar de nacimiento...',
      'es': '',
    },
    'ercbyn49': {
      'en': 'ID',
      'es': '',
    },
    'di3menws': {
      'en': 'Escriba edad...',
      'es': '',
    },
    '7ulzs4rr': {
      'en': 'Cancelar',
      'es': '',
    },
    'acj0zji5': {
      'en': 'Guardar',
      'es': '',
    },
  },
  // userDetails
  {
    'vtt77wbf': {
      'en': 'Name',
      'es': '',
    },
    'k1r6gpag': {
      'en': 'Patient ID',
      'es': '',
    },
    '6edkuhvn': {
      'en': 'Medical Record',
      'es': '',
    },
    'd9sk4epp': {
      'en': 'Vitals',
      'es': '',
    },
    'wb27szc1': {
      'en': 'Medicine',
      'es': '',
    },
    '0de8pz39': {
      'en': 'Appointment',
      'es': '',
    },
    'mv79xa9b': {
      'en': 'Home',
      'es': '',
    },
  },
  // userDetailsCopy
  {
    '1ahxryda': {
      'en': 'Nombre del Doctor',
      'es': '',
    },
    'hnmvhpzk': {
      'en': 'Eladio Carrion',
      'es': '',
    },
    'bg4i3uhn': {
      'en': 'Ocupación',
      'es': '',
    },
    'ghpxzzrl': {
      'en': 'Odontologo',
      'es': '',
    },
    'hgrvncio': {
      'en': 'Agendar Cita',
      'es': '',
    },
    'bbyrh9hf': {
      'en': 'Home',
      'es': '',
    },
  },
  // OnboardingPage
  {
    '01t8wq60': {
      'en': 'Schedule an Appointment',
      'es': '',
    },
    'u7czt8lg': {
      'en': 'Real time monitoring',
      'es': '',
    },
    '0wpy8ofg': {
      'en': 'Buy and view all your favorite books you find in this library.',
      'es': '',
    },
    'r5ywo3wu': {
      'en': 'Chat anytime',
      'es': '',
    },
    'l9b6m7rp': {
      'en':
          'Keep track of all your purchases that you have made, want to trade books in? Go ahead and list them for exchange.',
      'es': '',
    },
    'h2i9rzh9': {
      'en': 'Continue',
      'es': '',
    },
  },
  // CitasAgendadas
  {
    '3xbtt5iu': {
      'en': 'Latest Appointments',
      'es': '',
    },
    'mw95lfsr': {
      'en': 'Schedule Appointments',
      'es': '',
    },
    'g5hjupou': {
      'en': 'Products',
      'es': '',
    },
  },
  // OverviewConditions
  {
    'i623y71j': {
      'en': 'Overview Condition',
      'es': '',
    },
    'mc5vd0c3': {
      'en': 'Patient Vitals',
      'es': '',
    },
    '2eof71f1': {
      'en': 'Heart Rate',
      'es': '',
    },
    '2xikzoeg': {
      'en': 'Bpm',
      'es': '',
    },
    'fesicn0b': {
      'en': 'SpO2',
      'es': '',
    },
    '2w0c0vvz': {
      'en': '%',
      'es': '',
    },
    'b6iuezd5': {
      'en': 'Tempeture',
      'es': '',
    },
    'ihyrx12w': {
      'en': '37° C',
      'es': '',
    },
    'fhw6qmyp': {
      'en': 'Home',
      'es': '',
    },
  },
  // Profile_Doctor
  {
    'jswdt804': {
      'en': 'My Settings',
      'es': '',
    },
    'udhih4f2': {
      'en': 'Terms of Service',
      'es': '',
    },
    'hien7ecj': {
      'en': 'Back',
      'es': '',
    },
    'obkd8tdv': {
      'en': 'Log Out',
      'es': '',
    },
    '7fxom91e': {
      'en': '[User Name]',
      'es': '',
    },
    'e0rmy530': {
      'en': '[username@domain.com]',
      'es': '',
    },
  },
  // OximeterDataList
  {
    'l6991f04': {
      'en': 'Explore',
      'es': '',
    },
    '3s15ovuw': {
      'en': 'This Week',
      'es': '',
    },
    'jwdgp6vd': {
      'en': 'Oximeter',
      'es': '',
    },
    'ctrustg0': {
      'en': 'Back',
      'es': '',
    },
    '0nscunlx': {
      'en': 'Home',
      'es': '',
    },
  },
  // modal_success
  {
    'prrvm4b2': {
      'en': 'Send Contract Confirmation',
      'es': '',
    },
    'qc3ixn6d': {
      'en': 'A new contract has been generated for:',
      'es': '',
    },
    'pnfpavko': {
      'en': 'Next Steps',
      'es': '',
    },
    'dgj2iigq': {
      'en':
          'Send the information below. And we will send an email with details to the customer and allow you to manage it in your dashboard.',
      'es': '',
    },
    '68opmix9': {
      'en': 'Send Information',
      'es': '',
    },
    'j247p6gz': {
      'en': 'Never Mind',
      'es': '',
    },
  },
  // modal_Message
  {
    '5f3u2i18': {
      'en': 'Congratulations!',
      'es': '',
    },
    'wwcxthj3': {
      'en':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
      'es': '',
    },
    'i6z27dvi': {
      'en': 'Okay',
      'es': '',
    },
    'qrtrlphg': {
      'en': 'Continue',
      'es': '',
    },
  },
  // modal_Welcome
  {
    '0ycf3t8z': {
      'en': 'Felicidades!',
      'es': '',
    },
    'ac308ufy': {
      'en': 'Usuario creado correctamente.',
      'es': '',
    },
    'wds4sndt': {
      'en': 'Continue',
      'es': '',
    },
  },
  // createComment
  {
    'j8o79th5': {
      'en': 'Create Note',
      'es': '',
    },
    'l85gak76': {
      'en': 'Find members by searching below',
      'es': '',
    },
    '94jxuy9b': {
      'en': 'Ricky Rodriguez',
      'es': '',
    },
    'e70m1yzg': {
      'en': 'Enter your note here...',
      'es': '',
    },
    '2vlqvlm4': {
      'en': 'Create Note',
      'es': '',
    },
  },
  // mobileNav
  {
    'v0a18bfb': {
      'en': 'Home',
      'es': '',
    },
    'catnha79': {
      'en': 'Patients',
      'es': '',
    },
    'bns63jxr': {
      'en': 'Profile',
      'es': '',
    },
  },
  // webNav
  {
    '12olm3ub': {
      'en': 'Home',
      'es': '',
    },
    '0sxeph2d': {
      'en': 'Patients',
      'es': '',
    },
    'ra1in90m': {
      'en': 'Appointments',
      'es': '',
    },
    'g9oz2409': {
      'en': 'Medication',
      'es': '',
    },
    'vzcbnzff': {
      'en': 'Profile',
      'es': '',
    },
  },
  // commandPalette
  {
    'x3rrzzkt': {
      'en': 'Search platform...',
      'es': '',
    },
    'kvioq340': {
      'en': 'Search',
      'es': '',
    },
    'hjidougp': {
      'en': 'Quick Links',
      'es': '',
    },
    'mudguv8w': {
      'en': 'Find Contract',
      'es': '',
    },
    '1qkhtttn': {
      'en': 'Find Customer',
      'es': '',
    },
    'zh1r1wj6': {
      'en': 'New Contract',
      'es': '',
    },
    '9txwk7nd': {
      'en': 'New Customer',
      'es': '',
    },
    '1mc23d9b': {
      'en': 'Recent Searches',
      'es': '',
    },
    '2sfmqdfm': {
      'en': 'Newport Financ',
      'es': '',
    },
    'wux40wil': {
      'en': 'Harry Styles',
      'es': '',
    },
  },
  // editProfilePhoto
  {
    'qjmdq9j9': {
      'en': 'Eliminar Paciente',
      'es': '',
    },
    'gzipfnjv': {
      'en':
          'Al eliminar el usuario del paciente, se perderan todos lo datos del mismo.',
      'es': '',
    },
    'fzdrfj2o': {
      'en': 'Cancelar',
      'es': '',
    },
    '7fxa88mo': {
      'en': 'Aceptar',
      'es': '',
    },
  },
  // editProfilePhotoCopy
  {
    '39vtxs1w': {
      'en': 'Temperatura',
      'es': '',
    },
    'ibw6hb2k': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'es': '',
    },
    'd4uv8s8r': {
      'en': 'Volver',
      'es': '',
    },
  },
  // editProfilePhotoCopyCopy
  {
    'ityebgwx': {
      'en': 'Pulsaciones',
      'es': '',
    },
    'lsu4vpmi': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'es': '',
    },
    'zm4pqz3s': {
      'en': 'Volver',
      'es': '',
    },
  },
  // DoctorWelcome
  {
    'd755wn9w': {
      'en': 'Hello, ',
      'es': '',
    },
    '6vdrzx9x': {
      'en': 'Andrew',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'smz0ikzl': {
      'en': '',
      'es': '',
    },
    '7tfs7027': {
      'en': '',
      'es': '',
    },
    '65e2tfs2': {
      'en': '',
      'es': '',
    },
    'ddazihx4': {
      'en': '',
      'es': '',
    },
    'db03cpjj': {
      'en': '',
      'es': '',
    },
    'fdb9078p': {
      'en': '',
      'es': '',
    },
    '80ouzj9q': {
      'en': '',
      'es': '',
    },
    '6rzhptp9': {
      'en': '',
      'es': '',
    },
    'ce8c4ty0': {
      'en': '',
      'es': '',
    },
    'kcvqa08x': {
      'en': '',
      'es': '',
    },
    'dqrzd6sq': {
      'en': '',
      'es': '',
    },
    'dpqtohyf': {
      'en': '',
      'es': '',
    },
    'v01vf71s': {
      'en': '',
      'es': '',
    },
    'gcv6def1': {
      'en': '',
      'es': '',
    },
    'um9es99m': {
      'en': '',
      'es': '',
    },
    'o4enbz4j': {
      'en': '',
      'es': '',
    },
    '8z4tvfh7': {
      'en': '',
      'es': '',
    },
    '2ybzla8x': {
      'en': '',
      'es': '',
    },
    'd1wdf5i1': {
      'en': '',
      'es': '',
    },
    '2py80kgi': {
      'en': '',
      'es': '',
    },
    'p6lsrh2a': {
      'en': '',
      'es': '',
    },
    'ne8cclp9': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
