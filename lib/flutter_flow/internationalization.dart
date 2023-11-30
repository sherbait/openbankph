import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'tl'];

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
    String? tlText = '',
  }) =>
      [enText, esText, tlText][languageIndex] ?? '';

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
  // loginPage
  {
    'o07j3mgv': {
      'en': 'Welcome back',
      'es': 'Empezar',
      'tl': '',
    },
    'fzxvw3mu': {
      'en': 'Login to access your account below.',
      'es': 'Crea tu cuenta a continuación.',
      'tl': '',
    },
    'a9j78va9': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'i7f18cve': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    'wztjmbn8': {
      'en': 'Password',
      'es': 'Contraseña',
      'tl': '',
    },
    'lw1jpm1f': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
      'tl': '',
    },
    'm2xyjvuf': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
      'tl': '',
    },
    'qbmoi1av': {
      'en': 'Login',
      'es': 'Acceso',
      'tl': '',
    },
    'cjqb8ial': {
      'en': 'Don\'t have an account?',
      'es': '¿No tienes una cuenta?',
      'tl': '',
    },
    'a0iimirx': {
      'en': 'Create',
      'es': '¿No tienes una cuenta?',
      'tl': '',
    },
    '1zqiw31h': {
      'en': 'About Us',
      'es': 'Continua como invitado',
      'tl': '',
    },
    '2bb3vct7': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // registerAccountPage
  {
    'gpokmd81': {
      'en': 'Get Started',
      'es': 'Empezar',
      'tl': '',
    },
    'oitrrwgg': {
      'en': 'Create your account below.',
      'es': 'Crea tu cuenta a continuación.',
      'tl': '',
    },
    'gcwdqm4g': {
      'en': 'First Name',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'iam0xgwx': {
      'en': 'Enter your first name...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    '5cxifqzw': {
      'en': 'Last Name',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'xin8jhn5': {
      'en': 'Enter your last name...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    'nkwbowcz': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    '8lta7rs0': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    'bqv15dcf': {
      'en': 'Password',
      'es': 'Contraseña',
      'tl': '',
    },
    'joih97mn': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
      'tl': '',
    },
    'rzpiwq9p': {
      'en': 'Confirm Password',
      'es': 'Confirmar contraseña',
      'tl': '',
    },
    'eyfkffka': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
      'tl': '',
    },
    '3u2y6z58': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'xrsp50ym': {
      'en': 'The email address is badly formatted.',
      'es': '',
      'tl': '',
    },
    '5vp9p5lk': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'mnykfl0i': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'pqe1o9k7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'l0nvqz2v': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    't5b2hlpq': {
      'en': 'Email is not a valid format.',
      'es': '',
      'tl': '',
    },
    'm6xigdzm': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '9wlk6oqz': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'kt8jvg41': {
      'en': 'Minimum 10 characters is required.',
      'es': '',
      'tl': '',
    },
    '1s7ec6ar': {
      'en': 'Maximum 512 characters only.',
      'es': '',
      'tl': '',
    },
    'af8te8p1': {
      'en':
          'Password must meet the requirements\n- Minimum 10 characters.\n- At least one digit (0-9).\n- At least one uppercase letter (A-Z).\n- At least one lowercase letter (a-z).\n- At least one special character that is not alphanumeric.',
      'es': '',
      'tl': '',
    },
    's2poefdb': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'o56yf1z3': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'realrs9u': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '5kmjfwsk': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'tl': '',
    },
    '3twynvfz': {
      'en': 'Login',
      'es': '¿Ya tienes una cuenta?',
      'tl': '',
    },
    '9ssznj0g': {
      'en': 'Already have an account?',
      'es': '¿Ya tienes una cuenta?',
      'tl': '',
    },
    'momge5oj': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // completeProfilePage
  {
    'yhcaf7r2': {
      'en': 'Complete Profile',
      'es': 'Perfil completo',
      'tl': '',
    },
    'r6npjsue': {
      'en': 'Upload a photo for us to easily identify you.',
      'es': 'Sube una foto para que te identifiquemos fácilmente.',
      'tl': '',
    },
    't478rx4o': {
      'en': 'Your Name',
      'es': 'Tu nombre',
      'tl': '',
    },
    'hn7vlwhf': {
      'en': 'Display name',
      'es': '',
      'tl': '',
    },
    'n636qnrx': {
      'en': 'Your Age',
      'es': 'Su edad',
      'tl': '',
    },
    's7yvjzbs': {
      'en': 'i.e. 34',
      'es': 'es decir, 34',
      'tl': '',
    },
    '72ii0waq': {
      'en': 'Your Title',
      'es': 'Tu título',
      'tl': '',
    },
    'pf8glhkg': {
      'en': 'How would you like to be addressed?',
      'es': '¿Cual es tu posicion?',
      'tl': '',
    },
    'hbhd3bdt': {
      'en': 'Complete Profile',
      'es': 'Perfil completo',
      'tl': '',
    },
    'w75dikic': {
      'en': 'Skip for Now',
      'es': 'Saltar por ahora',
      'tl': '',
    },
    '1eac148w': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'cw1bgq3c': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'ungk0w1k': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'ew7dbn3s': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'jhhlgzk5': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    '4k3jnl38': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // forgotPasswordPage
  {
    'g416xg9f': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'tl': '',
    },
    'xaiad71o': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'es':
          'Introduce el correo electrónico asociado a tu cuenta y te enviaremos un código de verificación.',
      'tl': '',
    },
    'u4nuk910': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    '37kotxi0': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    'hiwpaze1': {
      'en': 'Send Reset Link',
      'es': 'Enviar enlace de reinicio',
      'tl': '',
    },
    '598b8d3m': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // onboarding
  {
    'i8hl2uua': {
      'en': 'Create Budgets',
      'es': 'Crear presupuestos',
      'tl': '',
    },
    'hxtwax0y': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
      'tl': '',
    },
    'mjy3ljln': {
      'en': 'Keep Track of Spending',
      'es': 'Mantenga un registro de los gastos',
      'tl': '',
    },
    'uf9k1spp': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
      'tl': '',
    },
    '9c4outzf': {
      'en': 'Budget Analysis',
      'es': 'Análisis de presupuesto',
      'tl': '',
    },
    'q30ina4f': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
      'tl': '',
    },
    'ypt7b97g': {
      'en': 'Create Your Budget',
      'es': 'Crea tu presupuesto',
      'tl': '',
    },
    'oo0kk9qe': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // createBudgetBegin
  {
    'xod9iwab': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
      'tl': '',
    },
    'wih71x51': {
      'en': 'Amount',
      'es': 'Monto',
      'tl': '',
    },
    'qk15nsmc': {
      'en': 'Budget Name',
      'es': 'Nombre del presupuesto',
      'tl': '',
    },
    'iphvcuwc': {
      'en': 'Description',
      'es': 'Descripción',
      'tl': '',
    },
    'v2shqq3z': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
      'tl': '',
    },
    'knu0nxbp': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
      'tl': '',
    },
    '79au6dyg': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
      'tl': '',
    },
    'cs1cy7tg': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // MY_Card
  {
    'xn2so8km': {
      'en': 'My Card',
      'es': 'Mi tarjeta',
      'tl': '',
    },
    '6t7n9ugd': {
      'en': 'Balance',
      'es': 'Equilibrio',
      'tl': '',
    },
    'h3086ma4': {
      'en': '\$7,630',
      'es': '\$7,630',
      'tl': '',
    },
    'lr97k2rc': {
      'en': '**** 0149',
      'es': '**** 0149',
      'tl': '',
    },
    'l9racj60': {
      'en': '05/25',
      'es': '25/05',
      'tl': '',
    },
    '9b0j67se': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'axrvkhrv': {
      'en': '+\$12,402',
      'es': '+\$12,402',
      'tl': '',
    },
    '0d7w9e0i': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'mggh8wu7': {
      'en': 'Spending',
      'es': 'Gasto',
      'tl': '',
    },
    'c5bszisf': {
      'en': '-\$8,392',
      'es': '-\$8,392',
      'tl': '',
    },
    '85pb8msl': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'yet7zk5d': {
      'en': 'Quick Service',
      'es': 'Servicio rapido',
      'tl': '',
    },
    '8bnd6lco': {
      'en': 'Transfer',
      'es': 'Transferir',
      'tl': '',
    },
    'roobc02h': {
      'en': 'Pause Card',
      'es': 'Tarjeta de pausa',
      'tl': '',
    },
    '27pb7ji4': {
      'en': 'Transaction',
      'es': 'Transacción',
      'tl': '',
    },
    'xs4cn7uk': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'm8rhanhc': {
      'en': '•',
      'es': '•',
      'tl': '',
    },
  },
  // MY_Budgets
  {
    'cd0zp71n': {
      'en': 'My Budget',
      'es': 'Mi presupuesto',
      'tl': '',
    },
    'hfwbiivj': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'jjj3ydb1': {
      'en': '+\$12,402',
      'es': '+\$12,402',
      'tl': '',
    },
    'ns4vt604': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'wcsc04wg': {
      'en': 'Spending',
      'es': 'Gasto',
      'tl': '',
    },
    'a5zzlh8f': {
      'en': '-\$8,392',
      'es': '-\$8,392',
      'tl': '',
    },
    '8xnbsdnb': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'c81i1ybg': {
      'en': 'Total Spent',
      'es': 'Total gastado',
      'tl': '',
    },
    'ah4t7cpx': {
      'en': 'Advertising Budget',
      'es': 'Presupuesto publicitario',
      'tl': '',
    },
    '0tsohlub': {
      'en': '\$3,000',
      'es': '\$3,000',
      'tl': '',
    },
    '5y1u9kxg': {
      'en': '4 Days Left',
      'es': '4 días restantes',
      'tl': '',
    },
    '4jknsif6': {
      'en': 'Total Spent',
      'es': 'Total gastado',
      'tl': '',
    },
    'o9rmbnd7': {
      'en': '\$2,502',
      'es': '\$2,502',
      'tl': '',
    },
    'fn6kvat8': {
      'en': 'Advertising Budget',
      'es': 'Presupuesto publicitario',
      'tl': '',
    },
    '6uht91yb': {
      'en': '\$3,000',
      'es': '\$3,000',
      'tl': '',
    },
    '1qm6rhod': {
      'en': '4 Days Left',
      'es': '4 días restantes',
      'tl': '',
    },
    '65tvvjcw': {
      'en': 'Total Spent',
      'es': 'Total gastado',
      'tl': '',
    },
    'c03678eq': {
      'en': '\$2,502',
      'es': '\$2,502',
      'tl': '',
    },
    'ofz2zvlc': {
      'en': '•',
      'es': '•',
      'tl': '',
    },
  },
  // paymentDetails
  {
    'j0yzgf4n': {
      'en': 'Details',
      'es': 'Detalles',
      'tl': '',
    },
    'zv72ekdw': {
      'en': 'Amount',
      'es': 'Monto',
      'tl': '',
    },
    '0rjyjwed': {
      'en': 'Vendor',
      'es': 'Vendedor',
      'tl': '',
    },
    'eeyn6dk2': {
      'en': 'When',
      'es': 'Cuándo',
      'tl': '',
    },
    'lccxx6eu': {
      'en': 'Reason',
      'es': 'Razón',
      'tl': '',
    },
    'jzyax4hn': {
      'en': 'Spent by',
      'es': 'gastado por',
      'tl': '',
    },
    'i4r9jqwn': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // MY_profilePage
  {
    'f1bvbey3': {
      'en': 'My Account',
      'es': 'Mi cuenta',
      'tl': '',
    },
    'i61y9ibx': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'tl': '',
    },
    '03k0vw86': {
      'en': 'Change Password',
      'es': 'Cambia la contraseña',
      'tl': '',
    },
    '6w6wv95p': {
      'en': 'Notification Settings',
      'es': 'Configuración de las notificaciones',
      'tl': '',
    },
    '9aogde79': {
      'en': 'About Us',
      'es': 'Tutorial',
      'tl': '',
    },
    'eojlfs66': {
      'en': 'Privacy Policy',
      'es': 'Política de privacidad',
      'tl': '',
    },
    'jjx3fjci': {
      'en': 'Support',
      'es': 'Política de privacidad',
      'tl': '',
    },
    '2ll42t1u': {
      'en': 'Dark Mode',
      'es': '',
      'tl': '',
    },
    '8d386226': {
      'en': 'Light Mode',
      'es': '',
      'tl': '',
    },
    '8srr2k0j': {
      'en': '•',
      'es': '•',
      'tl': '',
    },
  },
  // budgetDetails
  {
    'p0gf1lfy': {
      'en': 'Per Month',
      'es': 'Por mes',
      'tl': '',
    },
    'ti7ipegi': {
      'en': 'Total Spent',
      'es': 'Total gastado',
      'tl': '',
    },
    'ifi6fmsa': {
      'en': 'Transactions',
      'es': 'Actas',
      'tl': '',
    },
    'ak9m8szp': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'l53kroui': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Transfer Complete',
      'es': 'transferencia completa',
      'tl': '',
    },
    'iq9jjji8': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'es':
          'Buen trabajo, transfirió fondos con éxito. Los fondos pueden tardar unos días en salir de su cuenta.',
      'tl': '',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'es': 'Okey',
      'tl': '',
    },
    'ndkybnrt': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // transferFunds
  {
    'pe3o18oh': {
      'en': 'Transfer Funds',
      'es': 'Transferir fondos',
      'tl': '',
    },
    '3ct4fj7p': {
      'en': 'Change Account',
      'es': 'Cambiar cuenta',
      'tl': '',
    },
    '65q8ih1u': {
      'en': 'TEST1',
      'es': '',
      'tl': '',
    },
    'd3qeqqis': {
      'en': 'TEST2',
      'es': '',
      'tl': '',
    },
    'uxo87fjc': {
      'en': 'Transfer From',
      'es': '',
      'tl': '',
    },
    'wngoi0v4': {
      'en': 'Available balance:',
      'es': 'El nuevo saldo de su cuenta es:',
      'tl': '',
    },
    'w4uwunhj': {
      'en': 'TEST1',
      'es': '',
      'tl': '',
    },
    '8d1kixjo': {
      'en': 'TEST2',
      'es': '',
      'tl': '',
    },
    'ok5xluvk': {
      'en': 'Transfer To',
      'es': '',
      'tl': '',
    },
    'ynie0pc5': {
      'en': 'Purpose',
      'es': '\$ Monto',
      'tl': '',
    },
    'qun84vul': {
      'en': '₱ Amount',
      'es': '\$ Monto',
      'tl': '',
    },
    'em0xgl00': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'u3g1qst1': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '087el8xy': {
      'en': 'Field is required.',
      'es': '',
      'tl': '',
    },
    'b2yktx0a': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'xaw2jdst': {
      'en': 'Send Transfer',
      'es': 'Enviar transferencia',
      'tl': '',
    },
    'xku4zxbe': {
      'en': 'Tap above to complete transfer',
      'es': 'Toque arriba para completar la transferencia',
      'tl': '',
    },
    'imaejg7x': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // requestFunds
  {
    'wv1862li': {
      'en': 'Request Funds',
      'es': 'Pedír fondos',
      'tl': '',
    },
    'xvj3fan8': {
      'en': '\$ Amount',
      'es': '\$ Monto',
      'tl': '',
    },
    'wwjahvpl': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
      'tl': '',
    },
    'sx0vvzxd': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
      'tl': '',
    },
    'ai453kej': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
      'tl': '',
    },
    'wo9cebk7': {
      'en': 'Select Transfer',
      'es': '',
      'tl': '',
    },
    'rcevwwju': {
      'en': 'Reason',
      'es': 'Razón',
      'tl': '',
    },
    'uvrt7im0': {
      'en': 'Request Funds',
      'es': 'Pedír fondos',
      'tl': '',
    },
    '7y89msg9': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
      'tl': '',
    },
    'xk0bwox3': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // createBudget
  {
    'smbfunwu': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
      'tl': '',
    },
    'fcgw57wj': {
      'en': 'Amount',
      'es': 'Monto',
      'tl': '',
    },
    'onjddqdc': {
      'en': 'Budget Name',
      'es': 'Nombre del presupuesto',
      'tl': '',
    },
    'g83gfmaf': {
      'en': 'Description',
      'es': 'Descripción',
      'tl': '',
    },
    '0iex13x2': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
      'tl': '',
    },
    'jy5q09h1': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
      'tl': '',
    },
    '8hzaiw1r': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
      'tl': '',
    },
    'mos068mm': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // transaction_ADD
  {
    'qywon4k1': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
      'tl': '',
    },
    'bh9tad8e': {
      'en': 'Amount',
      'es': 'Monto',
      'tl': '',
    },
    'ohewrgsv': {
      'en': 'Spent At',
      'es': 'gastado en',
      'tl': '',
    },
    '3170k9n1': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
      'tl': '',
    },
    'abz6nm8z': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
      'tl': '',
    },
    '3y95vtb6': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
      'tl': '',
    },
    '861el4k4': {
      'en': 'Select Budget',
      'es': 'Seleccionar presupuesto',
      'tl': '',
    },
    'swxms7ln': {
      'en': 'Reason',
      'es': 'Razón',
      'tl': '',
    },
    'uqfgu088': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
      'tl': '',
    },
    '9stmpsf0': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
      'tl': '',
    },
    'gzhmf1t6': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
      'tl': '',
    },
    '7trcsuiu': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // transaction_EDIT
  {
    's300dyxl': {
      'en': 'Edit Transaction',
      'es': 'Editar transacción',
      'tl': '',
    },
    '5xgwlwjj': {
      'en': 'Amount',
      'es': 'Monto',
      'tl': '',
    },
    '720k2d98': {
      'en': 'Spent At',
      'es': 'gastado en',
      'tl': '',
    },
    'df1ingy2': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
      'tl': '',
    },
    '5kzmka3y': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
      'tl': '',
    },
    'nvtz0bpd': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
      'tl': '',
    },
    'l3bqo3oh': {
      'en': 'Select Budget',
      'es': 'Seleccionar presupuesto',
      'tl': '',
    },
    '0lw03w43': {
      'en': 'Reason',
      'es': 'Razón',
      'tl': '',
    },
    '3eftlbxd': {
      'en': 'Update Transaction',
      'es': 'Actualizar transacción',
      'tl': '',
    },
    '4atjd0yh': {
      'en': 'Tap above to save your changes.',
      'es': 'Toca arriba para guardar tus cambios.',
      'tl': '',
    },
    'pg18rcyu': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
      'tl': '',
    },
    '12if11ss': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // editProfilePage
  {
    '4rzqov3y': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'tl': '',
    },
    'zoxan2gi': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'tl': '',
    },
    'lvwoka6b': {
      'en': 'Your Name',
      'es': 'Tu nombre',
      'tl': '',
    },
    '7ngzsr7s': {
      'en': 'Please enter your display name...',
      'es': 'Por favor ingrese un número valido...',
      'tl': '',
    },
    'z4fstn5l': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'jozgvwyg': {
      'en': 'Your email',
      'es': 'Tu correo electrónico',
      'tl': '',
    },
    '8h1cjk5a': {
      'en': 'Your Age',
      'es': 'Su edad',
      'tl': '',
    },
    '5v21r6gb': {
      'en': 'i.e. 34',
      'es': 'es decir, 34',
      'tl': '',
    },
    'zvymbfia': {
      'en': 'Your Title',
      'es': 'Tu título',
      'tl': '',
    },
    'i6edcl52': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'tl': '',
    },
    '59naq8ur': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // changePassword
  {
    'l5iggwaz': {
      'en': 'Change Password',
      'es': 'Cambia la contraseña',
      'tl': '',
    },
    '2b97u8y5': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'es':
          'Ingrese el correo electrónico asociado con su cuenta y le enviaremos un enlace para restablecer su contraseña.',
      'tl': '',
    },
    'ajy1c3r9': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'hsqfoxya': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'tl': '',
    },
    'if4pz6lm': {
      'en': 'Send Reset Link',
      'es': 'Enviar enlace de reinicio',
      'tl': '',
    },
    '5tvk9lv0': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // notificationsSettings
  {
    'sc4ff4ce': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'tl': '',
    },
    'r72zvrv5': {
      'en':
          'Choose what notifications you want to recieve below and we will update the settings.',
      'es':
          'Elija qué notificaciones desea recibir a continuación y actualizaremos la configuración.',
      'tl': '',
    },
    'gjygkr0n': {
      'en': 'Push Notifications',
      'es': 'Notificaciones push',
      'tl': '',
    },
    '3y3yhxbk': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'es':
          'Reciba notificaciones Push de nuestra aplicación de forma semi regular.',
      'tl': '',
    },
    '1ytebj35': {
      'en': 'Email Notifications',
      'es': 'Notificaciónes de Correo Electrónico',
      'tl': '',
    },
    '9lvh5nst': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'es':
          'Reciba notificaciones por correo electrónico de nuestro equipo de marketing sobre nuevas funciones.',
      'tl': '',
    },
    '69d2j74u': {
      'en': 'Location Services',
      'es': 'Servicios de localización',
      'tl': '',
    },
    '3k8cuv0d': {
      'en':
          'Allow us to track your location, this helps keep track of transactions and keeps you safe.',
      'es':
          'Permítanos rastrear su ubicación, esto ayuda a realizar un seguimiento de los gastos y lo mantiene seguro.',
      'tl': '',
    },
    'isgrgbfs': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'tl': '',
    },
    'a96mlyeh': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // privacyPolicyPage
  {
    'alczfiiy': {
      'en': 'Privacy Policy',
      'es': 'Política de privacidad',
      'tl': '',
    },
    'fvsfg5on': {
      'en': 'How we use your data',
      'es': 'Cómo usamos sus datos',
      'tl': '',
    },
    'nbiyrnzl': {
      'en':
          'Privacy Policy\n\nThis Privacy Policy describes how [Your Company/Organization] ("we," "us," or "our") collects, uses, maintains, and discloses information collected from users ("User" or "you") of our website [Your Website URL] ("Site").\n\nPersonal Identification Information\n\nWe may collect personal identification information from Users in various ways, including but not limited to when Users visit our Site, register on the Site, place an order, subscribe to the newsletter, respond to a survey, fill out a form, and in connection with other activities, services, features, or resources we make available on our Site. Users may be asked for, as appropriate, name, email address, mailing address, phone number, credit card information. Users may, however, visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site-related activities.\n\nNon-Personal Identification Information\n\nWe may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer, and technical information about Users\' means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.\n\nWeb Browser Cookies\n\nOur Site may use "cookies" to enhance User experience. Users\' web browsers place cookies on their hard drive for record-keeping purposes and sometimes to track information about them. Users may choose to set their web browser to refuse cookies or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.\n\nHow We Use Collected Information\n\n[Your Company/Organization] may collect and use Users\' personal information for the following purposes:\n\nTo improve customer service\nTo personalize user experience\nTo improve our Site\nTo process payments\nTo send periodic emails\nHow We Protect Your Information\n\nWe adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information, username, password, transaction information, and data stored on our Site.\n\nSharing Your Personal Information\n\nWe do not sell, trade, or rent Users\' personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers.\n\nChanges to This Privacy Policy\n\n[Your Company/Organization] has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.\n\nYour Acceptance of These Terms\n\nBy using this Site, you signify your acceptance of this policy.',
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem entero vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus en massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Cómodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'tl': '',
    },
    'oks4x95o': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // tutorial_PROFILE
  {
    '38wb3rix': {
      'en': 'Tutorial',
      'es': 'Tutorial',
      'tl': '',
    },
    'o6prpb1q': {
      'en': 'Create Budgets',
      'es': 'Crear presupuestos',
      'tl': '',
    },
    '292pbdw7': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
      'tl': '',
    },
    'b10xvuf9': {
      'en': 'Keep Track of Spending',
      'es': 'Mantenga un registro de los gastos',
      'tl': '',
    },
    't6k1smsm': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
      'tl': '',
    },
    'u8xxj427': {
      'en': 'Budget Analysis',
      'es': 'Análisis de presupuesto',
      'tl': '',
    },
    'iqi0pkmb': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
      'tl': '',
    },
    'uydm0fnm': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // MY_homePage
  {
    'ucqlrrlk': {
      'en': 'Welcome,',
      'es': 'Bienvenidos,',
      'tl': '',
    },
    'c10wb3ot': {
      'en': 'Your account details are below.',
      'es': 'Los detalles de su cuenta se encuentran a continuación.',
      'tl': '',
    },
    'nb29ps2o': {
      'en': '1 New Alert',
      'es': '1 nueva alerta',
      'tl': '',
    },
    'vgt9s153': {
      'en': 'View Now',
      'es': 'Ver ahora',
      'tl': '',
    },
    'pnvkw3b7': {
      'en':
          'We noticed you haven\'t verified your email account. Verify now to unlock full access to our platform\'s features. Check your inbox and spam folder for the verification link. Thank you for joining us!',
      'es':
          'Notamos un pequeño cargo que está fuera de lugar en esta cuenta, revíselo.',
      'tl': '',
    },
    'h6hm6h4d': {
      'en': 'My Deposit Accounts',
      'es': 'Ingreso',
      'tl': '',
    },
    'bo032078': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'rv0q5c5q': {
      'en': 'My Loans',
      'es': 'Gasto',
      'tl': '',
    },
    '6wqehupj': {
      'en': '4.5% ',
      'es': '4,5%',
      'tl': '',
    },
    'lmo3ko2i': {
      'en': 'Quick Services',
      'es': 'Servicios rápidos',
      'tl': '',
    },
    '774itrkn': {
      'en': 'Open deposit',
      'es': 'Mi banco',
      'tl': '',
    },
    'xs2as0vf': {
      'en': 'Apply for loan',
      'es': 'Transferir',
      'tl': '',
    },
    'g8yaaa7f': {
      'en': 'Transfer funds',
      'es': 'Actividad',
      'tl': '',
    },
    'l2wafixv': {
      'en': 'Transaction',
      'es': 'Transacción',
      'tl': '',
    },
    'x7genw3b': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
      'tl': '',
    },
    'sx89z9yb': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'vs2ciwyv': {
      'en': '\$50.00',
      'es': '\$50.00',
      'tl': '',
    },
    'hpegoloy': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
      'tl': '',
    },
    'c805m53i': {
      'en': '•',
      'es': 'Casa',
      'tl': '',
    },
  },
  // homePage_alt
  {
    'xdh0z8qh': {
      'en': 'Welcome,',
      'es': 'Bienvenidos,',
      'tl': '',
    },
    'v74pa882': {
      'en': 'Andrew',
      'es': 'Andrés',
      'tl': '',
    },
    'rzpg3cvh': {
      'en': 'Your latest updates are below.',
      'es': 'Sus últimas actualizaciones se encuentran a continuación.',
      'tl': '',
    },
    'flto6ti8': {
      'en': 'Total Balance',
      'es': 'Balance total',
      'tl': '',
    },
    'g07h0azf': {
      'en': '\$25,281',
      'es': '\$25,281',
      'tl': '',
    },
    'v9ghmn0y': {
      'en': 'Total Balance',
      'es': 'Balance total',
      'tl': '',
    },
    '7vf40ybo': {
      'en': '\$25,281',
      'es': '\$25,281',
      'tl': '',
    },
    'k4scs2cu': {
      'en': 'Total Balance',
      'es': 'Balance total',
      'tl': '',
    },
    'cvrbfozm': {
      'en': '\$25,281',
      'es': '\$25,281',
      'tl': '',
    },
    'a33ldz0h': {
      'en': 'Next Payroll',
      'es': 'Nómina siguiente',
      'tl': '',
    },
    '3dgzzz79': {
      'en': '\$25,281',
      'es': '\$25,281',
      'tl': '',
    },
    'hp28r17l': {
      'en': 'Debit Date',
      'es': 'Fecha de débito',
      'tl': '',
    },
    'k04gl6sz': {
      'en': 'Aug 31, 2021',
      'es': '31 de agosto de 2021',
      'tl': '',
    },
    'd5tcdo3w': {
      'en': '4 days left',
      'es': '4 días restantes',
      'tl': '',
    },
    '8wofym4i': {
      'en': '1 New Alert',
      'es': '1 nueva alerta',
      'tl': '',
    },
    'kaq4nzj6': {
      'en': 'Fraud Alert',
      'es': 'Alerta de fraude',
      'tl': '',
    },
    '7zcrtqx6': {
      'en':
          'We noticed a small charge that is out of character of this account, please review.',
      'es':
          'Notamos un pequeño cargo que está fuera de lugar en esta cuenta, revíselo.',
      'tl': '',
    },
    '23yxoc9m': {
      'en': 'View Now',
      'es': 'Ver ahora',
      'tl': '',
    },
    'a86mwddx': {
      'en': 'Marketing Budget',
      'es': 'Presupuesto de marketing',
      'tl': '',
    },
    '6c2o39hz': {
      'en': '\$3,000',
      'es': '\$3,000',
      'tl': '',
    },
    '5subrra4': {
      'en': 'Total Spent',
      'es': 'Total gastado',
      'tl': '',
    },
    '0wtm2m51': {
      'en': '\$2,502',
      'es': '\$2,502',
      'tl': '',
    },
    'bp9d56pc': {
      'en': '4 days left',
      'es': '4 días restantes',
      'tl': '',
    },
    'b8oj0pck': {
      'en': 'Team Name',
      'es': 'Nombre del equipo',
      'tl': '',
    },
    '87ospwsq': {
      'en': '\$5,000',
      'es': '\$5,000',
      'tl': '',
    },
    'jzfejglt': {
      'en': 'Head of Design',
      'es': 'Jefe de Diseño',
      'tl': '',
    },
    'zm0lhm2a': {
      'en': '[Time Stamp]',
      'es': '[Marca de tiempo]',
      'tl': '',
    },
    '8hu2v2im': {
      'en': '•',
      'es': '•',
      'tl': '',
    },
  },
  // homePage_alt_1
  {
    '51kawpgz': {
      'en': 'Welcome,',
      'es': 'Bienvenidos,',
      'tl': '',
    },
    'izgc0c6r': {
      'en': 'Andrew',
      'es': 'Andrés',
      'tl': '',
    },
    '30kx6e5v': {
      'en': 'Your latest updates are below.',
      'es': 'Sus últimas actualizaciones se encuentran a continuación.',
      'tl': '',
    },
    'wknu2tm4': {
      'en': 'Balance',
      'es': 'Equilibrio',
      'tl': '',
    },
    'syy689nt': {
      'en': '\$7,630',
      'es': '\$7,630',
      'tl': '',
    },
    'hhyb9x4x': {
      'en': '**** 0149',
      'es': '**** 0149',
      'tl': '',
    },
    'kg2tmby7': {
      'en': '05/25',
      'es': '25/05',
      'tl': '',
    },
    'y7zomzzp': {
      'en': 'Quick Service',
      'es': 'Servicio rapido',
      'tl': '',
    },
    'rfozud9v': {
      'en': 'Transfer',
      'es': 'Transferir',
      'tl': '',
    },
    'pcrarg0a': {
      'en': 'Activity',
      'es': 'Actividad',
      'tl': '',
    },
    'zmjsfzgg': {
      'en': 'My Bank',
      'es': 'Mi banco',
      'tl': '',
    },
    'dfjtbkbo': {
      'en': 'Transaction',
      'es': 'Transacción',
      'tl': '',
    },
    'g7t9krj7': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
      'tl': '',
    },
    'vupu5y5p': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'bj5qnrj5': {
      'en': '\$50.00',
      'es': '\$50.00',
      'tl': '',
    },
    'd1n5mbq7': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
      'tl': '',
    },
    '2thn73jc': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
      'tl': '',
    },
    '1fjdiibo': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'ld7s2fpn': {
      'en': '\$50.00',
      'es': '\$50.00',
      'tl': '',
    },
    'ft8bu1we': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
      'tl': '',
    },
    '8t6ddwco': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
      'tl': '',
    },
    'td15kjsa': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    'qmjqp9a6': {
      'en': '\$50.00',
      'es': '\$50.00',
      'tl': '',
    },
    '9qc797et': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
      'tl': '',
    },
    '8pdmehj2': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
      'tl': '',
    },
    'krrhjgc4': {
      'en': 'Income',
      'es': 'Ingreso',
      'tl': '',
    },
    '53m2u0s2': {
      'en': '\$50.00',
      'es': '\$50.00',
      'tl': '',
    },
    'aks5zz4f': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
      'tl': '',
    },
    'f3hxl69y': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // budget_DELETE
  {
    'pozov0xz': {
      'en': 'Delete Budget',
      'es': 'Eliminar presupuesto',
      'tl': '',
    },
    'aptjmof0': {
      'en':
          'If you delete this budget, your transactions will no longer be associated with it.',
      'es':
          'Si elimina este presupuesto, sus transacciones ya no estarán asociadas a él.',
      'tl': '',
    },
    '9l7pbjcj': {
      'en': 'Delete Budget',
      'es': 'Eliminar presupuesto',
      'tl': '',
    },
    'u0kr38at': {
      'en': 'Tap above to remove this bude',
      'es': 'Toque arriba para eliminar este bude',
      'tl': '',
    },
    'b1xp801p': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // profilepage
  {
    'hhb6veym': {
      'en': 'Wallet Balance',
      'es': 'Saldo de la cartera',
      'tl': '',
    },
    'fgf8icmv': {
      'en': '\$23,000',
      'es': '\$23,000',
      'tl': '',
    },
    '2rrr446m': {
      'en': '3 currencies',
      'es': '3 monedas',
      'tl': '',
    },
    'r04m9nxs': {
      'en': 'My Bank',
      'es': 'Mi banco',
      'tl': '',
    },
    '8nac51xz': {
      'en': 'Transfer',
      'es': 'Transferir',
      'tl': '',
    },
    's56t3xya': {
      'en': 'Activity',
      'es': 'Actividad',
      'tl': '',
    },
    'vewa5op5': {
      'en': 'Bitcoin',
      'es': 'Bitcoin',
      'tl': '',
    },
    '9oun2uok': {
      'en': '\$7,302',
      'es': '\$7,302',
      'tl': '',
    },
    'yla7uncg': {
      'en': '32% of portfolio',
      'es': '32% de la cartera',
      'tl': '',
    },
    '7hsm7t9z': {
      'en': ' ',
      'es': '',
      'tl': '',
    },
    'opob20j8': {
      'en': 'Solona',
      'es': 'Soloña',
      'tl': '',
    },
    'fi3cleyj': {
      'en': '\$7,302',
      'es': '\$7,302',
      'tl': '',
    },
    '606emxw1': {
      'en': '40% of portfolio',
      'es': '40% de la cartera',
      'tl': '',
    },
    'qx0ykpbm': {
      'en': ' ',
      'es': '',
      'tl': '',
    },
    'l2io5lul': {
      'en': 'Dogecoin',
      'es': 'dogecoin',
      'tl': '',
    },
    'krsyyttw': {
      'en': '\$7,302',
      'es': '\$7,302',
      'tl': '',
    },
    '4mvfe3pe': {
      'en': '40% of portfolio',
      'es': '40% de la cartera',
      'tl': '',
    },
    '6cm4jjje': {
      'en': ' ',
      'es': '',
      'tl': '',
    },
    'vox9t1s0': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // supportPage
  {
    'lpakywnw': {
      'en': 'Submit Ticket',
      'es': '',
      'tl': '',
    },
    '3s0wj7qq': {
      'en': 'Welcome to support',
      'es': '',
      'tl': '',
    },
    'k368zkr2': {
      'en': 'Submit a Ticket',
      'es': '',
      'tl': '',
    },
    'faeg1cy0': {
      'en': 'Call Us',
      'es': '',
      'tl': '',
    },
    'rmwagzni': {
      'en': 'Email Us',
      'es': '',
      'tl': '',
    },
    'qloverg6': {
      'en': 'Search FAQs',
      'es': '',
      'tl': '',
    },
    'soc5eh7t': {
      'en': 'Subject',
      'es': '',
      'tl': '',
    },
    '6ups4qid': {
      'en': 'What is it about?',
      'es': '',
      'tl': '',
    },
    '0ggxh94x': {
      'en': 'Your Name',
      'es': '',
      'tl': '',
    },
    'vy3tp4f2': {
      'en': 'How should we address you?',
      'es': '',
      'tl': '',
    },
    'npnxiom1': {
      'en': 'Short description of what is going on...',
      'es': '',
      'tl': '',
    },
    'm8jeiyo5': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'utjandb6': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '3tfu2i2k': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'pdznrn5y': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'rk8s97m5': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'zk463yf2': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'zubzzpde': {
      'en': 'Upload Screenshot',
      'es': '',
      'tl': '',
    },
    'ikileuia': {
      'en': 'Submit Ticket',
      'es': '',
      'tl': '',
    },
    'bz1flv03': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // searchBranches
  {
    '66o93nd3': {
      'en': 'Search for branches...',
      'es': '',
      'tl': '',
    },
    'zzzo9asy': {
      'en': 'Branches',
      'es': '',
      'tl': '',
    },
    'gjee00tg': {
      'en': 'Find a branch',
      'es': '',
      'tl': '',
    },
    '60yxo91n': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // aboutPage
  {
    'qz60hssl': {
      'en': 'General',
      'es': '',
      'tl': '',
    },
    'blqkwm4z': {
      'en': 'Branches',
      'es': '',
      'tl': '',
    },
    'qig6ppwp': {
      'en': 'ATMs',
      'es': '',
      'tl': '',
    },
    'qk3m4o1j': {
      'en': 'Website',
      'es': '',
      'tl': '',
    },
    'b0hc1d9c': {
      'en': 'Personal',
      'es': '',
      'tl': '',
    },
    'dek3sb1c': {
      'en': 'Deposits',
      'es': '',
      'tl': '',
    },
    '66oikma2': {
      'en': 'Loans',
      'es': '',
      'tl': '',
    },
    'ftwevefe': {
      'en': 'Version 1.0.0',
      'es': '',
      'tl': '',
    },
    'nbyv2y4o': {
      'en': 'About',
      'es': '',
      'tl': '',
    },
    'k2svsuhp': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // bankBranchesPage
  {
    'ajcz9of2': {
      'en': 'Branches',
      'es': '',
      'tl': '',
    },
    'tguggcty': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // bankAtmsPage
  {
    '1jvage8i': {
      'en': 'ATMs',
      'es': '',
      'tl': '',
    },
    'psx1sv58': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // bankDepositsPage
  {
    'gk54khji': {
      'en': 'Deposits',
      'es': '',
      'tl': '',
    },
    'tw08qumn': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // bankLoansPage
  {
    'c66y4ii0': {
      'en': 'Loans',
      'es': '',
      'tl': '',
    },
    '5b02g7zo': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // productApplicationPage
  {
    'zwkq5n61': {
      'en': 'New Application',
      'es': 'Transferir fondos',
      'tl': '',
    },
    '86jqbk0g': {
      'en': 'Product Type',
      'es': '',
      'tl': '',
    },
    'loo8yegh': {
      'en': 'Your information',
      'es': '',
      'tl': '',
    },
    'qzq3adkb': {
      'en': 'Title',
      'es': '',
      'tl': '',
    },
    'q5wey6ei': {
      'en': 'Title',
      'es': '',
      'tl': '',
    },
    '76usexeb': {
      'en': 'Name',
      'es': '',
      'tl': '',
    },
    'iv4sow0s': {
      'en': 'Your legal name',
      'es': '',
      'tl': '',
    },
    'bri7jhgi': {
      'en': 'Suffix',
      'es': '',
      'tl': '',
    },
    'ea9r8yv4': {
      'en': 'Suffix',
      'es': '',
      'tl': '',
    },
    'cbqn9ele': {
      'en': 'Date of birth',
      'es': '',
      'tl': '',
    },
    'y3sl9fzg': {
      'en': 'Date you were born',
      'es': '',
      'tl': '',
    },
    'nru4juyt': {
      'en': 'Select',
      'es': '',
      'tl': '',
    },
    'xl9ifrui': {
      'en': 'Phone',
      'es': '',
      'tl': '',
    },
    'b15jl7xa': {
      'en': 'e.g. +63 (901) 234-567',
      'es': '',
      'tl': '',
    },
    'jtyyano1': {
      'en': 'Family',
      'es': '',
      'tl': '',
    },
    'ralj7ecc': {
      'en': 'single',
      'es': '',
      'tl': '',
    },
    '7r8nklfd': {
      'en': 'married',
      'es': '',
      'tl': '',
    },
    '1vfktt25': {
      'en': 'widowed',
      'es': '',
      'tl': '',
    },
    'c93selzn': {
      'en': 'annulled',
      'es': '',
      'tl': '',
    },
    'x5liuj2x': {
      'en': 'Marital status',
      'es': '',
      'tl': '',
    },
    'stf3yi6h': {
      'en': '# of dependents',
      'es': '',
      'tl': '',
    },
    'zqz1cuje': {
      'en': '# of dependents',
      'es': '',
      'tl': '',
    },
    'v1l35p40': {
      'en': 'Education & Employment',
      'es': '',
      'tl': '',
    },
    'fjavsl0c': {
      'en': 'No formal education',
      'es': '',
      'tl': '',
    },
    'jgbg9ayw': {
      'en': 'Primary education (Elementary school)',
      'es': '',
      'tl': '',
    },
    'fohltg9z': {
      'en': 'Secondary education (High school or equivalent)',
      'es': '',
      'tl': '',
    },
    '9ej589je': {
      'en': 'Vocational/Technical training or certification',
      'es': '',
      'tl': '',
    },
    'it221wax': {
      'en': 'Associate\'s degree',
      'es': '',
      'tl': '',
    },
    'lbokeeg9': {
      'en': 'Bachelor\'s degree',
      'es': '',
      'tl': '',
    },
    'rxcgj8y6': {
      'en': 'Master\'s degree',
      'es': '',
      'tl': '',
    },
    'c22xc4k6': {
      'en': 'Doctorate (Ph.D., MD, JD, etc.)',
      'es': '',
      'tl': '',
    },
    '874vdt74': {
      'en': 'Professional degree (such as MD, JD, DDS, etc.)',
      'es': '',
      'tl': '',
    },
    'y11m6v5v': {
      'en': 'Highest education attained',
      'es': '',
      'tl': '',
    },
    'dklsi6c3': {
      'en': 'Employed (Full-time)',
      'es': '',
      'tl': '',
    },
    'y59v0bxf': {
      'en': 'Employed (Part-time)',
      'es': '',
      'tl': '',
    },
    'bdqscu5g': {
      'en': 'Self-employed',
      'es': '',
      'tl': '',
    },
    '5tmz23c4': {
      'en': 'Unemployed (actively seeking employment)',
      'es': '',
      'tl': '',
    },
    'c8q7cowp': {
      'en': 'Unemployed (not currently seeking employment)',
      'es': '',
      'tl': '',
    },
    'dd1edgu9': {
      'en': 'Retired',
      'es': '',
      'tl': '',
    },
    'ky3ega69': {
      'en': 'Student (full-time)',
      'es': '',
      'tl': '',
    },
    '5l2kqwap': {
      'en': 'Student (part-time)',
      'es': '',
      'tl': '',
    },
    'poxmy5p1': {
      'en': 'Homemaker',
      'es': '',
      'tl': '',
    },
    'l97hlwv8': {
      'en': 'Freelancer/Contractor',
      'es': '',
      'tl': '',
    },
    'hh3kf0kx': {
      'en': 'Employment status',
      'es': '',
      'tl': '',
    },
    'bcqpcgdh': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'ikb65fnb': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'twwi2kl0': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'e2b87vsh': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '607rwy6h': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'sake05wt': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '59uxyqop': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'rw5pnfom': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '5x8ctp8k': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    'vwlb6cmi': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    'fjmugng4': {
      'en': 'Field is required',
      'es': '',
      'tl': '',
    },
    '6pnz2zog': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'tl': '',
    },
    '3n9nmk1j': {
      'en': 'Submit',
      'es': 'Enviar transferencia',
      'tl': '',
    },
    'bfxugebm': {
      'en': 'Tap above to complete application',
      'es': 'Toque arriba para completar la transferencia',
      'tl': '',
    },
    'g0izk9of': {
      'en': 'Home',
      'es': 'Casa',
      'tl': '',
    },
  },
  // testProfile
  {
    'glm8blf3': {
      'en': 'Complete Profile',
      'es': '',
      'tl': '',
    },
    'rqy9hta6': {
      'en': 'Link your phone number',
      'es': '',
      'tl': '',
    },
    'zs9ki0wr': {
      'en': 'Enable security by connecting your phone number',
      'es': '',
      'tl': '',
    },
    'i89z6r2g': {
      'en': 'Your number here...',
      'es': '',
      'tl': '',
    },
    'pfs9wdmv': {
      'en': 'Your information',
      'es': '',
      'tl': '',
    },
    'tw541m5h': {
      'en': 'Your Name',
      'es': '',
      'tl': '',
    },
    '91smchqr': {
      'en': 'Email',
      'es': '',
      'tl': '',
    },
    'r14jzas1': {
      'en': 'Email',
      'es': '',
      'tl': '',
    },
    'sny0cm3m': {
      'en': 'City your were born',
      'es': '',
      'tl': '',
    },
    'xhba316a': {
      'en': 'City your were born',
      'es': '',
      'tl': '',
    },
    'a3zyngl3': {
      'en': '# of people on your team',
      'es': '',
      'tl': '',
    },
    '9hofgl1f': {
      'en': '# of people on your team',
      'es': '',
      'tl': '',
    },
    'td2w6tcv': {
      'en': 'Team Name',
      'es': '',
      'tl': '',
    },
    'rg38hooy': {
      'en': 'Team Name',
      'es': '',
      'tl': '',
    },
    'xm3wa7sa': {
      'en': 'Save Changes',
      'es': '',
      'tl': '',
    },
    'yvy2pl6q': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // MY_depositAccountsPage
  {
    'r1frfexr': {
      'en': 'Deposit Accounts',
      'es': '',
      'tl': '',
    },
    'l92ui8zh': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // MY_accountDetails
  {
    '87rfaar5': {
      'en': ' ',
      'es': '',
      'tl': '',
    },
    'p98wor2n': {
      'en': 'Transactions',
      'es': '',
      'tl': '',
    },
    '9p90mdbs': {
      'en': 'Balance:',
      'es': '',
      'tl': '',
    },
    '8uoqrwbj': {
      'en': 'Last Month',
      'es': '',
      'tl': '',
    },
    'mz94bgzp': {
      'en': 'Walden Books',
      'es': '',
      'tl': '',
    },
    'tvcdyvgq': {
      'en': 'Feb 15, 2022',
      'es': '',
      'tl': '',
    },
    'q02b6oof': {
      'en': '\$52.20',
      'es': '',
      'tl': '',
    },
    'zhtxhnb8': {
      'en': 'Border Bookstore',
      'es': '',
      'tl': '',
    },
    'zqbx7s0d': {
      'en': 'Feb 15, 2022',
      'es': '',
      'tl': '',
    },
    'm8i8fymu': {
      'en': '\$59.20',
      'es': '',
      'tl': '',
    },
    'kvo7n0ei': {
      'en': 'Account Details',
      'es': '',
      'tl': '',
    },
    'fkyt7kjv': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // MY_loanAccountsPage
  {
    's04d1v35': {
      'en': 'Loan Accounts',
      'es': '',
      'tl': '',
    },
    'eus2bpc0': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // bookAppointment
  {
    'sfzj3riz': {
      'en': 'Book Appointment',
      'es': 'Reservar una cita',
      'tl': '',
    },
    '4skzh9os': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
      'tl': '',
    },
    'b87tcas2': {
      'en': 'Emails will be sent to:',
      'es': 'Los correos electrónicos serán enviados a:',
      'tl': '',
    },
    'iicnw3dq': {
      'en': 'Booking For',
      'es': 'reserva para',
      'tl': '',
    },
    '5tkkg4yu': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
      'tl': '',
    },
    '7w5m45zt': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
      'tl': '',
    },
    'bmfmxg71': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
      'tl': '',
    },
    'prt95f0g': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
      'tl': '',
    },
    '7ohalsg9': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
      'tl': '',
    },
    'xukiv2ku': {
      'en': 'Choose Date',
      'es': 'Elija fecha',
      'tl': '',
    },
    'lpc88cht': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'tl': '',
    },
    'b5umyycx': {
      'en': 'Book Now',
      'es': 'Reservar ahora',
      'tl': '',
    },
  },
  // bookingOld
  {
    '8laf5zmk': {
      'en': 'Book Appointment',
      'es': 'Reservar una cita',
      'tl': '',
    },
    'udwhsu8p': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
      'tl': '',
    },
    'm6f5lawq': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'tl': '',
    },
    'yz52729g': {
      'en': 'Booking For',
      'es': 'reserva para',
      'tl': '',
    },
    'hdmqdmzq': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
      'tl': '',
    },
    'stpxpct6': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
      'tl': '',
    },
    'wvgk6obb': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
      'tl': '',
    },
    'xt7ujyt8': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
      'tl': '',
    },
    'andpn0t0': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
      'tl': '',
    },
    'ycaso9dc': {
      'en': 'Choose Date',
      'es': 'Elija fecha',
      'tl': '',
    },
    '2pmd2p3w': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'tl': '',
    },
    '13j05r8j': {
      'en': 'Book Now',
      'es': 'Reservar ahora',
      'tl': '',
    },
  },
  // editBooking
  {
    '6j668hma': {
      'en': 'Edit Appointment',
      'es': 'Editar cita',
      'tl': '',
    },
    'cbp936ta': {
      'en': 'Edit the fields below in order to change your appointment.',
      'es': 'Edite los campos a continuación para cambiar su cita.',
      'tl': '',
    },
    '6btfslje': {
      'en': 'Emails will be sent to:',
      'es': 'Los correos electrónicos serán enviados a:',
      'tl': '',
    },
    'mhko6q8p': {
      'en': 'Booking For',
      'es': 'reserva para',
      'tl': '',
    },
    'shqcgjqe': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
      'tl': '',
    },
    '5ixhbnsd': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
      'tl': '',
    },
    'db46hhfw': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
      'tl': '',
    },
    'e1zm6kzh': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
      'tl': '',
    },
    'oy6qvd33': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
      'tl': '',
    },
    '9emhgrhs': {
      'en': 'Choose Date',
      'es': 'Elija Fecha',
      'tl': '',
    },
    '2bzoinpy': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'tl': '',
    },
    'gjnq0j86': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'tl': '',
    },
  },
  // pauseCard
  {
    'dt7m486y': {
      'en': 'Pause Card',
      'es': 'Tarjeta de pausa',
      'tl': '',
    },
    '6edae99k': {
      'en': 'Are you sure you want to pause your card?',
      'es': '¿Seguro que quieres pausar tu tarjeta?',
      'tl': '',
    },
    'omtrfcm5': {
      'en': 'Nevermind',
      'es': 'No importa',
      'tl': '',
    },
    'hw07mkb9': {
      'en': 'Yes, Pause',
      'es': 'Sí, pausa',
      'tl': '',
    },
  },
  // bankBranchInfo
  {
    '0bjratsp': {
      'en': 'Address',
      'es': '',
      'tl': '',
    },
    'y096lu4w': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'u0v34yc4': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'w3nruklh': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'nurx91a8': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'jhej4yfw': {
      'en': 'Contact',
      'es': '',
      'tl': '',
    },
    '5op9hlee': {
      'en': 'Features',
      'es': '',
      'tl': '',
    },
    'mbov7x18': {
      'en': 'Hours of Operation',
      'es': '',
      'tl': '',
    },
    'kvv12mhp': {
      'en': 'Monday',
      'es': '',
      'tl': '',
    },
    'j4bmydx5': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '79k2fjyk': {
      'en': 'Tuesday',
      'es': '',
      'tl': '',
    },
    '6b74tzmn': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '8pcgmm2o': {
      'en': 'Wednesday',
      'es': '',
      'tl': '',
    },
    '7zwbva1f': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '2hwqlnqs': {
      'en': 'Thursday',
      'es': '',
      'tl': '',
    },
    'me4h7axd': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '5owc5nin': {
      'en': 'Friday',
      'es': '',
      'tl': '',
    },
    '3j4c7c17': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '9xwr7qqc': {
      'en': 'Saturday',
      'es': '',
      'tl': '',
    },
    'zhqhnxc0': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'swnivnet': {
      'en': 'Sunday',
      'es': '',
      'tl': '',
    },
    'pw9k5j3q': {
      'en': '-',
      'es': '',
      'tl': '',
    },
  },
  // bankAtmInfo
  {
    'km0fvsyx': {
      'en': 'Address',
      'es': '',
      'tl': '',
    },
    'fd5y0sh3': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'sif37kt4': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'y39zg0vw': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    'v0xuazjw': {
      'en': ', ',
      'es': '',
      'tl': '',
    },
    '5zgsypqs': {
      'en': 'Contact',
      'es': '',
      'tl': '',
    },
    '9tedfwi2': {
      'en': 'Features',
      'es': '',
      'tl': '',
    },
    'qknrmbco': {
      'en': 'Hours of Operation',
      'es': '',
      'tl': '',
    },
    'r37lp1x2': {
      'en': 'Monday',
      'es': '',
      'tl': '',
    },
    'e865u16m': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    '4m9iaxit': {
      'en': 'Tuesday',
      'es': '',
      'tl': '',
    },
    'hvyjsxtw': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'ioyl5ild': {
      'en': 'Wednesday',
      'es': '',
      'tl': '',
    },
    'x0inar59': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'scmu76sr': {
      'en': 'Thursday',
      'es': '',
      'tl': '',
    },
    '7sf9yxob': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'm7gofbmb': {
      'en': 'Friday',
      'es': '',
      'tl': '',
    },
    '6byxiilk': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'w2q852gu': {
      'en': 'Saturday',
      'es': '',
      'tl': '',
    },
    '4vxvtese': {
      'en': '-',
      'es': '',
      'tl': '',
    },
    'qqz0h1u6': {
      'en': 'Sunday',
      'es': '',
      'tl': '',
    },
    'ao91npvj': {
      'en': '-',
      'es': '',
      'tl': '',
    },
  },
  // bankProductInfo
  {
    'tvfee6o4': {
      'en': 'Features',
      'es': '',
      'tl': '',
    },
    '3dpdazzk': {
      'en': 'Fees',
      'es': '',
      'tl': '',
    },
  },
  // bankProductInfoGeneric
  {
    't8gh4vg8': {
      'en': 'Features',
      'es': '',
      'tl': '',
    },
    '4xonsi43': {
      'en': 'Fees',
      'es': '',
      'tl': '',
    },
  },
  // resendVerificationLink
  {
    'lx8u2rt3': {
      'en': 'Resend verification link',
      'es': '',
      'tl': '',
    },
    '6n3hjx87': {
      'en': 'Cancel',
      'es': '',
      'tl': '',
    },
  },
  // claimBonus
  {
    'e0h3qi5e': {
      'en': 'Hooray!',
      'es': '',
      'tl': '',
    },
    'ivu15j3y': {
      'en':
          'Enjoy a bonus on your new account! Kickstart your experience with us, and let us show our appreciation for your trust and support.',
      'es': '',
      'tl': '',
    },
    'sfmw5nfm': {
      'en': 'Okay',
      'es': 'Okey',
      'tl': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'kx9cdks4': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'efvtwj7k': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'ec5hfa1e': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'q5ljwvfo': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'j4rmwb3h': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '6ah1b18f': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '2kos1hen': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'qox8snj0': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'wyojhqjg': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'e9ewsygm': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'aox3s4fb': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'l8hv5a7z': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '4pjwb70a': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '0xlokf4y': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '8twlwiwt': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '7htksar7': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'cyczj38m': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '6rjpat3x': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'xv0beb0x': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'dg9a97xe': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'tf9wghzf': {
      'en': '',
      'es': '',
      'tl': '',
    },
    't4xzlq9q': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '513nj4m0': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'a1jxfgju': {
      'en': '',
      'es': '',
      'tl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
