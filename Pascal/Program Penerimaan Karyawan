program penerimaan_karyawan;

var
  pilihan: integer;
  nilaiTertulis: integer;

begin
  writeln('Selamat datang di Program Penerimaan Karyawan!');
  writeln('Silahkan pilih divisi yang anda inginkan:');
  writeln('1. ADMIN');
  writeln('2. CALL CENTER');
  writeln('3. MARKETING');
  write('Masukan Bagian Devisi Yang Anda Inginkan');readln(pilihan);

  writeln('Silahkan masukkan nilai tertulis anda:');
  readln(nilaiTertulis);

  case pilihan of
    1: begin
         if (nilaiTertulis >= 70) and (nilaiTertulis <= 80) then
           writeln('Anda Telah Memenuhi Syarat lulus ADMIN')
         else if (nilaiTertulis >= 60) and (nilaiTertulis <= 69) then
           writeln('Anda Telah Memenuhi Syarat lulus CALL CENTER (Silahkan dicoba untuk test lagi pada divisi CALL CENTER)')
         else if (nilaiTertulis >= 81) and (nilaiTertulis <= 100) then
           writeln('Anda Telah Memenuhi Syarat lulus MARKETING (Silahkan dicoba untuk test lagi pada divisi MARKETING)')
         else
           writeln('Anda TIDAK MEMENUHI PERSYARATAN BERGABUNG di Perusahaan ini');
       end;
    2: begin
         if (nilaiTertulis >= 70) and (nilaiTertulis <= 80) then
           writeln('Anda Telah Memenuhi Syarat lulus ADMIN (Silahkan dicoba untuk test lagi pada divisi ADMIN)')
         else if (nilaiTertulis >= 60) and (nilaiTertulis <= 69) then
           writeln('Anda Telah Memenuhi Syarat lulus CALL CENTER')
         else if (nilaiTertulis >= 81) and (nilaiTertulis <= 100) then
           writeln('Anda Telah Memenuhi Syarat lulus MARKETING (Silahkan dicoba untuk test lagi pada divisi MARKETING)')
         else
           writeln('Anda TIDAK MEMENUHI PERSYARATAN BERGABUNG di Perusahaan ini');
       end;
    3: begin
         if (nilaiTertulis >= 70) and (nilaiTertulis <= 80) then
           writeln('Anda Telah Memenuhi Syarat lulus ADMIN (Silahkan dicoba untuk test lagi pada divisi ADMIN)')
         else if (nilaiTertulis >= 60) and (nilaiTertulis <= 69) then
           writeln('Anda Telah Memenuhi Syarat lulus CALL CENTER (Silahkan dicoba untuk test lagi pada divisi CALL CENTER)')
         else if (nilaiTertulis >= 81) and (nilaiTertulis <= 100) then
           writeln('Anda Telah Memenuhi Syarat lulus MARKETING')
         else
           writeln('Anda TIDAK MEMENUHI PERSYARATAN BERGABUNG di Perusahaan ini');
       end;
    else
      writeln('Pilihan tidak valid!');
  end;

  writeln('Terima kasih sudah mencoba Program Penerimaan Karyawan.');
end.

