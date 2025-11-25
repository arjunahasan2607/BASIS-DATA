--- Nama : arjuna
--- Nim  : D0224347

MariaDB [(none)]> CREATE DATABASE rumah_sakit;
Query OK, 1 row affected (0.012 sec)

MariaDB [(none)]> USE rumah_sakit;
Database changed
MariaDB [rumah_sakit]> CREATE TABLE dokter (
    ->     id_dokter INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama VARCHAR(50),
    ->     spesialis VARCHAR(50),
    ->     pengalaman INT
    -> );
Query OK, 0 rows affected (0.018 sec)

MariaDB [rumah_sakit]> CREATE TABLE pasien (
    ->     id_pasien INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama VARCHAR(50),
    ->     umur INT,
    ->     alamat VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.050 sec)

MariaDB [rumah_sakit]> CREATE TABLE kunjungan (
    ->     id_kunjungan INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_pasien INT,
    ->     id_dokter INT,
    ->     tanggal DATE,
    ->     biaya INT,
    ->     FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
    ->     FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
    -> );
Query OK, 0 rows affected (0.057 sec)

MariaDB [rumah_sakit]> INSERT INTO dokter (nama, spesialis, pengalaman) VALUES
    -> ('Dr. Andi', 'Umum', 5),
    -> ('Dr. Budi', 'Anak', 8),
    -> ('Dr. Clara', 'Kandungan', 10),
    -> ('Dr. Deni', 'Bedah', 12),
    -> ('Dr. Eka', 'Saraf', 7),
    -> ('Dr. Fajar', 'Kulit', 6),
    -> ('Dr. Gita', 'THT', 9),
    -> ('Dr. Hana', 'Gigi', 4),
    -> ('Dr. Indra', 'Mata', 11),
    -> ('Dr. Joko', 'Jantung', 13),
    -> ('Dr. Kiki', 'Paru-paru', 8),
    -> ('Dr. Lani', 'Psikiater', 7),
    -> ('Dr. Mira', 'Umum', 3),
    -> ('Dr. Nando', 'Bedah', 14),
    -> ('Dr. Olivia', 'Anak', 5);
Query OK, 15 rows affected (0.092 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [rumah_sakit]> INSERT INTO pasien (nama, umur, alamat) VALUES
    -> ('Aulia', 22, 'Jakarta'),
    -> ('Bima', 30, 'Bandung'),
    -> ('Citra', 27, 'Surabaya'),
    -> ('Dewi', 19, 'Medan'),
    -> ('Evan', 45, 'Palembang'),
    -> ('Fani', 33, 'Semarang'),
    -> ('Gilang', 29, 'Bekasi'),
    -> ('Hana', 41, 'Depok'),
    -> ('Indra', 36, 'Bogor'),
    -> ('Joko', 50, 'Makassar'),
    -> ('Kania', 24, 'Malang'),
    -> ('Lina', 32, 'Padang'),
    -> ('Mira', 28, 'Bali'),
    -> ('Nina', 20, 'Solo'),
    -> ('Omar', 38, 'Manado');
Query OK, 15 rows affected (0.012 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [rumah_sakit]> INSERT INTO kunjungan (id_pasien, id_dokter, tanggal, biaya) VALUES
    -> (1, 1, '2025-03-01', 150000),
    -> (2, 3, '2025-03-02', 300000),
    -> (3, 2, '2025-03-03', 200000),
    -> (4, 5, '2025-03-04', 350000),
    -> (5, 4, '2025-03-05', 500000),
    -> (6, 7, '2025-03-06', 250000),
    -> (7, 6, '2025-03-07', 180000),
    -> (8, 9, '2025-03-08', 400000),
    -> (9, 8, '2025-03-09', 160000),
    -> (10, 10, '2025-03-10', 600000),
    -> (11, 11, '2025-03-11', 220000),
    -> (12, 12, '2025-03-12', 280000),
    -> (13, 13, '2025-03-13', 140000),
    -> (14, 14, '2025-03-14', 450000),
    -> (15, 15, '2025-03-15', 300000);
Query OK, 15 rows affected (0.012 sec)
Records: 15  Duplicates: 0  Warnings: 0
