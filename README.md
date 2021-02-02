# CIT-cellule-mobile-Resources

## Section 0: ce qu'il faut installer

Pour suivre cette formation, il faut installer Flutter Sdk, Git, VS code (or Android studio) et un émulateur (optionnel ; vous pouvez utiliser votre téléphone portable).
guide pour installer tout ce qu'il faut:

https://flutter.dev/docs/get-started/install/windows?fbclid=IwAR3Zt1Z2et0s5AcI_TVMP-uiszg46lMuByiqxOtA6HyMT8QeNN2RaQkETKQ

## Section 1: basic app

prototype: https://xd.adobe.com/view/13100427-be3f-4e99-be28-3aa2312c6758-4643/

What you'll learn: 
- What are Material App, Scaffold and SafeArea.
- How to insert text and how to style it.
- How to insert image ( what is the pubspec.yaml file).
- How to center a widget ( wrap it inside an other widget) => Understand the widget tree and use Columns and Rows as a concret example.

## Section 2: conan app

prototype: https://xd.adobe.com/view/13100427-be3f-4e99-be28-3aa2312c6758-4643/screen/b75224ea-e293-44ac-80d1-50dab98dda02/specs/

What you'll learn: 
- Understand Columns and Rows.
- How to insert image in a circle shape.
- How to change text fonts (Google fonts).
- How to insert icons.
- How to use github.

#### Ressources : 
###### Columns and rows: 
https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
###### download fonts: 
https://fonts.google.com/

#### Homework to do : 
After we finish the meeting i'd like you to send me screenshots of your personal designed card.

## Section 4: animal app

We learned: 
- GridView, ListView, Single SingleChildScrollView.
- How to extract a Widget.
- How to play sound 
- GestureDetector
- Packages 

#### Ressources : 
###### Where you can find packages: 
https://pub.dev/
###### the sound player package that we used: 
https://pub.dev/packages/audioplayers
###### The documentation about how to play sounds from assets : 
https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md
###### The playList i recommend u to watch:
https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG
###### where u can find sounds: 
https://mixkit.co/free-sound-effects/


## Section 4: Truth or Dare app

We learned : 
- Dart logic (if , while, private var (var text is public, var \_text is private), function,..)
- RichText (if u have a text which every word is styled differently)
- How to build a responsive app. (for more infos check the rssources)
- how to build apk (command _flutter buil apk_) u can then find ur apk file in the following path in the app folder :  _build\app\outputs\apk\release
- ternary operator ( condition ? cas1 : cas2; ) => 
exemple: 
###### nbr1 >= nb2 ? br1 : br2 + 3 ; 
this will return nbr1 if nbr1 >= nb2 and (br2 + 3) if not.

#### Ressources : 
###### Responsitivity in flutter:
https://medium.com/better-programming/how-to-build-responsive-apps-with-flutter-widgets-review-b22c6dec6904
###### Rich text (watch the video):
https://api.flutter.dev/flutter/widgets/RichText-class.html
###### Everything about dart:
https://dart.dev/samples

#### Homework to do : 
Finish the app ( the Dare button doesn't work yet). Good luck 


## Section 4: BMI calculator app

We learned : 
- How to set the app icon
- Navigation between screens and routes
- Refactoring the code and structering it (main, const , dossier screens , dossier componenets)
- Themes of MaterialApp

TO DO:
- Learn about async and how to let the first screen appear only for 5sec 
- Calculate the BMI and show the results in the result screen and implement the logic (the interpretation of the BMI)

#### Ressources : 
###### Documentation: Navigate between screens in flutter 
https://flutter.dev/docs/cookbook/navigation/navigation-basics
###### App icon Generator:
https://appicon.co/
###### Get inspiration (App Design):
https://itsallwidgets.com/
https://dribbble.com/signup/new
###### Cool website to find packages:
https://fluttergems.dev/
###### Extension to pick colors from any website:
https://www.colorzilla.com/chrome/
###### Extension for VS code for colorfull brackets:
https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer


#### Homework to do : 
Finish the app ( try to match the design : https://dribbble.com/shots/4585382-Simple-BMI-Calculator ). Good luck 


## Section 5: BMI calculator app (suite)

#### Ressources : 
###### Provider package and documentation:
https://pub.dev/packages/provider
###### math biblio in dart (we used pow methode for power ^2 but check the other available functions):
https://api.dart.dev/stable/2.10.4/dart-math/dart-math-library.html
###### Documentation (CookBook) for themes in flutter:
https://flutter.dev/docs/cookbook/design/themes

## Section 5: Basic App to learn Provider

We learned : 
- Loading screen ( Timer, Duration)
- initState ( used when we want to call a function once the class is built https://api.flutter.dev/flutter/widgets/State/initState.html)
- Form and TextFormField ( validator, prefixIcon, suffixIcon, onchanged..)
- Bottom nav bar
- Functions : 3 ways 
##### 1
function (val) {
      if (val.isEmpty) {
        return 'Enter ur name';
      } else {
        return null;
      }
}
##### 2
function(val) {
    return val.isEmpty ? 'enter ur name' : null;
    }
##### 3
(val) => val.isEmpty ? 'enter mail' : null

- Provider state management
##### Etape0
add the provider package in the pabspect.yaml file
##### Etape1
Create a file : data_center.dart 
create a class in it : class DataCenter extends ChangeNotifier 
##### Etape2
Wrap the MaterialApp in the main file inside ChangeNotifierProvider, it has a property "create" 
the syntaxe is: ChangeNotifierProvider(
      create: (context) => DataCenter(),
      child: MaterialApp(............),),      
##### Etape3
To use the function and variables inside the DataCenter we need to create an instance of the class DataCenter inside whatever class
we want to use it in. To do that we need to insert this line of code
    DataCenter data = Provider.of<DataCenter>(context);
(remember: under the build, before the return)
And then we can use it data.variableName or data.FunctionName()

#### Ressources : 
###### Documentationand code source of the Bottom Nav Bar
https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
###### Other costimized bottom nav bars:
https://fluttergems.dev/bottom-navigation-bar/
