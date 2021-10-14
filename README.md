# mech

[![pub package](https://img.shields.io/pub/v/mech?color=1&include_prereleases&logo=mech&logoColor=%23000&style=flat-square)](https://pub.dev/packages/mech)

mech is a dart library that provides helpers and more features

# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  mech: ^0.1.0
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:mech/mech.dart';
```

## Validators

```dart
// validate that the string is an email
'user@domain.com'.isEmail

// validate that the string is an URL
'http://www.domain.com'.isUrl

// verify that the string has the accented characters
'á, é, í, ó, ú, ý Á, É, Í, Ó, Ú, Ý'.hasAccentedChars

// verify that the string has the emoji's
'👩 emoji'.hasEmoji

// verify that the string is an Alphanumeric String
'ABC456'.isAlphaNumeric

// verify that the string has Numbers
'123DEF'.hasNumeric

// verify that the string has Alphabets
'ABC456'.hasAlPhs

// validate that the string is an IPv4
'121.0.0.1'.isIPv4

// validate that the string is an IPv6
'340.282.366.920.938.463.463.374.607.431.768.211.456'.isIPv6

// Verifying the length of the string is equal to the given length.
'Larry Page'.eqlLen(9)

// Verifying the length of the string is less than given length.
'Elon Musk'.ltLen(10)

// Verifying the length of the string is greater than given length.
'Bill Gates'.gtLen(5)

// Verifying the length of the string is greater than or equal to the given length.
'Sundar Pichai'.gteLen(12)

// Verifying the length of the string is less than or equal to the given length.
'Jeff Bezos'.lteLen(10)

// Verifying the length of the digits is equal to the given length.
101101.eqlDgt(6)
```

## Helpers

### Number

```dart

// The length of the digits in the number
12345678.digits // OUTPUT: 8

```

### DateTime

```dart

DateTime datetime = DateTime(2021, 01, 01, 12, 0, 0, 0, 0);

// Returns number of hours in time
datetime.toHours // OUTPUT: 447078.5

// Returns number of minutes in time
datetime.toMinutes // OUTPUT: 26824710

// Returns number of seconds in time
datetime.toSeconds // OUTPUT: 1609482600

// Returns number of milliseconds in time
datetime.toMilliSeconds // OUTPUT: 1609482600000

// Returns number of microseconds in time
datetime.toMicroSeconds // OUTPUT: 1609482600000000

// Returns number of nanoseconds in time
datetime.toNanoSeconds // OUTPUT: 1609482600000000000
```

### File

```dart
File file = File("test/images/tom.png");

// Returns extension of the file
file.extension // OUTPUT: .png, .jpg, .pdf ...etc

// Returns name of the file
file.fileName // OUTPUT: tom.png

// Returns mime type of the file
file.mime // OUTPUT: image/png, image/jpg, application/pdf ...etc

// Returns instance of Base64File with file
Base64File base64file = file.toBase64File(); // OUTPUT: instance of Base64File

// base64 string of the Source File
base64file.content // OUTPUT: iVBORw0KGgoAAAANSUhEUgAAAP8AAAIYCAYAAACi1jrZAAAgAElEQVR...

// Returns extension of the file
base64file.extension // OUTPUT: .png, .jpg, .pdf ...etc

// Returns name of the file
base64file.fileName // OUTPUT: tom.png

// Returns mime type of the file
base64file.mime // OUTPUT: image/png, image/jpg, application/pdf ...etc

// base64 encoded url of the file
base64file.toData // OUTPUT: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAAIYCAYAAACi1jrZAAAgAElEQVR...
```