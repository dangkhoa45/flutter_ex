import 'package:flutter/cupertino.dart';
import 'package:flutter_exercises/routes/blog/listBlogApp.dart';
import 'package:flutter_exercises/routes/car_app/listCarApp.dart';
import 'package:flutter_exercises/routes/dashboard/listDashboard.dart';
import 'package:flutter_exercises/routes/ecommerce/ecommerce_bao/ecommerce1.dart';
import 'package:flutter_exercises/routes/ecommerce/ecommerce_bao/ecommerce2.dart';
import 'package:flutter_exercises/routes/ecommerce/ecommerce_bao/ecommerce3.dart';
import 'package:flutter_exercises/routes/food_app/listFoodApp.dart';
import 'package:flutter_exercises/routes/hotel_app/listHotelApp.dart';
import 'package:flutter_exercises/routes/inviation/listInviationApp.dart';
import 'package:flutter_exercises/routes/lists_uis/listListsUis.dart';
import 'package:flutter_exercises/routes/login_app/listLoginApp.dart';
import 'package:flutter_exercises/routes/login_app/login2/auth3.dart';
import 'package:flutter_exercises/routes/login_app/login2/login7.dart';
import 'package:flutter_exercises/routes/login_app/login2/login8.dart';
import 'package:flutter_exercises/routes/login_app/login2/login9.dart';
import 'package:flutter_exercises/routes/login_app/login3/auth1.dart';
import 'package:flutter_exercises/routes/login_app/login3/auth2.dart';
import 'package:flutter_exercises/routes/login_app/login3/login6.dart';
import 'package:flutter_exercises/routes/login_app/login3/signup2.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login1.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login2.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login3.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login4.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login5.dart';
import 'package:flutter_exercises/routes/login_app/login_signup4/login10.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login2.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login3.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login4.dart';
import 'package:flutter_exercises/routes/login_app/login_bao/login5.dart';
import 'package:flutter_exercises/routes/login_app/login_signup4/login11.dart';
import 'package:flutter_exercises/routes/login_app/login_signup4/login12.dart';
import 'package:flutter_exercises/routes/login_app/login_signup4/login13.dart';
import 'package:flutter_exercises/routes/miscellaneous/listMiscellaneousApp.dart';
import 'package:flutter_exercises/routes/navigations/listNavigationsApp.dart';
import 'package:flutter_exercises/routes/profiles/listProfileApp.dart';
import 'package:flutter_exercises/routes/quiz/listQuizApp.dart';
import 'package:flutter_exercises/routes/quotes/listQuotes.dart';
import 'package:flutter_exercises/routes/setting_app/listSettingsApp.dart';
import 'package:flutter_exercises/routes/todo_app/listTodo.dart';
import 'package:flutter_exercises/routes/todo_app/todo1.dart';
import 'package:flutter_exercises/routes/todo_app/todo2.dart';
import 'package:flutter_exercises/routes/todo_app/todo3/todo3.dart';
import 'package:flutter_exercises/routes/todo_app/todo4/todo4.dart';
import 'package:flutter_exercises/routes/travels/listTravelApp.dart';

import '../routes/login_app/login_signup4/signup1.dart';

var mapAppImg = {'Todo App':'todo_app/todo_home1.png',
'Car App':'bike1.png',
'Ecomerce App':'cart2.png', 
'Dashboard':'dash1.png',
'Miscellaneous':'gallery1.png', 
'Lists UIs':'schoolList.png',
'Inviation App':'invitation1.png',
'Navigations':'menu1.png',
'Blog':'news1.png','Profile App':'profile11.png', 
'Quiz App':'quiz1.png', 'Quotes App':'quotes1.png', 
'Food App':'recipe-list.png',
'Hotel App':'room-details.png', 
'Settings App':'settings1.png', 'Login App':'login10.png',
'Travel App':'travel.png'};

Map<String, Widget> mapAppDetail = {'Todo App': const ListTodoApp(),'Car App':ListCarApp(),'Ecomerce App':ListFoodApp(), 'Dashboard':ListDashboardApp(),'Miscellaneous':Miscellaneous(), 'Lists UIs':ListUIs(),'Inviation App':ListInviationApp(),'Navigations':Navigations(),'Blog':ListFoodApp(),'Profile App':ListProfileApp(), 'Quiz App':ListQuizApp(), 'Quotes App':ListQuotes(), 'Food App':ListBlogApp(),'Hotel App':ListHotelApp(), 'Settings App': ListSettingApp(), 'Login App':ListLogin(),'Travel App':ListTravelApp()};

var listApp = mapAppImg.map((key, value) => MapEntry(key, value)).keys;

List<String> listTodoAppImages = [
  'todo_home1',
  'todo_home2',
  'todo_home3',
  'todo_home4'
];


List<String> listImg = ['avatar1.jpg', 'avatar2.jpg', 'avatar3.jpg','avatar4.jpg'];

List<Widget> listTodoWidget = [TodoApp1(), TodoApp2(), TodoApp3(), TodoApp4()];

List<Widget> listLoginWidget = [Login1(),Login2(),Login3(),Login4(),Login5(),Auth3_1(),Login7(),login8(),Login9(), Auth1(),Auth2(),Login6(),Signup2(),LoginApp10(),LoginApp11(),LoginApp12(),LoginApp13(),SignUpApp1()];

List<Widget> listEcommerce = [Ecommerce1(),Ecommerce2(),Ecommerce3()];

