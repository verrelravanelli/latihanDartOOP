abstract class Person {
  String? _nama;
  int? _umur = 0;
  Person(this._nama, this._umur);

  set nama(String? nama) {
    _nama = nama;
  }

  set umur(int? umur) {
    _umur = umur;
  }

  String? get nama => _nama;
  int? get umur => _umur;
}
