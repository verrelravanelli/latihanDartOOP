import 'mixin.dart';
import 'pegawai.dart';

class Staff extends Pegawai with GajiDasar, Tunjangan {
  Staff(String? nama, int? umur) : super(nama, umur);
}
