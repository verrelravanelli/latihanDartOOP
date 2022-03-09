import 'mixin.dart';
import 'pegawai.dart';

class DosenLB extends Pegawai with GajiPerSKS {}

class DosenTamu extends Pegawai with GajiPerSKS, Tunjangan {}

class DosenTetap extends Pegawai with GajiDasar, GajiPerSKS, Tunjangan {}
