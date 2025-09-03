void main() {
  // Data karyawan
  String nama = "Zahwa Amanda Andreas";
  int jamKerja = 48;
  double upahPerJam = 50000;
  bool statusTetap = true; // true = tetap, false = kontrak

  // Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Hitung pajak
  double pajak;
  if (statusTetap) {
    pajak = gajiKotor * 0.10; // 10% untuk karyawan tetap
  } else {
    pajak = gajiKotor * 0.05; // 5% untuk kontrak
  }

  // Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("===== Slip Gaji Karyawan =====");
  print("Nama Karyawan : $nama");
  print("Jam Kerja     : $jamKerja jam/minggu");
  print("Upah per Jam  : Rp${upahPerJam.toStringAsFixed(0)}");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("-------------------------------");
  print("Gaji Kotor    : Rp${gajiKotor.toStringAsFixed(0)}");
  print("Pajak         : Rp${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih   : Rp${gajiBersih.toStringAsFixed(0)}");
}
