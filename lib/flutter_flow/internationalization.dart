import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'es', 'en'];

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
    String? ptText = '',
    String? esText = '',
    String? enText = '',
  }) =>
      [ptText, esText, enText][languageIndex] ?? '';

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
  // MeusCursos
  {
    'syq4j4gl': {
      'pt': 'Cursos Gnosis',
      'en': 'Gnosis Courses',
      'es': 'Cursos de Gnosis',
    },
    'u7174dwm': {
      'pt': 'Cursos Ativos',
      'en': 'Active Courses',
      'es': 'Cursos activos',
    },
    'yp83q7nt': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // DetalhesCursos
  {
    'lnu5zxnt': {
      'pt': 'Conteúdo',
      'en': 'Content',
      'es': 'Contenido',
    },
    'vx4ihqu2': {
      'pt': 'Video Aula Completa',
      'en': 'Complete Video Class',
      'es': 'Clase de video completa',
    },
    'igpsda22': {
      'pt': 'Atualizar curso',
      'en': 'Update course',
      'es': 'Curso de actualización',
    },
    'x8v4xa1h': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // LoginCursos
  {
    'kpaka71t': {
      'pt': 'Login',
      'en': 'Login',
      'es': 'Acceso',
    },
    'biy142ol': {
      'pt': 'Email ',
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    '0bfeiz7l': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'fokm5x81': {
      'pt': 'LOGIN',
      'en': 'LOGIN',
      'es': 'ACCESO',
    },
    'wd98zc7r': {
      'pt': 'Cadastro',
      'en': 'Register',
      'es': 'Registro',
    },
    'h7848yw1': {
      'pt': 'Email',
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    '9z4vkie8': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'u7ma0ywg': {
      'pt': 'Confirmar Senha',
      'en': 'Confirm password',
      'es': 'Confirmar seña',
    },
    'zva5zy3v': {
      'pt': 'CRIAR CONTA',
      'en': 'CREATE AN ACCOUNT',
      'es': 'CREA UNA CUENTA',
    },
  },
  // MeuPerfil
  {
    'i3f64q5w': {
      'pt': 'Meu Perfil',
      'en': 'My profile',
      'es': 'Mi perfil',
    },
    'mchbekpj': {
      'pt': 'Gerencie seu app',
      'en': 'Manage your app',
      'es': 'Administra tu aplicación',
    },
    'xf5i6kil': {
      'pt': 'Upload foto',
      'en': 'Upload photo',
      'es': 'Subir foto',
    },
    'ye1vcggl': {
      'pt': 'Logout',
      'en': 'Logout',
      'es': 'Cerrar sesión',
    },
  },
  // NovoCurso
  {
    'hlieds38': {
      'pt': 'Novo Curso',
      'en': 'New Course',
      'es': 'Nuevo curso',
    },
    'a07loeky': {
      'pt': 'Adicionar Novo',
      'en': 'Add New',
      'es': 'Agregar nuevo',
    },
    '0exjdkhu': {
      'pt': 'Nome do Curso',
      'en': 'Course Name',
      'es': 'Nombre del curso',
    },
    '9kdijncp': {
      'pt': 'Descrição Curta',
      'en': 'Short Description',
      'es': 'Breve descripción',
    },
    'hki0ykd3': {
      'pt': 'Descrição Completa',
      'en': 'Full Description',
      'es': 'Descripción completa',
    },
    '85nx9cun': {
      'pt': 'URL da capa',
      'en': 'Cover URL',
      'es': 'URL de portada',
    },
    'u5woiy98': {
      'pt': 'URL do vídeo',
      'en': 'Video URL',
      'es': 'URL del vídeo',
    },
    '6ooi3hwn': {
      'pt': '1',
      'en': '1',
      'es': '1',
    },
    'hymfm79t': {
      'pt': '2',
      'en': 'two',
      'es': 'dos',
    },
    '3cwu6ea8': {
      'pt': '3',
      'en': '3',
      'es': '3',
    },
    '1kbbh0ll': {
      'pt': '4',
      'en': '4',
      'es': '4',
    },
    'ntsju0hp': {
      'pt': '5',
      'en': '5',
      'es': '5',
    },
    '9d2l6u0j': {
      'pt': 'Nota',
      'en': 'Note',
      'es': 'Nota',
    },
    'jdqhqe20': {
      'pt': 'Search for an item...',
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
    },
    '6v8ytn3b': {
      'pt': 'Cancelar',
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    'g9kthcxe': {
      'pt': 'Adicionar',
      'en': 'To add',
      'es': 'para agregar',
    },
  },
  // EditarCurso
  {
    'svvok47s': {
      'pt': 'Atualizar o Curso',
      'en': 'Update the Course',
      'es': 'Actualizar el curso',
    },
    'u5fnmncu': {
      'pt': 'Editar as informações',
      'en': 'Edit the information',
      'es': 'Editar la información',
    },
    'n9fi84dd': {
      'pt': 'Nome do Curso',
      'en': 'Course Name',
      'es': 'Nombre del curso',
    },
    '4fm7p87g': {
      'pt': 'Descrição Curta',
      'en': 'Short Description',
      'es': 'Breve descripción',
    },
    'ztoxv7iq': {
      'pt': 'Descrição Completa',
      'en': 'Full Description',
      'es': 'Descripción completa',
    },
    '5tifetw1': {
      'pt': 'URL da capa',
      'en': 'Cover URL',
      'es': 'URL de portada',
    },
    't1p3u619': {
      'pt': 'URL do vídeo',
      'en': 'Video URL',
      'es': 'URL del vídeo',
    },
    'web3gfnx': {
      'pt': '1',
      'en': '1',
      'es': '1',
    },
    '16y23ryh': {
      'pt': '2',
      'en': 'two',
      'es': 'dos',
    },
    'c37h4c4n': {
      'pt': '3',
      'en': '3',
      'es': '3',
    },
    'aqevclcd': {
      'pt': '4',
      'en': '4',
      'es': '4',
    },
    'tthyxon5': {
      'pt': '5',
      'en': '5',
      'es': '5',
    },
    'jww3vxvp': {
      'pt': 'Nota',
      'en': 'Note',
      'es': 'Nota',
    },
    'fhmjnn4w': {
      'pt': 'Search for an item...',
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
    },
    'q6a3sh60': {
      'pt': 'Remover',
      'en': 'To remove',
      'es': 'Para eliminar',
    },
    'r36r3j8c': {
      'pt': 'Atualizar',
      'en': 'To update',
      'es': 'Actualizar',
    },
  },
  // test
  {
    's5cqgle8': {
      'pt': 'Curso FlutterFlow',
      'en': 'FlutterFlow Course',
      'es': 'Curso FlutterFlow',
    },
    'nxfu7f48': {
      'pt': 'Aulas',
      'en': 'Classes',
      'es': 'Clases',
    },
    'hoa0f4fb': {
      'pt': 'Editar',
      'en': 'To edit',
      'es': 'Para editar',
    },
  },
  // Miscellaneous
  {
    'jeag4e71': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ig6usblt': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'mv1trad9': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'puv32o91': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '1rkap2im': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'angfqe02': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '5jyr3r59': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'jdd6i6ie': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'dfkrt7z3': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '8ibvjz2a': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '5iaccy99': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'diurj2j1': {
      'pt': '',
      'en': '',
      'es': '',
    },
    't5nddolj': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'yl7uclfu': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '6bpdw6mj': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '1yqf3s7d': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'm7cvv3ui': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ycknhdz3': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'vqp9l9jq': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '4vtkm1q5': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'j1yasf2w': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'vj5ve2qd': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '5lscf644': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'qs4y7olj': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
