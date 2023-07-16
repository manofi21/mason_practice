# Mencoba menggunakan Mason
Menurut [Situs official mason](https://pub.dev/packages/mason) packages
ini berfungsi untuk melakukan generate files dengan cepat dan konsisten.

## Getting Started
### Instalasi Mason
1. System Environtment Variable pastikan untuk menambahkan:
`C:\Users\Acer\AppData\Local\Pub\Cache\bin`

2. Aktifkan mason dengan menjalankan: 
`dart pub global activate mason_cli`

3. Dan install mason di project dengan menjalankan comment ini di direktory project:
`mason init`

### Uji coba Mason
#### 1. Pengujian dengan exsistensi mason
Di [halamannya sendiri](https://www.brickhub.dev/search) sudah ada lebih dari 266 
brick public yang bisa di pakai. Berikut beberapa test dari brick yang sudah dicoba:

Untuk melakukan instalasi brick:
1. Jalankan `mason add <BrickName>` di direktory

2. Sebelum melanjukan step, pastikan sudah berada di direktori yang tepat

3. Setelah itu untuk menjalankan brick gunakana `mason make <BrickName>`

__[A. model](https://www.brickhub.dev/bricks/model/0.7.1#readme)__
Sebuah brick yang dapat melakukan generate model.
Model tersebut bisa langsung melakukan return 
copyWith, json, equatable, toString. 

Bentuk pilihannya hasil generate filenya ada basic, json_serializable, dan freezed.

Dan untuk propertynya bisa dengan menulis manual atau dengan menambahkan langsung file json tersebut.

Untuk comment menjalankan generate file dan code dengan:
```shell
mason make model --model_name user --additionals "[json, toString]" --style json_serializable --jsonFile D:\new_daily_april_2022\practice_mason_packages\json_example\json_example.json
```

Pengalaman pribadi:
Jadi ada bugs setelah melakukan generate ke-2 dan menambahkan comment `--additionals` bahwa ada error casting di line:
```dart
final additionals = context.vars['additionals'] as List<dynamic>;
```

Bahwa value `context.vars['additionals']` Strigng dan bukan list.

Jadi solusi yang didapat adalah dengan menambahkan sendiri
kondisinya di file: __C:\Users\\...\AppData\Local\Mason\Cache\hosted\registry.brickhub.dev\model_0.7.1\hooks\pre_gen.dart__

```dart
late final List<dynamic> additionals;
if (rawAdditional is String) {
    rawAdditional = rawAdditional.replaceAll(RegExp(r'[\[\]]'), '');
    additionals = rawAdditional.split(',');
} else {
    additionals = context.vars['additionals'] as List<dynamic>;
}
```
Hasilnya bisa dilihat di folder `lib\model` dan untuk sample json nya bisa dilihat di `\json_example`. Json tersebut di dapat dari [API Random User](https://randomuser.me/api/?results=50)

__[B. clean_architecture_folders_lib](https://www.brickhub.dev/bricks/clean_architecture_folders_lib/1.0.0+5#readme)__

Sebuah brick untuk melakukan generate Project clean architecture. 

saat menjalankan comment make, maka 2 folder project akan muncul yaitu lib dan test. Jadi sebelum menjalankan comment ini bisa terlebih dahulu menghapus lib dan test yang sudah ada.

Tidak ada yang spesial, karena hanya melakukan generate folder untuk preparasi clean architecture. Tapi cukup membantu dalam pemotongan waktu pembuatan folder

Hasilnya bisa dilihat di folder `lib\clean_architecture`

__[C. feature_route_bloc](https://www.brickhub.dev/bricks/feature_route_bloc/0.3.0)__

Sebuah brick untuk melakukan generate Project clean architecture. Pastikan project sudah menginstall packages equitable dan flutter_bloc. 

Untuk comment menjalankan generate file dan code dengan:
```shell
mason make feature_route_bloc --feature_name counter_app --package_name practice_mason_packages/feature_route_bloc
```
Pengalaman pribadi:
Karena dalam project ini melakukan uji coba dan sengaja menempatkan di `lib\feature_route_bloc` akan ada error execption bahwa direktory comment harus ada di `lib`.

Untuk edit file tersebut harus dari `C:\Users\Acer\AppData\Local\Mason\Cache\hosted\registry.brickhub.dev\feature_route_bloc_0.3.0\hooks\pre_gen.dart`

Dan mengganti line seperti ini:
```dart
    final index = folders.indexWhere((folder) => folder == 'feature_route_bloc');
```
Maka ketika menjalankan kembali comment tidak akan error lagi.
Tapi karena ada impact dari menggunakan directory `practice_mason_packages/feature_route_bloc` di property `package_name`, maka file terkait(..._route.dart dan ..._view.dart) harus di edit terlebih dahulu.
Sebelum di edit:
`import 'package:practice_mason_packages&#x2F;feature_route_bloc/counter_app/counter_app.dart';`

Setelah di edit:
`import 'package:practice_mason_packages/feature_route_bloc/counter_app/counter_app.dart';`
 Dan tentu hasil dari generate file bisa dilihat di lib\feature_route_bloc.