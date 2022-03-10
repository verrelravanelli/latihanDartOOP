import 'person.dart';

class Mahasiswa extends Person {
  String? _nrp;
  int _sks = 0;
  int _ipk = 0;
  bool _status = true;

  Mahasiswa(String? nama, int? umur, String dtNrp, int dtSks, int dtIpk,
      bool dtStatus)
      : super(nama, umur) {
    nrp = dtNrp;
    sks = dtSks;
    ipk = dtIpk;
    status = dtStatus;
  }

  set sks(int sks) {
    _sks = sks;
  }

  set ipk(int ipk) {
    _ipk = ipk;
  }

  set status(bool status) {
    _status = status;
  }

  set nrp(String? nrp) {
    _nrp = nrp;
  }

  int get sks => _sks;
  int get ipk => _ipk;
  bool get status => _status;
  String? get nrp => _nrp;
}
