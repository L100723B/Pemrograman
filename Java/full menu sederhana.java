import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        char pilihan;
        boolean selesai = false;

        while (!selesai) {
            System.out.println("Menu Program:");
            System.out.println("1. Menghitung Tarif Sewa Kendaraan");
            System.out.println("2. Perubahan Kelipatan Angka dengan \"#\"");
            System.out.println("3. Program Kelipatan Angka Akhir");
            System.out.println("4. Perulangan \"X\" dan \"O\"");
            System.out.println("5. Menghitung Penjualan Gamis");
            System.out.println("6. Pendataan Pendaftaran Mahasiswa Baru");
            System.out.println("T. Selesai");

            System.out.print("Pilihan Anda: ");
            pilihan = scanner.nextLine().charAt(0);

            switch (pilihan) {
                case '1':
                    hitungTarifSewaKendaraan();
                    break;
                case '2':
                    perubahanKelipatanAngka();
                    break;
                case '3':
                    kelipatanAngkaAkhir();
                    break;
                case '4':
                    perulanganXO();
                    break;
                case '5':
                    hitungPenjualanGamis();
                    break;
                case '6':
                    pendataanPendaftaranMahasiswa();
                    break;
                case 'T':
                case 't':
                    selesai = true;
                    break;
                default:
                    System.out.println("Pilihan tidak valid.");
            }

            System.out.println();
        }
    }

    private static void hitungTarifSewaKendaraan() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Menghitung Tarif Sewa Kendaraan ===");

        System.out.print("Nama Penyewa: ");
        String namaPenyewa = scanner.nextLine();

        System.out.print("Jumlah Kendaraan: ");
        int jumlahKendaraan = scanner.nextInt();

        System.out.print("Lama Hari Sewa: ");
        int lamaHariSewa = scanner.nextInt();

        int tarif = 200000 * jumlahKendaraan;

        if (jumlahKendaraan >= 3) {
            if (lamaHariSewa >= 3) {
                tarif -= 200000;
            } else if (lamaHariSewa <= 2) {
                tarif -= 100000;
            }
        } else if (jumlahKendaraan <= 2) {
            if (lamaHariSewa >= 3) {
                tarif -= 50000;
            }
        }

        System.out.println("Tarif yang harus dibayarkan oleh " + namaPenyewa + ": " + tarif);
        System.out.println("====================");
    }

    private static void perubahanKelipatanAngka() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Perubahan Kelipatan Angka dengan \"#\" ===");

        System.out.print("Angka Pertama: ");
        int angkaPertama = scanner.nextInt();

        System.out.print("Angka Kedua: ");
        int angkaKedua = scanner.nextInt();

        System.out.print("Angka Batasan: ");
        int batasan = scanner.nextInt();

        for (int i = 1; i <= batasan; i++) {
            if (i % angkaPertama == 0 && i % angkaKedua == 0) {
                System.out.print("# ");
            } else if (i % angkaPertama == 0) {
                System.out.print(angkaPertama + " ");
            } else if (i % angkaKedua == 0) {
                System.out.print(angkaKedua + " ");
            } else {
                System.out.print(i + " ");
            }
        }

        System.out.println("\n====================");
    }

    private static void kelipatanAngkaAkhir() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Program Kelipatan Angka Akhir ===");

        System.out.print("Angka Akhir: ");
        int angkaAkhir = scanner.nextInt();

        System.out.print("Angka Batasan: ");
        int batasan = scanner.nextInt();

        int i = 1;
        do {
            System.out.print(i + " ");
            i += angkaAkhir;
        } while (i <= batasan);

        System.out.println("\n====================");
    }

    private static void perulanganXO() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Perulangan \"X\" dan \"O\" ===");

        System.out.print("Jumlah Baris: ");
        int jumlahBaris = scanner.nextInt();

        System.out.print("Jumlah Kolom: ");
        int jumlahKolom = scanner.nextInt();

        for (int i = 0; i < jumlahBaris; i++) {
            for (int j = 0; j < jumlahKolom; j++) {
                if ((i + j) % 2 == 0) {
                    System.out.print("X ");
                } else {
                    System.out.print("O ");
                }
            }
            System.out.println();
        }

        System.out.println("====================");
    }

    private static void hitungPenjualanGamis() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Menghitung Penjualan Gamis ===");

        System.out.print("Banyaknya Pesanan Gamis: ");
        int banyakPesanan = scanner.nextInt();

        int[] jumlahHarga = new int[banyakPesanan];
        int[] kodePesanan = new int[banyakPesanan];

        for (int i = 0; i < banyakPesanan; i++) {
            System.out.println("Pesanan ke-" + (i + 1));
            System.out.print("Kode Pesanan: ");
            kodePesanan[i] = scanner.nextInt();

            System.out.print("Jumlah Harga: ");
            jumlahHarga[i] = scanner.nextInt();
        }

        int totalPendapatan = 0;
        for (int i = 0; i < banyakPesanan; i++) {
            totalPendapatan += jumlahHarga[i];
        }

        double keuntungan = 0.1 * totalPendapatan;
        double pendapatanBersih = totalPendapatan - keuntungan;

        System.out.println("Total Pendapatan: " + totalPendapatan);
        System.out.println("Keuntungan: " + keuntungan);
        System.out.println("Pendapatan Bersih: " + pendapatanBersih);
        System.out.println("====================");
    }

    private static void pendataanPendaftaranMahasiswa() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("=== Pendataan Pendaftaran Mahasiswa Baru ===");

        System.out.print("Jumlah Mahasiswa Baru: ");
        int jumlahMahasiswa = scanner.nextInt();

        String[][] dataMahasiswa = new String[jumlahMahasiswa][3];

        for (int i = 0; i < jumlahMahasiswa; i++) {
            System.out.println("Data Mahasiswa ke-" + (i + 1));
            System.out.print("NIM: ");
            dataMahasiswa[i][0] = scanner.next();

            System.out.print("Nama: ");
            dataMahasiswa[i][1] = scanner.next();

            System.out.print("Jurusan: ");
            dataMahasiswa[i][2] = scanner.next();
        }

        System.out.println("Data Mahasiswa:");
        for (int i = 0; i < jumlahMahasiswa; i++) {
            System.out.println("Mahasiswa ke-" + (i + 1));
            System.out.println("NIM: " + dataMahasiswa[i][0]);
            System.out.println("Nama: " + dataMahasiswa[i][1]);
            System.out.println("Jurusan: " + dataMahasiswa[i][2]);
            System.out.println();
        }

        System.out.println("====================");
    }
}
