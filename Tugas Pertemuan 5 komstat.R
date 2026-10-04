#Nama: Putri Kalycia Nurjihan
#NIM: 3338250051
#Kelas 3B
#Tugas Pertemuan 5 Komputasi Statistika

#Soal 1. Rata-rata waktu tunggu mu= 5 menit. Berapa peluang P(X>5)?
# Menggunakan distribusi Eksponensial

mu <- 5
lamda <- 1 / mu

# Menghitung P(X > 5)
peluang_lebih5 <- pexp(5, rate = lamda, lower.tail = FALSE)
peluang_lebih5

# Artinya, peluang seseorang menunggu lebih dari 5 menit adalah sekitar 36.79%.


#soal 2. Kereta komuter tiba di statsiun secara acak antara pukul 07.00 hingga 07.20 (interval 20 menit). Berapakah ragam (varians) waktu tunggu penumpang?
# Menggunakan distribusi Uniform Kontinu
waktu_awal <- 0
waktu_akhir <- 20

# Rumus varians distribusi Uniform:
# Var(X) = (b-a)^2 / 12

var_waktu_tunggu <- (waktu_akhir - waktu_awal)^2 / 12
var_waktu_tunggu

# Jadi, varians waktu tunggu penumpang adalah sekitar 33.33 menit^2.

#soal 3. Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. Berapa peluang sensor tersebut rusak sebelum mencapai usia 5 tahun?
# Menggunakan distribusi Eksponensial
rata_masa_pakai <- 10
laju_kerusakan <- 1 / rata_masa_pakai

# Menghitung P(X < 5)
peluang_rusak <- pexp(5, rate = laju_kerusakan)
peluang_rusak

# Artinya, peluang sensor rusak sebelum mencapai usia 5 tahun adalah sekitar 39.35%.

#soal 4. Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. Kemasan dianggap underweight jika beratnya kurang dari 240 gram. Berapa proporsi produk yang tergolong underweight?
# Menggunakan distribusi Normal

rata_berat <- 250
simpangan <- 5
batas_minimum <- 240

# Menghitung P(X < 240)
proporsi_kurang <- pnorm(
  batas_minimum,
  mean = rata_berat,
  sd = simpangan
)

proporsi_kurang
# Artinya, sekitar 2.28% kemasan kopi memiliki berat kurang dari 240 gram.
