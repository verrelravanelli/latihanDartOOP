import 'mixin.dart';
import 'pegawai.dart';

class Staff extends Pegawai with GajiDasar, Tunjangan {
  int _cuti = 0;

  Staff(String? nama, int? umur, String dtNip, int dtGaji, int dtCuti)
      : super(nama, umur, dtNip, dtGaji) {
    cuti = dtCuti;
  }

  int get cuti => _cuti;
  set cuti(int value) => _cuti = value;

  void absen() {
    print("Berhasil Absensi");
  }

  void ambilJatahCuti() {
    if (cuti != 0) {
      cuti = cuti - 1;
      print("Cuti Berhasil Diambil");
      print("Sisa Jatah Cuti : $cuti");
    } else {
      print("Jatah Cuti Sudah Habis!");
    }
  }
}
