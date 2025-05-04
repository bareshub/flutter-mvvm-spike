# Flutter MVVM Spike

Refers to [this](https://docs.flutter.dev/app-architecture) Flutter tutorial.

## Common architecture concepts

### Separation of concerns

__Separation of concerns__ promotes modularity and maintainability by dividing an application's functionality into distinct, self-contained units (_layared architecture_). Within each layer, you should further separate the UI logic from the application by feature or functionality.

### Layared architecture

Flutter applications should be written in _layers_. Layered architecture is a software design pattern that organizes an application into distinct layers, each with specific roles and responsibilities.

![alt text](https://docs.flutter.dev/assets/images/docs/app-architecture/common-architecture-concepts/horizontal-layers-with-icons.png)

- __UI (Presentation) layer__ - Displays data to the user that is exposed by the business logic layer and handles user interaction.
- __Logic (Domain) layer__ - Implements core business logic, and facilitates interaction between the data layer and UI layer.
- __Data layer__ - Manages interactions with data sources, such as databases or platform plugins. Exposes data and methods to the business logic layer.

These are called layers because each layer can only communicate with the layers directly below or above it.

### Single source of truth

Every data type should have a __single source of truth__ (SSOT), meaning that the SSOT is responsible for representing local or remote state.  

Generally, the source of truth for any given type of data in an application is held in a class called a __Repository__, which is part of the data layer. There should be one repository class for each type of data in a flutter app.

### Unidirectional data flow

__Unidirectional data flow__ (UDF) refers to a design pattern that helps decouple state from the UI that displays the state: state flows from the data layer through the logic layer and eventually to the widgets in the UI layer.

Events from user-interaction flow the opposite direction, from teh presentation layer back through the logic layer and to the data layer.

![alt text](https://docs.flutter.dev/assets/images/docs/app-architecture/common-architecture-concepts/horizontal-layers-with-UDF.png)

In UDF, the update loop from user interaction to re-rendering the UI looks like this:

1. [UI layer] An event occurs due to user interaction. The widget's event handler callback invokes a method exposed by a class in the logic layer.
2. [Logic layer] The logic class calls methods exposed by a repository that know how to mutate the data.
3. [Data layer] The repository updates data (if necessary) and then provides the new data to the logic class.
4. [Logic layer] The logic class saves its new state, which it sends to the UI.
5. [UI layer] The UI displays the new state of the view model.

### UI is a function of (immutable) state

Flutter is declarative, meaning that it builds its UI to reflect the current state of your app. In other words, UI is a function of state.

### Extensibility

Each piece of architecture should have a well defined list of inputs and outputs. For example, a view model in the logic layer should only take in data sources as inputs, such as repositories, and should only expose commands and data formatted for views.

### Testability

The principles that make software extensible also make software easier to test. For example, it is possible to test the self-contained logic of a view model by mocking a repository.

## Model-View-ViewModel

The __MVVM__ is an architectural pattern that organizes each feature of an application into three distinct components:

- `Model`
- `View`
- `ViewModel`

Following the _separation-of-concerns_ principle, a Flutter application is typically divided into two main layers:

- __UI layer__ : View + ViewModel
- __Data layer__ : Repositories + Services

![alt text](https://docs.flutter.dev/assets/images/docs/app-architecture/guide/mvvm-intro-with-layers.png)

Each feature in your application generally includes:

- A __View__ that defines the UI
- A __ViewModel__ that contains the UI logic
- One or more __Repositories__ that serve as the source of truth for application data
- Optional __Services__ that handle communication with external APIs

> For example, logging in and logging out can be treated as separate features.
The login feature might include a LoginViewModel and a LoginView for its screen.
Logout could be a simpler widget, built from a LogoutViewModel and LogoutView, embedded wherever needed.

### Views

A View should contain only minimal logic, such as:

- Simple if-statements to show and hide widgets based on a flag
- Animation logic
- Layout logic based on device information
- Simple routing logic

### View models

A ViewModel is responsible for:

- Retrieving application data from repositories and transforming it into a format suitable for presentation in the view
- Maintaining the current state needed in the view, so that the view can rebuild without losing data
- Exposes callbacks (called __commands__) to the view that can be attached to an event handler

### Repositories

Repositories classes are the source of truth for the model data. They're responsible for polling data from services, and transforming that raw data into domain models.

Repositories handle the business logic associated with services, such as:

- Caching
- Error handling
- Retry logic
- Refreshing data
- Polling services for new data
- Refreshing data based on user actions

> Repositories output application data as domain models. For example, a social media app might have a UserProfileRepository class that exposes a Stream<UserProfile?>, which emits a new value whenever the user signs in or out.

### Services

Services wrap API endpoints and expose asynchronous response objects, such as `Future` and `Stream` objects. They're only used to isolate data-loading, and they hold no state.

Examples of endpoints that services might wrap include:

- iOS and Android APIs
- REST endpoints
- Local files

## Package structure

It is recommandable to tie to a single feature UI layer objects (views and view models) while Data layer objects (repositories and services) are not.

```plain
lib
├─┬─ ui
│ ├─┬─ core
│ │ ├─┬─ ui
│ │ │ └─── <shared widgets>
│ │ └─── themes
│ └─┬─ <FEATURE NAME>
│   ├─┬─ view_model
│   │ └─── <view_model class>.dart
│   └─┬─ widgets
│     ├── <feature name>_screen.dart
│     ├── <feature name>_widget.dart
│     └── <other widgets>
├─┬─ domain
│ └─┬─ models
│   └─── <model name>.dart
├─┬─ data
│ ├─┬─ repositories
│ │ └─── <repository class>.dart
│ ├─┬─ services
│ │ └─── <service class>.dart
│ └─┬─ model
│   └─── <api model class>.dart
├─── config
├─── utils
├─── routing
├─── main_staging.dart
├─── main_development.dart
└─── main.dart

// The test folder contains unit and widget tests
test
├─── data
├─── domain
├─── ui
└─── utils

// The testing folder contains mocks other classes need to execute tests
testing
├─── fakes
└─── models
```
