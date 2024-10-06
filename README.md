
# Flutter Navigation Boilerplate

## This repository provides a simple Flutter navigation boilerplate that demonstrates how to use named routes to navigate between different pages in a Flutter application.



## Features

- Overview
- Features
- Installation
- Usage
- Routes

##  Overview
This project sets up a Flutter app with multiple pages and named routes, making it easy to navigate between different parts of the app. It demonstrates a basic architecture for handling route navigation, passing data between pages, and organizing the application with MaterialPageRoute and named routes.

##  Features
- Named Routes: Navigate between screens using named routes with simple Navigator.pushNamed.
- Passing Data Between Screens: Shows how to pass and retrieve data when transitioning between pages.
- Stateful Widgets: Provides examples of both stateful and stateless widgets.
- Clean Structure: Organizes routes, models, and UI components for easy expansion and scalability.



## Run Locally

Clone the project

```bash
  git clone https://github.com/abdulawalarif/clean_routing
```

Go to the project directory

```bash
  cd clean_routing
```

Install dependencies

```bash
  flutter pub get
```

Connect a physical device or start a virtual device on your machine

```bash
  flutter run
```


## Usage
## Navigation
This boilerplate comes with three pages: SplashScreen, SecondPage, and ThirdPage. You can navigate between them using the following named routes:

- / : Initial route which leads to SplashScreen.
- /secondPage: Leads to SecondPage.
- /thirdPage: Leads to ThirdPage. This page also accepts an argument (DummyModelData) to display passed data.

## Adding New Pages
To add new pages and routes, follow these steps:

1.  Create a new widget (for example, FourthPage).
2.  Add a new constant in RouteName for the route:


```bash
static const String fourthPage = '/fourthPage';

```
3. Add the route handling logic in the Routes.generatedRoute function:


```bash
case RouteName.fourthPage:
  return MaterialPageRoute(
    builder: (BuildContext context) => const FourthPage(),
  );
```

4. Navigate to the new page using:

```bash
Navigator.of(context).pushNamed(RouteName.fourthPage);
```

## Passing Data Between Screens
This project demonstrates passing data between screens via named route arguments. For example, in SecondPage, we pass a DummyModelData object to ThirdPage:
```bash
const sendingArgument = DummyModelData(
  name: 'Abdul Awal',
  age: 28,
);
Navigator.of(context).pushNamed(RouteName.thirdPage, arguments: sendingArgument);
```

- In ThirdPage, this data is accessed like this:
```bash

final DummyModelData dummyModelData = settings.arguments as DummyModelData;
```



# Routes
- Route	
1. /SplashScreen
2. /secondPage	 
3. /thirdPage


- Page	
1. SplashScreen
2. SecondPage
3. ThirdPage


- Description
1. The initial page that displays the splash screen.
2. A simple page with a button to navigate to ThirdPage.
3. A page that receives and displays data passed from SecondPage.