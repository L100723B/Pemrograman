program hitung_rata_rata_tugas;

var
  Jumlah_Tugas, i: integer;
  Tugas: array of integer;
  total_Nilai: integer;
  Nilai_Rtt: real;
  input_score: integer;

begin
  // Meminta input dari pengguna untuk jumlah tugas
  Jumlah_Tugas:=2;
  
  // Inisialisasi array assignments
  SetLength(Tugas, Jumlah_Tugas);

  // Meminta input nilai setiap tugas
  for i := 0 to Jumlah_Tugas - 1 do
  begin
    repeat
      // Meminta input nilai dalam rentang 1-100
      write('Masukkan nilai tugas ke-', i+1, ': ');
      readln(input_score);
      if (input_score < 1) or (input_score > 100) then
      begin
        writeln('Nilai yang Anda masukkan salah. Silakan masukkan nilai antara 1-100.');
      end;
    until (input_score >= 1) and (input_score <= 100);
    Tugas[i] := input_score;
  end;

  // Menghitung nilai rata-rata tugas
  total_Nilai := 0;
  for i := 0 to Jumlah_Tugas - 1 do
  begin
    total_Nilai := total_Nilai + Tugas[i];
  end;
  Nilai_Rtt := total_Nilai / Jumlah_Tugas;

  // Menampilkan nilai rata-rata tugas
  writeln('Nilai rata-rata tugas adalah: ', Nilai_Rtt:0:2);
end.

