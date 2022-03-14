import 'dart:io';

import 'dosen.dart';
import 'mahasiswa.dart';
import 'staff.dart';
import 'package:dcli/dcli.dart';

void main() {
  int gajidasar;
  stdout.write("Gaji Dasar Pegawai : ");
  String? temp = stdin.readLineSync();
  gajidasar = int.parse(temp!);

  int choice;
  Mahasiswa mahasiswa1 =
      Mahasiswa("Verrel", 20, "C14190152", 0, 0.0, 0.0, true);

  DosenLB dosenLB1 = DosenLB("Agus", 42, "110A", 0, 26);
  DosenTamu dosenTamu1 = DosenTamu("Surya", 50, "111B", 0, 42);
  DosenTetap dosenTetap1 = DosenTetap("Andre", 55, "109A", 0, 52);
  Staff staff1 = Staff("Lina", 31, "127C", 0, 12);

  do {
    print("1. Mahasiswa");
    print("2. Pegawai");
    print("0. Exit");
    stdout.write("Choice : ");
    String? temp = stdin.readLineSync();
    choice = int.parse(temp!);
    int tempch;

    if (choice == 1) {
      do {
        print(
            "Nama : ${mahasiswa1.nama}, Status : ${mahasiswa1.statusMahasiswa()}");
        print("1. Mengambil SKS");
        print("2. Ubah Status Mahasiswa");
        print("3. Melihat Jumlah SKS Diambil");
        print("4. Input IPS");
        print("5. Melihat IPK");
        print("0. Exit");
        stdout.write("Choice : ");
        String? temp = stdin.readLineSync();
        tempch = int.parse(temp!);

        if (tempch == 1) {
          int tempsks;
          stdout.write("Input SKS : ");
          String? temp = stdin.readLineSync();
          tempsks = int.parse(temp!);
          mahasiswa1.sks = tempsks;
        } else if (tempch == 2) {
          print("Status Saat Ini : ${mahasiswa1.statusMahasiswa()}");
          mahasiswa1.status = mahasiswa1.changeStatusMahasiswa();
          print("Status Berhasil dirubah ${mahasiswa1.statusMahasiswa()}");
        } else if (tempch == 3) {
          print("Jumlah Total SKS Diambil : ${mahasiswa1.sks}");
        } else if (tempch == 4) {
          double tempips;
          stdout.write("Input IPS : ");
          String? temp = stdin.readLineSync();
          tempips = double.parse(temp!);
          mahasiswa1.hitungIpk(mahasiswa1.ips, tempips);
          mahasiswa1.ips = tempips;
        } else if (tempch == 5) {
          print("IPK : ${mahasiswa1.ipk}");
        }
        Terminal().clearScreen();
      } while (tempch != 0);
    } else if (choice == 2) {
      do {
        int tempch2;
        print("1. Dosen LB");
        print("2. Dosen Tamu");
        print("3. Dosen Tetap");
        print("4. Staff");
        print("0. Exit");
        stdout.write("Choice : ");
        String? temp = stdin.readLineSync();
        tempch = int.parse(temp!);

        if (tempch == 1) {
          do {
            //DOSEN LB
            print("1. Lihat Jumlah SKS Diampu");
            print("2. Lihat Penghasilan");
            print("3. Edit Jumlah SKS Diampu");
            print("0. Exit");
            stdout.write("Choice : ");
            String? temp = stdin.readLineSync();
            tempch2 = int.parse(temp!);
            if (tempch2 == 1) {
              print("SKS Diampu : ${dosenLB1.sks}");
            } else if (tempch2 == 2) {
              int totalPenghasilan = dosenLB1.gajiSKS(dosenLB1.sks);
              dosenLB1.gaji = totalPenghasilan;
              print("Total Penghasilan : ${dosenLB1.gaji}");
            } else if (tempch2 == 3) {
              stdout.write("Input Jumlah SKS Diampu : ");
              String? temp = stdin.readLineSync();
              int tempsksdosen = int.parse(temp!);
              dosenLB1.sks = tempsksdosen;
            }
          } while (tempch2 != 0);
        } else if (tempch == 2) {
          do {
            //DOSEN Tamu
            print("1. Lihat Jumlah SKS Diampu");
            print("2. Lihat Penghasilan");
            print("3. Edit Jumlah SKS Diampu");
            print("0. Exit");
            stdout.write("Choice : ");
            String? temp = stdin.readLineSync();
            tempch2 = int.parse(temp!);
            if (tempch2 == 1) {
              print("SKS Diampu : ${dosenTamu1.sks}");
            } else if (tempch2 == 2) {
              int totalPenghasilan = dosenTamu1.gajiSKS(dosenTamu1.sks);
              totalPenghasilan += dosenTamu1.tunjangan();
              dosenTamu1.gaji = totalPenghasilan;
              print("Total Penghasilan : ${dosenTamu1.gaji}");
            } else if (tempch2 == 3) {
              stdout.write("Input Jumlah SKS Diampu : ");
              String? temp = stdin.readLineSync();
              int tempsksdosen = int.parse(temp!);
              dosenTamu1.sks = tempsksdosen;
            }
          } while (tempch2 != 0);
        } else if (tempch == 3) {
          do {
            //DOSEN Tetap
            print("1. Lihat Jumlah SKS Diampu");
            print("2. Lihat Penghasilan");
            print("3. Edit Jumlah SKS Diampu");
            print("0. Exit");
            stdout.write("Choice : ");
            String? temp = stdin.readLineSync();
            tempch2 = int.parse(temp!);
            if (tempch2 == 1) {
              print("SKS Diampu : ${dosenTetap1.sks}");
            } else if (tempch2 == 2) {
              int totalPenghasilan = dosenTetap1.gajiSKS(dosenTetap1.sks);
              totalPenghasilan += dosenTetap1.tunjangan();
              totalPenghasilan += gajidasar;
              dosenTetap1.gaji = totalPenghasilan;
              print("Total Penghasilan : ${dosenTetap1.gaji}");
            } else if (tempch2 == 3) {
              stdout.write("Input Jumlah SKS Diampu : ");
              String? temp = stdin.readLineSync();
              int tempsksdosen = int.parse(temp!);
              dosenTetap1.sks = tempsksdosen;
            }
          } while (tempch2 != 0);
        } else if (tempch == 4) {
          do {
            //Staff
            print("1. Absensi");
            print("2. Cuti");
            print("3. Lihat Total Gaji");
            print("0. Exit");
            stdout.write("Choice : ");
            String? temp = stdin.readLineSync();
            tempch2 = int.parse(temp!);
            if (tempch2 == 1) {
              staff1.absen();
            } else if (tempch2 == 2) {
              staff1.ambilJatahCuti();
            } else if (tempch2 == 3) {
              int totalGaji = gajidasar;
              totalGaji += staff1.tunjangan();
              staff1.gaji = totalGaji;
              print("Total Gaji : ${staff1.gaji}");
            }
          } while (tempch2 != 0);
        }
        Terminal().clearScreen();
      } while (tempch != 0);
    }
    Terminal().clearScreen();
  } while (choice != 0);
}
