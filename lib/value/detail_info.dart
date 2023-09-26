class DetailInfo {
  String name;
  String imageAsset;
  String description;
  String location;

  DetailInfo(
      {required this.name,
      required this.imageAsset,
      required this.description,
      required this.location});
}

var detailInfoList = [
  DetailInfo(
      name: 'Pantai Banyutowo',
      imageAsset: 'images/pantai_banyutowo.jpg',
      description:
          """Tempat wisata di Pati yang satu ini berbatasan dengan Kabupaten Jepara dan berada tak jauh dari obyek wisata di Jepara. Pantai yang satu ini menawarkan keindahan berupa air laut yang biru serta hamparan pasir di pesisir pantai yang tampak membentang luas.
          Selain itu di pantai ini juga terdapat dermaga kapal nelayan yang mampu memberikan nuansa yang berbeda. Dari kejauhan tampak pantulan bayang-bayang kapal di atas laut saat senja yang menambah lukisan pemandangan kian menawan.
          Kondisi Pantai Banyutowo yang sangat memukau ini biasanya dijadikan sebagai lokasi piknik keluarga. Bahkan pantai ini juga dijadikan sebagai lokasi ritual sedekah laut yang rutin diselenggarakan.
          Uniknya Pantai Banyutowo ini juga disebut sebagai Pantai Soimah karena di pantai inilah artis Soimah dibesarkan sehingga masyarakat setempat menyebutnya sebagai Pantai Soimah.""",
      location: 'Desa Banyutowo, Kecamatan Dukuhseti, Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Hutan Mangrove Pantai Sambilawang',
      imageAsset: 'images/hutan_mangrove_pantai_sambilawang.jpg',
      description:
          """Masih berkaitan dengan wisata pantai, kali ini Pati menawarkan wisata alam Hutan Mangrove Pantai Sambilawang. Pantai ini memiliki hutan mangrove yang bisa disaksikan oleh pengunjung sambil menikmati keindahan sunrise di balik hutan bakau.
          Sambil bersantai, wisatawan juga diperbolehkan untuk memancing di sekitaran hutan mangrove. Selain itu, tempat wisata ini juga menawarkan pemandangan laut yang berbatasan dengan daratan namun tidak disertai pasir pantai. Tentu hal ini akan mejadi pengalaman baru yang berkesan dan menyenangkan.
          Untuk hutan mangrove yang berada di Pantai Sambilawang ini mempunyai luas sekitar 8 hektare serta sering dijadikan sebagai lokasi wisata edukasi.""",
      location: 'Desa Sambilawang, Kecamatan Trangkil, Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Alun-alun Simpang Lima',
      imageAsset: 'images/alun_alun_pati.jpg',
      description:
          """Berkunjung ke Pasti terasa kurang lengkap bila anda tak mampir ke Alun-Alun Simpang Lima Pati. Alun-alun ini memang sangat unik karena hingga kini masih terus mempertahankan wujud yang pernah digagah sejak zaman dahulu.
          Di bagian utara alun-alun terdapat kantor pemerintahan Kabupaten Pati, bagian timurnya terdapat pasar. Sedangkan di bagian barat alun-alun terdapat Masjid Agung Baitunnur.
          Alun-alun Simpang Lima Pati biasanya dijadikan sebagai tempat nongkrong anak-anak muda karena lokasinya yang sangat strategis untuk dikunjungi. Bahkan di kawasan akun-alun ini sering diadakan konser musik karena lokasi alun-alun yang memang sangat luas.
          Pada malam hari suasana sekitar alun-alun semakin meriah dengan adanya lampu warna-warni yang dipasang untuk menghiasi alun-alun. Biasanya di sekitaran alun-alun juga terdapat penjual berbagai jenis makanan yang bisa dinikmati sambil bersantai.""",
      location: 'Desa Pati Kidul, Kecamatan Pati, Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Pulau Seprapat',
      imageAsset: 'images/pulau_seprapat.jpg',
      description:
          """Tempat wisata di Pati ini adalah tempat rekreasi yang berada di sebelah utara TPI Juwana. Pulau Seprapat merupakan pulau buatan yang dibangun pada masa penjajahan Belanda dan memiliki banyak pepohonan sehingga terasa begitu rindang.
          Menurut cerita yang beredar di masyarakat, Pulau ini memang cukup banyak menyimpan misteri, mitos dan legenda yang sudah muncul sejak zaman Majapahit. Namun kisah-kisah tersebut  seolah tertepis dengan keindahan dan hijaunya Pulau Seprapat ini. Di tengah pulau juga terdapat sebuah makam yang berbentuk mushola dan dibangun oleh masyarakat setempat. Berbagai kisah mistis di pulau ini seolah tak menyurutkan minat wisatawan  untuk mengeksplor lebih jauh pulau ini.""",
      location: 'Desa Growong Lor, Kecamatan Juwana, Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Waduk Gunung Rowo',
      imageAsset: 'images/waduk_gunung_rowo.jpg',
      description:
          """Obyek wisata yang satu ini menawarkan wisata sejarah karena waduk ini merupakan salah satu peninggalan Belanda yang hingga saat ini masih terawat dengan baik. Waduk Gunung Rowo Pati berada di Desa Situluhur, Gembong, Pati.
          Saat berada di waduk ini wisatawan bisa menikmati keindahan pemandangan hijau dari Gunung Muria yang berada di sebelah timur waduk.
          Sebetulnya pembangunan waduk ini bertujuan untuk irigasi sawah-sawah di sekitarnya. Namun ternyata keindahan pemandangan di sekitar waduk juga tak kalah indahnya sehingga menjadikan waduk ini semakin banyak dikunjungi oleh wisatawan.""",
      location: 'Desa Sitiluhur, Kecamatan Gembong, Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Waduk Seloromo',
      imageAsset: 'images/waduk_seloromo.jpg',
      description:
          """Sebetulnya pembangunan waduk ini bertujuan sebagai sarana irigasi namun justru semakin menarik minat wisatawan untuk mengunjunginya.
          Lokasi Waduk Seloromo juga tidak begitu jauh dari Waduk Gunung Rowo Jati dengan keindahan pemandangan di sekitaran waduk yang boleh diadu.
          Sudah banyak fotografer yang datang ke waduk ini untuk mengambil gambar spot-spot terbaik yang akan diabadikan.  Namun biasanya masyarakat yang datang ke waduk ini ingin sekedar bersantai untuk melepas penat.""",
      location: 'Desa Gembong, Kecamatan Gembong, Kabupaten Pati, Jawa Tengah'),
  DetailInfo(
      name: 'Juwana Water Fantasy',
      imageAsset: 'images/juwana_water_fantasy.jpg',
      description:
          """Tempat wisata yang satu ini merupakan destinasi wisata keluarga yang memiliki tema waterboom atau wisata air. Untuk bentuk bangunan Juwana Water Fantasy diperoleh dari Tembok Benteng di Eropa sehingga menghasilkan desain bangunan yang unik dan megah.
          Juwana Water Fantasy berada di Jalan Juwana Rembang KM 7, Bumimulyo, Pati. Tidak hanya menyediakan kolam renang yang seru untuk anak-anak dan orang dewasa, Juwana Water Fantasy juga menawarkan berbagai wahana permaina yang jumlahnya sekitar 35 wahana.
          Bahkan jumlah wahana permainan tersebut diperkirakan juga akan terus bertambah. Dengan banyaknya permainan air maupun darat membuat waterboom ini mampu mewujudkan fantasi anda yang mungkin selama ini masih terpendam. Juwana Water Fantasy ini didirikan di atas lahan seluas 5 hektar dan sangat cocok untuk mengisis liburan akhir pekan.""",
      location: 'Desa Bumimulyo, Kecamtan Batangan, Pati, Jawa Tengah')
];
