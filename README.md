# RxSwift Xcode file templates

[![GitHub release](https://img.shields.io/github/release/pixeldock/RxSwift-Xcode-Templates.svg)]()

A handful of Xcode file templates for projects that use RXSwift and MVVM

# What this is about:

These file templates are meant to be used for the following app architecture setup:

Let's call each "screen" or "view" in the app a **Scene**. So if you have an app that has a list view, a detail view and a login view you have 3 Scenes.

Each Scene consists of the following elements:


### ViewController
####  ✅ Does
- initialize and layout its subviews
- handle user input (if data needs to be fetched or stored it relays that to the ViewModel)
- show Displayable Items that are provided by the ViewModel

#### ❌ Does Not
- have any access to API, DataStore, UserDefaults
- push other ViewControllers or pop itself
- present other ViewControllers modally
- show Alerts
- format Data to be displayable in Views (e.g.  AttributedStrings, DateFormatters)

---
### ViewModel
#### ✅ Does
- fetch data from API
- fetch / store / update Data from DataStore
- fetch / store / update Data from UserDefaults
- format Data to be displayable by the ViewController (e.g. Attributed Strings, DateFormatters)

#### ❌ Does Not
- have any access to UIElements (does not even import UIKit!)

---

### Router
####  ✅ Does
- push other Scenes (if they are should be on the same navigaton stack)
- generate a `RouteRequest` for Scenes that should be presented by the main `AppRouter`

#### ❌ Does Not
- have any access to UIElements (does not even import UIKit!)
- have any access to API, DataStore, UserDefaults

---

### Builder
####  ✅ Does
- initialize ViewController, ViewModel and Router
- provide the ViewController to the outside world (via the `viewController()` method)

#### ❌ Does Not
- do anything else ;-)

---

![image](http://www.pixeldock.com/img/anatomy-scene.png)

# How to use it:

1. Download the *RxSwift* folder and add it to the following folder on your machine: `~/Library/Developer/Xcode/Templates` (You might need to create that folder if does not exist yet)

2. When you want to add a new scene to your app, open the *New File* dialog and choose *RxSwift* in the left column

3. Select *Scene* and click *Next*

4. Enter a name for the Scene. As you can see that name will be used as a prefix for all the 4 classes that will be needed for the scene (see above)

5. Click *Next* and save the scene. Xcode now creates the 4 classes needed for the scene.

# Requirements

* Xcode 9 (for prior versions use 0.4.0)
* Swift 4
