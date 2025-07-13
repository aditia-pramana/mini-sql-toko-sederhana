CREATE TABLE produk (
  id_produk INT PRIMARY KEY,
  nama VARCHAR(50),
  harga DECIMAL(10,2),
  stok INT
);

CREATE TABLE pelanggan (
  id_pelanggan INT PRIMARY KEY,
  nama VARCHAR(50),
  alamat VARCHAR(100)
);

CREATE TABLE transaksi (
  id_transaksi INT PRIMARY KEY,
  id_produk INT,
  id_pelanggan INT,
  jumlah INT,
  total DECIMAL(10,2),
  tanggal DATE,
  FOREIGN KEY (id_produk) REFERENCES produk(id_produk),
  FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

