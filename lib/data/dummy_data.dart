class JadwalSampah {
  String location;
  String name;
  String date;
  String time;

  JadwalSampah(
      {required this.location, required this.name, required this.date, required this.time});
}

var ListJadwalSampah = [
  JadwalSampah(
    location: 'Sewon dan sekitarnya',
    name: 'Bank Sampah Dauresik',
    date: 'Minggu, 17 Aug 2023',
    time: '07.00-10.00'
  ),
  JadwalSampah(
    location: 'Kasihan dan sekitarnya',
    name: 'Bank Sampah ABC',
    date: 'Minggu, 17 Aug 2023',
    time: '10.00-14.00'
  ),  
    JadwalSampah(
    location: 'Sragen dan sekitarnya',
    name: 'Bank Sampah KKRO',
    date: 'Minggu, 17 Aug 2023',
    time: '07.00-14.00'
  ),
];
