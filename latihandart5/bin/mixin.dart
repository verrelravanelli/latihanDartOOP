mixin GajiDasar {
  int gajiDasar(int _gajidasar) {
    return _gajidasar;
  }
}

mixin GajiPerSKS {
  int gajiSKS(int _sks) {
    return _sks * 40000;
  }
}

mixin Tunjangan {
  int tunjangan() {
    //Tunjangan kehadiran asumsi total hari kerja 20 hari 5 hari per minggu
    // perhari diberi tunjangan 20000 maka 20 hari kerja 20*20000
    return 20 * 20000;
  }
}
