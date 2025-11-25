--- Nama : Arjuna
--- Nim  : D0224347


MariaDB [rumah_sakit]> SELECT * FROM pasien
    -> WHERE umur BETWEEN 25 AND 40;
+-----------+--------+------+----------+
| id_pasien | nama   | umur | alamat   |
+-----------+--------+------+----------+
|         2 | Bima   |   30 | Bandung  |
|         3 | Citra  |   27 | Surabaya |
|         6 | Fani   |   33 | Semarang |
|         7 | Gilang |   29 | Bekasi   |
|         9 | Indra  |   36 | Bogor    |
|        12 | Lina   |   32 | Padang   |
|        13 | Mira   |   28 | Bali     |
|        15 | Omar   |   38 | Manado   |
+-----------+--------+------+----------+
8 rows in set (0.016 sec)

MariaDB [rumah_sakit]> SELECT * FROM kunjungan
    -> WHERE biaya BETWEEN 200000 AND 400000;
+--------------+-----------+-----------+------------+--------+
| id_kunjungan | id_pasien | id_dokter | tanggal    | biaya  |
+--------------+-----------+-----------+------------+--------+
|            2 |         2 |         3 | 2025-03-02 | 300000 |
|            3 |         3 |         2 | 2025-03-03 | 200000 |
|            4 |         4 |         5 | 2025-03-04 | 350000 |
|            6 |         6 |         7 | 2025-03-06 | 250000 |
|            8 |         8 |         9 | 2025-03-08 | 400000 |
|           11 |        11 |        11 | 2025-03-11 | 220000 |
|           12 |        12 |        12 | 2025-03-12 | 280000 |
|           15 |        15 |        15 | 2025-03-15 | 300000 |
+--------------+-----------+-----------+------------+--------+
8 rows in set (0.001 sec)

MariaDB [rumah_sakit]> SELECT * FROM dokter
    -> WHERE spesialis = 'Bedah';
+-----------+-----------+-----------+------------+
| id_dokter | nama      | spesialis | pengalaman |
+-----------+-----------+-----------+------------+
|         4 | Dr. Deni  | Bedah     |         12 |
|        14 | Dr. Nando | Bedah     |         14 |
+-----------+-----------+-----------+------------+
2 rows in set (0.008 sec)

MariaDB [rumah_sakit]> SELECT * FROM pasien
    -> WHERE alamat = 'Jakarta';
+-----------+-------+------+---------+
| id_pasien | nama  | umur | alamat  |
+-----------+-------+------+---------+
|         1 | Aulia |   22 | Jakarta |
+-----------+-------+------+---------+
1 row in set (0.001 sec)

MariaDB [rumah_sakit]>
