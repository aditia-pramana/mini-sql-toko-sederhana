# 💼 Mini Project: Sistem Toko Sederhana (MySQL)

Saya membuat proyek ini untuk melatih kemampuan dasar SQL, khususnya dalam membuat dan mengelola database relasional. Proyek ini mensimulasikan sistem sederhana untuk mengelola produk, pelanggan, dan transaksi di sebuah toko kecil.

## 🧱 Struktur Tabel

1. **produk**
   - id_produk (INT, Primary Key)
   - nama (VARCHAR)
   - harga (DECIMAL)
   - stok (INT)

2. **pelanggan**
   - id_pelanggan (INT, Primary Key)
   - nama (VARCHAR)
   - alamat (VARCHAR)

3. **transaksi**
   - id_transaksi (INT, Primary Key)
   - id_produk (FK)
   - id_pelanggan (FK)
   - jumlah (INT)
   - total (DECIMAL)
   - tanggal (DATE)

## 🚀 Fitur yang Dibuat

- Menambahkan data produk dan pelanggan (`INSERT`)
- Melakukan transaksi pembelian dan menghitung total (`INSERT`, `UPDATE`)
- Menampilkan transaksi lengkap dengan `JOIN`
- Mengelompokkan data dengan `GROUP BY` dan filter dengan `WHERE`
- Menampilkan laporan penjualan berdasarkan waktu
- Menampilkan produk yang belum pernah terjual

## 🔍 Contoh Query

```sql
-- Menampilkan total belanja pelanggan
SELECT p.nama, SUM(t.total) AS total_belanja
FROM transaksi t
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan
GROUP BY p.nama;
