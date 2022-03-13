import 'mixin.dart';
import 'pegawai.dart';

class DosenLB extends Pegawai with GajiPerSKS {
  int _sks = 0;

  DosenLB(String? nama, int? umur, String dtNip, int dtGaji, int dtSks)
      : super(nama, umur, dtNip, dtGaji) {
    _sks = dtSks;
  }

  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}

class DosenTamu extends Pegawai with GajiPerSKS, Tunjangan {
  int _sks = 0;

  DosenTamu(String? nama, int? umur, String dtNip, int dtGaji, int dtSks)
      : super(nama, umur, dtNip, dtGaji) {
    _sks = dtSks;
  }

  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}

class DosenTetap extends Pegawai with GajiDasar, GajiPerSKS, Tunjangan {
  int _sks = 0;

  DosenTetap(String? nama, int? umur, String dtNip, int dtGaji, int dtSks)
      : super(nama, umur, dtNip, dtGaji) {
    _sks = dtSks;
  }

  int get sks => this._sks;
  set sks(int value) => this._sks = value;
}
