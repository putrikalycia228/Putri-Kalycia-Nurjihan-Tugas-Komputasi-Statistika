#Nama: Putri Kalycia Nurjihan
#NIM: 3338250051
#Kelas 3B
#Tugas Pertemuan 4 Komputasi Statistika

#1.Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam, modelkan dengan Poisson dan hitung  P(X≥5)
lambda <- 3
P <- 1 - ppois(4, lambda)
P

#2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.
N <- 100    # total populasi
K <- 20     # jumlah bola merah
n <- 10     # ukuran sampel

k <- seq(from = max(0, n + K - N), to = min(n, K))
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

#3. Simulasikan 1.000 percobaan Binomial (n=15,p=0.4) dan bandingkan histogram hasil simulasi dengan PMF teoretis.
n_binom <- 15
p_binom <- 0.4
x_binom <- 0:n_binom

# Simulasi 1000 percobaan
set.seed(2025)
samp <- rbinom(1000, size = n_binom, prob = p_binom)

# Hasil simulasi
head(samp, n = 10)

# PMF teoritis
pmf_binom <- dbinom(x_binom, size = n_binom, prob = p_binom)

# Histogram hasil simulasi
hist(samp,
     breaks = seq(-0.5, n_binom + 0.5, by = 1),
     probability = TRUE,
     main = "Simulasi Binomial dan PMF Teoritis",
     xlab = "Jumlah sukses (k)",
     ylab = "Probabilitas (P(X=k))")

# Menambahkan PMF teoritis
points(x_binom, pmf_binom, pch = 19)
lines(x_binom, pmf_binom, lwd = 2)