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
      'en': 'Bienvenido!',
      'es': '',
    },
    'dhmqmbpw': {
      'en': 'Use the form below to get started.',
      'es': '',
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
      'es': '',
    },
    'diqcmgcr': {
      'en': 'Use a social platform to continue',
      'es': '',
    },
    'ehfwpsw1': {
      'en': 'Already have an account?',
      'es': '',
    },
    '6ddiwrmk': {
      'en': 'Log In',
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
      'en': 'Bienvenido!',
      'es': '',
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
      'es': '',
    },
    'rwnwfl7a': {
      'en': 'Use a social platform to continue',
      'es': '',
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
    '4067vzsk': {
      'en': 'Orden Médica',
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
      'en': 'Pacientes',
      'es': '',
    },
    'a32mitc0': {
      'en': 'Citas',
      'es': '',
    },
    '0dp1lqbj': {
      'en': '203',
      'es': '',
    },
    'xy0dadhf': {
      'en': 'Cita de Hoy',
      'es': '',
    },
    '2qso3g64': {
      'en': '1',
      'es': '',
    },
    'wz3y4oy7': {
      'en': 'Tablero',
      'es': '',
    },
    'tn1otd1c': {
      'en': 'Dashboard',
      'es': '',
    },
    'khiuwdto': {
      'en': '__',
      'es': '',
    },
  },
  // Main_customerList
  {
    'b1shcbxd': {
      'en': 'Pacientes',
      'es': '',
    },
    'jyrkno3i': {
      'en': 'Activos',
      'es': '',
    },
    '2b8d96oc': {
      'en': 'Inactivos',
      'es': '',
    },
    'tmpoqgb4': {
      'en': 'June Williamson',
      'es': '',
    },
    'oyreztyf': {
      'en': 'Sr. Account Manager',
      'es': '',
    },
    'urm2hgo5': {
      'en': 'HealthAi',
      'es': '',
    },
    'eefjw6q5': {
      'en': 'James Wiseman',
      'es': '',
    },
    'nxq2phbg': {
      'en': 'Account Manager',
      'es': '',
    },
    'rvtbbjga': {
      'en': 'HealthAi',
      'es': '',
    },
    'fh9caqi0': {
      'en': 'Customers',
      'es': '',
    },
    'ti6g1f5j': {
      'en': '__',
      'es': '',
    },
  },
  // AddUser
  {
    'a64pvdrh': {
      'en': 'Nombre',
      'es': '',
    },
    'r80ti316': {
      'en': 'Escriba nombre completo...',
      'es': '',
    },
    'wmfyp6yf': {
      'en': 'Edad',
      'es': '',
    },
    'itbk6g2p': {
      'en': 'Escriba edad...',
      'es': '',
    },
    'jdp09422': {
      'en': 'Lugar de Nacimiento',
      'es': '',
    },
    'hsa482q6': {
      'en': 'Escriba lugar de nacimiento...',
      'es': '',
    },
    '5syvj5q6': {
      'en': 'Telefóno',
      'es': '',
    },
    'hw66k06q': {
      'en': 'Numero telefonico...',
      'es': '',
    },
    'dvh3knac': {
      'en': 'Dirección',
      'es': '',
    },
    'yhgttcdx': {
      'en': 'Escriba dirección...',
      'es': '',
    },
    'uy9xyr2n': {
      'en': 'Fecha de Nacimiento',
      'es': '',
    },
    'gj57sjf3': {
      'en': 'dd/mm/yyyy..',
      'es': '',
    },
    '1ljvf2i5': {
      'en': 'Email',
      'es': '',
    },
    'e4ojnurk': {
      'en': 'Ejemplo@gmail.com',
      'es': '',
    },
    'i56e2kpm': {
      'en': 'Numero de Emergencia',
      'es': '',
    },
    'tngdjcsn': {
      'en': 'Escriba numero de emergencia...',
      'es': '',
    },
    '2sijoogn': {
      'en': 'Cedula de Identidad',
      'es': '',
    },
    'p9u37vfi': {
      'en': '40229753123',
      'es': '',
    },
    'x6hrqo3d': {
      'en': 'Agregar Foto',
      'es': '',
    },
    'u9rc0nyj': {
      'en': 'Cancelar',
      'es': '',
    },
    'qf7qktyz': {
      'en': 'Guardar',
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
  // userDetails
  {
    'vtt77wbf': {
      'en': 'Nombre de Paciente',
      'es': '',
    },
    '6ccebq2p': {
      'en': 'Diabetes',
      'es': '',
    },
    'q783twf7': {
      'en': 'Title',
      'es': '',
    },
    'rb496s71': {
      'en': 'Diabetico',
      'es': '',
    },
    'r5fppbws': {
      'en': 'Vitals',
      'es': '',
    },
    'f4pc80mw': {
      'en': 'Signos Vitales',
      'es': '',
    },
    'wb27szc1': {
      'en': 'Historial Medico',
      'es': '',
    },
    '0de8pz39': {
      'en': 'Citas Agendadas',
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
  // Schedule
  {
    'jx8vj7uk': {
      'en': 'Calendario',
      'es': '',
    },
    '9rjsmu7n': {
      'en': 'Home',
      'es': '',
    },
  },
  // Test
  {
    'o2pymqcl': {
      'en': 'Andrew Daniels',
      'es': '',
    },
    '08lqsxeg': {
      'en': 'Completed',
      'es': '',
    },
    'romnivg4': {
      'en': '24',
      'es': '',
    },
    'f35bl4q2': {
      'en': 'Pending',
      'es': '',
    },
    'pvpmm8e3': {
      'en': '16',
      'es': '',
    },
    '1qvpehp0': {
      'en': 'Needing Action',
      'es': '',
    },
    'porxzb5w': {
      'en': '426',
      'es': '',
    },
    'vo1ycsn8': {
      'en': 'Projects',
      'es': '',
    },
    'ifkyw7je': {
      'en': 'UI Design Team',
      'es': '',
    },
    'n53m9zml': {
      'en': '4 Members',
      'es': '',
    },
    'afkwiw91': {
      'en': 'Latest Activity',
      'es': '',
    },
    '4xitp0ey': {
      'en': 'Mon, 24',
      'es': '',
    },
    '58tv21cj': {
      'en': '4:00pm',
      'es': '',
    },
    'a1iydcmr': {
      'en': 'Marketing',
      'es': '',
    },
    't7067a7a': {
      'en': '4 Members',
      'es': '',
    },
    '6vy53322': {
      'en': 'Latest Activity',
      'es': '',
    },
    'pl003gjs': {
      'en': 'Mon, 24',
      'es': '',
    },
    'uc71gkcb': {
      'en': '4:00pm',
      'es': '',
    },
    't93uroj6': {
      'en': 'Growth & Outreach',
      'es': '',
    },
    '95iabs0j': {
      'en': '2 Members',
      'es': '',
    },
    'k6xfg0w8': {
      'en': 'Latest Activity',
      'es': '',
    },
    '0vxq56qg': {
      'en': 'Mon, 24',
      'es': '',
    },
    'xtzblges': {
      'en': '4:00pm',
      'es': '',
    },
    'wel1qw4w': {
      'en': 'My Progress',
      'es': '',
    },
    '6rymar7l': {
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
    '7bwdyr0a': {
      'en': 'Search',
      'es': '',
    },
    '12olm3ub': {
      'en': 'Inicio',
      'es': '',
    },
    '0sxeph2d': {
      'en': 'Customers',
      'es': '',
    },
    'ra1in90m': {
      'en': 'Medicamentos',
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
