import 'dart:io';

import 'person.dart';

class Mahasiswa extends Person {
  String? _nrp;
  int _sks = 0;
  double _ipk = 0.0;
  double _ips = 0.0;
  bool _status = true;

  Mahasiswa(String? nama, int? umur, String dtNrp, int dtSks, double dtIpk,
      double dtIps, bool dtStatus)
      : super(nama, umur) {
    _nrp = dtNrp;
    _sks = dtSks;
    _ipk = dtIpk;
    _ips = dtIps;
    _status = dtStatus;
  }

  set sks(int sks) {
    _sks = sks;
  }

  set ipk(double ipk) {
    _ipk = ipk;
  }

  set status(bool status) {
    _status = status;
  }

  set nrp(String? nrp) {
    _nrp = nrp;
  }

  set ips(double ips) {
    _ips = ips;
  }

  int get sks => _sks;
  double get ipk => _ipk;
  double get ips => _ips;
  bool get status => _status;
  String? get nrp => _nrp;

  void hitungIpk(double latestIPS, double newestIPS) {
    _ipk += (latestIPS + newestIPS) / 2;
  }

  String statusMahasiswa() {
    if (status) {
      return "Aktif";
    } else {
      return "Tidak Aktif";
    }
  }

  bool changeStatusMahasiswa() {
    if (status) {
      return false;
    } else {
      return true;
    }
  }
}
