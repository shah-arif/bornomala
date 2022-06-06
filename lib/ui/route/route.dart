import 'package:bornomala/ui/views/detailed_screen/arobi_detailed.dart';
import 'package:bornomala/ui/views/detailed_screen/english_detailed.dart';
import 'package:bornomala/ui/views/detailed_screen/gonit_detailed.dart';
import 'package:bornomala/ui/views/draw_and_play/arabic_alphabet_draw.dart';
import 'package:bornomala/ui/views/draw_and_play/english_capital_letter_draw.dart';
import 'package:bornomala/ui/views/draw_and_play/english_small_letter_draw.dart';
import 'package:bornomala/ui/views/draw_and_play/gonit_bangla_number_draw.dart';
import 'package:bornomala/ui/views/draw_and_play/gonit_english_number_draw.dart';
import 'package:bornomala/ui/views/grid_view/english_capital_letter_grid.dart';
import 'package:bornomala/ui/views/grid_view/english_small_letter_grid.dart';
import 'package:bornomala/ui/views/grid_view/gonit_bangla_number_grid.dart';
import 'package:bornomala/ui/views/grid_view/gonit_english_number_grid.dart';
import 'package:bornomala/ui/views/detailed_screen/bangla_detailed.dart';
import 'package:bornomala/ui/views/letter_test/arobi_test.dart';
import 'package:bornomala/ui/views/letter_test/bangla_banjon-borno_test.dart';
import 'package:bornomala/ui/views/letter_test/bangla_sor-borno_test.dart';
import 'package:bornomala/ui/views/letter_test/english_capital_test.dart';
import 'package:bornomala/ui/views/letter_test/english_small_test.dart';
import 'package:bornomala/ui/views/letter_test/gonit_bangla_test.dart';
import 'package:bornomala/ui/views/letter_test/gonit_english_test.dart';
import 'package:bornomala/ui/views/main_home_screen.dart';
import 'package:get/get.dart';

import '../views/draw_and_play/bangla_banjon_borno_draw.dart';
import '../views/draw_and_play/bangla_sorborno_draw.dart';
import '../views/grid_view/arabic_alphabet_grid.dart';
import '../views/grid_view/bangla_banjonborno_grid.dart';
import '../views/grid_view/bangla_sorborno_grid.dart';

const String main_home_page = '/main-home-page-screen';
const String homepage = '/homepage-screen';
const String user_info = '/user-info';
//Subject detailed
const String bangla_detailed_screen = '/bangla-detailed-screen';
const String english_detailed_screen = '/english-detailed-screen';
const String gonit_detailed_screen = '/gonit-detailed-screen';
const String arobi_detailed_screen = '/arobi-detailed-screen';


const String bborno_draw_play_screen = '/bborno-draw-play-screen';
const String sorborno_draw_play_screen = '/sorborno-draw-play-screen';
const String sorborno_grid_screen = '/sorborno-grid-screen';
const String bborno_grid_screen = '/bborno-grid-screen';
const String small_letter_grid_screen = '/small-letter-grid-screen';
const String capital_letter_grid_screen = '/capital-letter-grid-screen';
const String capital_letter_draw_screen = '/capital-letter-draw-screen';
const String small_letter_draw_screen = '/small-letter-draw-screen';
const String gonit_bangla_number_draw_screen = '/gonit-bangla-number-draw-screen';
const String gonit_english_number_draw_screen = '/gonit-english-number-draw-screen';
const String gonit_english_number_grid_screen = '/gonit-english-number-grid-screen';
const String gonit_bangla_number_grid_screen = '/gonit-bangla-number-grid-screen';
const String arobi_alphabet_grid_screen = '/arobi-alphabet-grid-screen';
const String arobi_alphabet_draw_screen = '/arobi-alphabet-draw-screen';

//test screen
const String bangla_banjon_test_screen = '/bangla-banjon-test-screen';
const String bangla_sorborno_test_screen = '/bangla-sorborno-test-screen';
const String english_capital_test_screen = '/english-capital-test-screen';
const String english_small_test_screen = '/english-small-test-screen';
const String gonit_english_test_screen = '/gonit-english-test-screen';
const String gonit_bangla_test_screen = '/gonit-bangla-test-screen';
const String arobi_test_screen = '/arobi-test-screen';

//Control page route flow
List<GetPage> getPages = [
  GetPage(name: main_home_page, page: ()=>MainHomeScreen()),
  // GetPage(name: homepage, page: ()=>HomePage()),
  //Subject detailed

  //detailed screen
  GetPage(name: bangla_detailed_screen, page: ()=>BanglaDetailed()),
  GetPage(name: english_detailed_screen, page: ()=>EnglishDetailed()),
  GetPage(name: gonit_detailed_screen, page: ()=>GonitDetailed()),
  GetPage(name: arobi_detailed_screen, page: ()=>ArobiDetailed()),

  GetPage(name: bborno_draw_play_screen, page: ()=>BanglaBanjonBornoDraw()),
  GetPage(name: sorborno_draw_play_screen, page: ()=>BanglaSorBornoDraw()),
  GetPage(name: sorborno_grid_screen, page: ()=>SorbornoGrid()),
  GetPage(name: bborno_grid_screen, page: ()=>BanjonBornoGrid()),
  GetPage(name: small_letter_grid_screen, page: ()=>EnglishSmallLetterGrid()),
  GetPage(name: capital_letter_grid_screen, page: ()=>EnglishCapitalLetterGrid()),
  GetPage(name: small_letter_draw_screen, page: ()=>EnglishSmallLetterDraw()),
  GetPage(name: capital_letter_draw_screen, page: ()=>EnglishCapitalLetterDraw()),
  GetPage(name: gonit_bangla_number_grid_screen, page: ()=>GonitBanglaNumberGrid()),
  GetPage(name: gonit_bangla_number_draw_screen, page: ()=>GonitBanglaNumberDraw()),
  GetPage(name: gonit_english_number_grid_screen, page: ()=>GonitEnglishNumberGrid()),
  GetPage(name: gonit_english_number_draw_screen, page: ()=>GonitEnglishNumberDraw()),
  GetPage(name: arobi_alphabet_draw_screen, page: ()=>ArabicAlphabetDraw()),
  GetPage(name: arobi_alphabet_grid_screen, page: ()=>ArabicAlphabetGrid()),

  //test screen
  GetPage(name: bangla_banjon_test_screen, page: ()=>BanglaBanjonBornoTest()),
  GetPage(name: bangla_sorborno_test_screen, page: ()=>BanglaSorBornoTest()),
  GetPage(name: english_capital_test_screen, page: ()=>EnglishCapitalTest()),
  GetPage(name: english_small_test_screen, page: ()=>EnglishSmallTest()),
  GetPage(name: gonit_english_test_screen, page: ()=>GonitEnglishTest()),
  GetPage(name: gonit_bangla_test_screen, page: ()=>GonitBanglaTest()),
  GetPage(name: arobi_test_screen, page: ()=>ArobiTest()),
];