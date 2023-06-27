program TransaksiWarnet;

const
  HargaPengetikanPerJam = 1000;
  HargaGamePerJam = 2000;

type
  Transaksi = record
    NoPC: Integer;
    Durasi: Integer;
    JenisPaket: Integer;
    Harga: Integer;
    Jumlah: Integer;
  end;

var
  TransaksiArr: array of Transaksi;
  JumlahTransaksi: Integer;
  i: Integer;

procedure InputTransaksi(var transaksi: Transaksi);
begin
  Write('No PC: ');
  Readln(transaksi.NoPC);
  Write('Durasi (jam): ');
  Readln(transaksi.Durasi);
  Write('Jenis Paket (1=Pengetikan, 2=Game): ');
  Readln(transaksi.JenisPaket);

  if transaksi.JenisPaket = 1 then
    transaksi.Harga := HargaPengetikanPerJam
  else if transaksi.JenisPaket = 2 then
    transaksi.Harga := HargaGamePerJam;
    
  transaksi.Jumlah := transaksi.Durasi * transaksi.Harga;
end;

procedure OutputTransaksi(transaksi: Transaksi);
var
  jenisPaket: string;
begin
  Write('| ', transaksi.NoPC:2, ' ');
  Write('| ', transaksi.Durasi:6, ' ');
  
  if transaksi.JenisPaket = 1 then
    jenisPaket := 'Pengetikan'
  else if transaksi.JenisPaket = 2 then
    jenisPaket := 'Game';

  Write('| ', jenisPaket:10, ' ');
  Write('| ', transaksi.Harga:5, ' ');
  Write('| ', transaksi.Jumlah:6, ' ');
  Writeln('|');
end;

begin
  Write('Jumlah Transaksi: ');
  Readln(JumlahTransaksi);

  SetLength(TransaksiArr, JumlahTransaksi);

  for i := 0 to JumlahTransaksi - 1 do
  begin
    Writeln('Transaksi ke-', i + 1);
    InputTransaksi(TransaksiArr[i]);
  end;

  Writeln('+-------+--------+------------+-------+--------+');
  Writeln('| No PC | Durasi |   Paket    | Harga | Jumlah |');
  Writeln('+-------+--------+------------+-------+--------+');

  for i := 0 to JumlahTransaksi - 1 do
  begin
    OutputTransaksi(TransaksiArr[i]);
  end;

  Writeln('+------+--------+------------+-------+--------+');
  Readln;
end.
