import 'person.dart';

class Pegawai extends Person {
  String _nip = "";
  int _gaji = 0;

  Pegawai(String? nama, int? umur, String dtNip, int dtGaji)
      : super(nama, umur) {
    nip = dtNip;
    gaji = dtGaji;
  }

  String get nip => _nip;

  set nip(String value) => _nip = value;

  get gaji => _gaji;

  set gaji(value) => _gaji = value;
}
