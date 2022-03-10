import 'mixin.dart';
import 'pegawai.dart';

class DosenLB extends Pegawai with GajiPerSKS {
  DosenLB(String? nama, int? umur) : super(nama, umur);
}

class DosenTamu extends Pegawai with GajiPerSKS, Tunjangan {
  DosenTamu(String? nama, int? umur) : super(nama, umur);
}

class DosenTetap extends Pegawai with GajiDasar, GajiPerSKS, Tunjangan {
  DosenTetap(String? nama, int? umur) : super(nama, umur);
}
