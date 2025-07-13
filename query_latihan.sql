-- Tampilkan semua produk dengan stok < 6
SELECT * FROM produk WHERE stok < 6;

-- Total belanja per pelanggan
SELECT p.nama, SUM(t.total) AS total_belanja
FROM transaksi t
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan
GROUP BY p.nama;

-- Produk belum pernah dibeli
SELECT * FROM produk
WHERE id_produk NOT IN (
  SELECT DISTINCT id_produk FROM transaksi
);
