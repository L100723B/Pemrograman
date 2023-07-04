program MenuProgram;
uses
  crt;

procedure HitungTarifSewaKendaraan;
var
  NamaPenyewa: string;
  JumlahKendaraan, LamaSewa: integer;
  TarifSewa, Potongan: integer;
begin
  writeln('=== Menghitung Tarif Sewa Kendaraan ===');
  write('Nama Penyewa: ');
  readln(NamaPenyewa);
  write('Jumlah Kendaraan: ');
  readln(JumlahKendaraan);
  write('Lama Hari Sewa: ');
  readln(LamaSewa);

  TarifSewa := JumlahKendaraan * 200000;

  if (JumlahKendaraan >= 3) and (LamaSewa >= 3) then
    Potongan := 200000
  else if (JumlahKendaraan <= 2) and (LamaSewa >= 3) then
    Potongan := 50000
  else if (JumlahKendaraan >= 3) and (LamaSewa <= 2) then
    Potongan := 100000
  else
    Potongan := 0;

  TarifSewa := TarifSewa - Potongan;

  writeln('====================');
  writeln('Nama Penyewa: ', NamaPenyewa);
  writeln('Jumlah Kendaraan: ', JumlahKendaraan);
  writeln('Lama Hari Sewa: ', LamaSewa);
  writeln('Tarif yang harus dibayarkan: ', TarifSewa);
  writeln('====================');
end;

procedure PerubahanKelipatanAngka;
var
  AngkaPertama, AngkaKedua, Batasan: integer;
  i: integer;
begin
  writeln('=== Perubahan Kelipatan Angka Dengan "#" ===');
  write('Angka Pertama: ');
  readln(AngkaPertama);
  write('Angka Kedua: ');
  readln(AngkaKedua);
  write('Batasan Panjang Deret Bilangan: ');
  readln(Batasan);

  i := 1;
  while i <= Batasan do
  begin
    if (i mod AngkaPertama = 0) and (i mod AngkaKedua = 0) then
      write('# ')
    else if (i mod AngkaPertama = 0) then
      write(AngkaPertama, ' ')
    else if (i mod AngkaKedua = 0) then
      write(AngkaKedua, ' ')
    else
      write(i, ' ');

    i := i + 1;
  end;

  writeln;
  writeln('====================');
end;

procedure KelipatanAngkaAkhir;
var
  AngkaAkhir, Batasan: integer;
  i: integer;
begin
  writeln('=== Program Kelipatan Angka Akhir ===');
  write('Angka Akhir: ');
  readln(AngkaAkhir);
  write('Batasan Panjang Deret Bilangan: ');
  readln(Batasan);

  i := 1;
  repeat
    if i mod AngkaAkhir = 0 then
      write(i, ' ');

    i := i + 1;
  until i > Batasan;

  writeln;
  writeln('====================');
end;

procedure PerulanganXO;
var
  Baris, Kolom: integer;
  i, j: integer;
begin
  writeln('=== Program Perulangan "X" dan "O" ===');
  write('Jumlah Baris: ');
  readln(Baris);
  write('Jumlah Kolom: ');
  readln(Kolom);

  for i := 1 to Baris do
  begin
    for j := 1 to Kolom do
    begin
      if (i = j) or (i + j = Baris + 1) then
        write('X ')
      else
        write('O ');
    end;
    writeln;
  end;

  writeln('====================');
end;

procedure HitungPenjualanGamis;
var
  BanyakPesanan: integer;
  Harga: array of integer;
  Kode: array of string;
  TotalPendapatan, Keuntungan, PendapatanBersih: integer;
  i: integer;
begin
  writeln('=== Menghitung Penjualan Gamis ===');
  write('Banyak Pesanan Gamis: ');
  readln(BanyakPesanan);

  SetLength(Harga, BanyakPesanan);
  SetLength(Kode, BanyakPesanan);

  TotalPendapatan := 0;

  for i := 0 to BanyakPesanan - 1 do
  begin
    write('Harga Pesanan ke-', i + 1, ': ');
    readln(Harga[i]);
    write('Kode Pesanan ke-', i + 1, ': ');
    readln(Kode[i]);

    TotalPendapatan := TotalPendapatan + Harga[i];
  end;

  Keuntungan := TotalPendapatan div 10;
  PendapatanBersih := TotalPendapatan - Keuntungan;

  writeln('====================');
  writeln('Total Pendapatan: ', TotalPendapatan);
  writeln('Keuntungan: ', Keuntungan);
  writeln('Pendapatan Bersih: ', PendapatanBersih);
  writeln('====================');
end;

procedure PendataanPendaftaranMahasiswa;
var
  JumlahMahasiswa: integer;
  DataMahasiswa: array of array of string;
  i, j: integer;
begin
  writeln('=== Pendataan Pendaftaran Mahasiswa Baru ===');
  write('Jumlah Mahasiswa: ');
  readln(JumlahMahasiswa);

  SetLength(DataMahasiswa, JumlahMahasiswa, 3);

  for i := 0 to JumlahMahasiswa - 1 do
  begin
    writeln('Data Mahasiswa ke-', i + 1);
    write('NIM: ');
    readln(DataMahasiswa[i, 0]);
    write('Nama: ');
    readln(DataMahasiswa[i, 1]);
    write('Jurusan: ');
    readln(DataMahasiswa[i, 2]);
  end;

  writeln('====================');
  writeln('Data Mahasiswa:');
  for i := 0 to JumlahMahasiswa - 1 do
  begin
    writeln('Data Mahasiswa ke-', i + 1);
    writeln('NIM: ', DataMahasiswa[i, 0]);
    writeln('Nama: ', DataMahasiswa[i, 1]);
    writeln('Jurusan: ', DataMahasiswa[i, 2]);
  end;
  writeln('====================');
end;

var
  Pilihan: char;
  Selesai: boolean;
begin
  Selesai := False;

  repeat
    writeln('Menu Program:');
    writeln('1. Menghitung Tarif Sewa Kendaraan');
    writeln('2. Perubahan Kelipatan Angka dengan "#"');
    writeln('3. Program Kelipatan Angka Akhir');
    writeln('4. Perulangan "X" dan "O"');
    writeln('5. Menghitung Penjualan Gamis');
    writeln('6. Pendataan Pendaftaran Mahasiswa Baru');
    writeln('T. Selesai');

    write('Pilihan Anda: ');
    readln(Pilihan);

    case Pilihan of
      '1':
        HitungTarifSewaKendaraan;
      '2':
        PerubahanKelipatanAngka;
      '3':
        KelipatanAngkaAkhir;
      '4':
        PerulanganXO;
      '5':
        HitungPenjualanGamis;
      '6':
        PendataanPendaftaranMahasiswa;
      'T', 't':
        Selesai := True;
    end;

    writeln;
  until Selesai;

end.
