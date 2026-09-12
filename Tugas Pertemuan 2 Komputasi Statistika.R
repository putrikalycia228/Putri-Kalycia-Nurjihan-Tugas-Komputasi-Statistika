#Nama: Putri Kalycia Nurjihan
#NIM: 3338250051
#Kelas 3B
#Tugas Pertemuan 2 Komputasi Statistika

#Masukan data iris di R
data(iris)
#Panggil data
iris

#soal 1: Tampilkan data Sepal.Length saja
iris$Sepal.Length

#soal 2: Sebutkan tipe data tiap kolom
str(iris)

#soal 3: Buat variabel baru 'turunan'
library(dplyr)

iris <- iris %>%
  mutate(turunan = ifelse(Sepal.Width > 3, 
                        "Besar", "Kecil"))
head(iris)

#Soal 4: Ubah variabel turunan menjadi sepal
iris <- iris %>%
  rename(sepal = turunan)
#panggil
head(iris)

#soal 5: Ambil data dengan sepal bernilai besar dari species virginica
iris_virginica_besar <- iris %>% 
  filter(sepal == "Besar", Species == "virginica")
iris_virginica_besar

#soal 6: Cek jumlah species dalam data
table(iris$Species)

#soal 7: Pecah data iris menjadi 3 data frame dengan tiap data frame khusus untuk species tertentu
iris_damai <- iris %>% 
  filter(Species == "damai")

iris_newversion <- iris %>%
  filter(Species == "newversion")

iris_virginica <- iris %>%
  filter(Species == "virginica")

#soal 8: Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
iris_damai <- iris_damai %>%
  arrange(Sepal.Width)

iris_newversion <- iris_newversion %>%
  arrange(Sepal.Width)

iris_virginica <- iris_virginica %>%
arrange(Sepal.Width)

#panggil data
head(iris_damai)
head(iris_newversion)
head(iris_virginica)