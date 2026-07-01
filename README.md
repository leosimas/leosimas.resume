# leosimas.resume

Personal resume website built with Flutter Web.

## Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) with web support enabled
- Chrome browser

Verify Flutter is ready:

```bash
flutter doctor
flutter config --enable-web
```

## Running locally

```bash
flutter pub get
flutter run -d chrome
```

The app opens automatically in Chrome with hot-reload enabled.

To run on a specific port:

```bash
flutter run -d chrome --web-port 8080
```

## Building for release

```bash
flutter build web --release
```

The output is placed in `build/web/`. Deploy that directory to any static hosting provider (GitHub Pages, Firebase Hosting, Netlify, etc.).

### GitHub Pages example

```bash
flutter build web --release --base-href /leosimas.resume/
# then push build/web/ contents to the gh-pages branch
```
