# test1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

データはデフォルトで限定公開になります。クライアントの読み取り / 書き込み権限は、セキュリティ ルールで指定されているとおりにのみ付与されます。

テストモードで開始する
データはデフォルトでオープン状態となり、迅速なセットアップが可能になります。ただし、クライアントの読み取り / 書き込み権限を長期に渡って有効にするには、30 日以内にセキュリティ ルールを更新する必要があります。
rules_version = '2';

service firebase.storage {
  match /b/{bucket}/o {
    match /{allPaths=**} {
      allow read, write: if
          request.time < timestamp.date(2024, 9, 21);
    }
  }
}