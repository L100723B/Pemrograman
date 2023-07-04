program AplikasiWarnet;

var
  jumlah_komputer, lama_sewa: integer;
  harga_sewa, harga_total, diskon, harga_total_diskon: real;

begin
  // Input jumlah komputer dan lama jam sewa
  write('Masukkan jumlah komputer yang disewa: ');
  readln(jumlah_komputer);
  write('Masukkan lama jam sewa: ');
  readln(lama_sewa);

  // Harga sewa warnet per jam
  harga_sewa := 5000;

  // Harga total sebelum diskon
  harga_total := harga_sewa * jumlah_komputer * lama_sewa;

  // Hitung diskon berdasarkan kondisi yang telah diberikan
  if (jumlah_komputer > 1) and (lama_sewa >= 5) then
    diskon := 0.4
  else if (jumlah_komputer > 1) and (lama_sewa < 5) then
    diskon := 0.2
  else if (jumlah_komputer = 1) and (lama_sewa >= 5) then
    diskon := 0.1
  else
    diskon := 0;

  // Hitung harga total setelah diskon
  harga_total_diskon := harga_total * (1 - diskon);

  // Cetak harga total dan diskon
  writeln('Harga total sebelum diskon: ', harga_total:0:2);
  writeln('Diskon: ', diskon * 100:0:2, '%');
  writeln('Harga total setelah diskon: ', harga_total_diskon:0:2);

  // Tunggu input dari user sebelum keluar dari program
  readln;
end.

