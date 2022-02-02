class Tempat {
  String id;
  String judul;
  String jadwal;
  String buka;
  String hargatiket;
  String keterangan;

  Tempat({
    required this.id,
    required this.judul,
    required this.jadwal,
    required this.buka,
    required this.hargatiket,
    required this.keterangan,
  });
}

List tempatList = [
  Tempat(
      id: "danautoba",
      judul: "Danau Toba",
      jadwal: "Setiap Hari",
      buka:"24 Jam",
      hargatiket: "Gratis",
      keterangan:
          "Danau yang merupakan destinasi wisata favorit ini juga merupakan merupakan ikon Sumatera Utara. Terdapat banyak penginapan bila anda ingin bermalam disini. Danau Toba selalu ramai dikunjungi oleh wisatawan baik di hari-hari biasa maupun akhir pekan atau hari libur."),
  Tempat(
      id: "museum",
      judul: "Rahmat International Wildlife Museum and Gallery ",
      jadwal: "Setiap Hari",
      buka:"09:00 - 17:00 Wib",
      hargatiket: "30.000/Orang",
      keterangan:
          "Rahmat International Wildlife Museum and Gallery adalah museum yang diilhami oleh Dr. H Rahmatsyah yang memiliki kecintaan pada alam dan niatnya mencegah kepunahan hewan langka. Museum ini terletak di Jl. S. Parman No.309, Petisah Hulu, Kec. Medan Baru, Kota Medan, Sumatera Utara 20152."),
  Tempat(
      id: "PantaiPandan",
      judul: "Pantai Pandan Tapteng",
      jadwal: "Setiap Hari",
      buka:"24 Jam",
      hargatiket: "-",
      keterangan:
          "Pantai Pandan terletak di pesisir Sibolga, secara administratif termasuk dalam wilayah Desa Pandan, Kecamatan Pandan, Kabupaten Tapanuli Tengah, Sumatera Utara. Pantai Pandan ini merupakan salah satu pantai yang paling populer di Sumatera Utara dan menjadi destinasi favorit bagi kamu yang ingin menghabiskan waktu liburan di pantai."),
  Tempat(
      id: "siosar",
      judul: "Puncak 2000 Siosar",
      jadwal: "Setiap Hari",
      buka:"24 Jam",
      hargatiket: "15.000/orang",
      keterangan:
          "Jarak 15 km dari kantor Pos Kabanjahe (titik 0 km kota Kabanjahe) menuju Puncak 2000 Siosar dapat ditempuh dalam 32 menit perjalanan dengan kondisi lalu lintas normal."),
  Tempat(
      id: "tamanair",
      judul: "Taman Air Percut",
     jadwal: "Setiap Hari",
      buka:"08:00 - 17:00 Wib",
      hargatiket: "15.000/orang",
      keterangan:
          "Alamat: Jalan Kawasan Industri, Paluh Gelombang, Tanjung Rejo, Percut Sei Tuan, Tj. Rejo, Kec. Percut Sei Tuan, Kabupaten Deli Serdang, Sumatera Utara 20371"),
  Tempat(
      id: "Velangkanni",
      judul: "Graha Maria Annai Velangkanni",
     jadwal: "Setiap Hari",
      buka:"08:00 - 18:00 Wib",
      hargatiket: "10.000/orang",
      keterangan:
          "Jl. Sakura III No.7-10, Tj. Selamat, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20135"),
];
