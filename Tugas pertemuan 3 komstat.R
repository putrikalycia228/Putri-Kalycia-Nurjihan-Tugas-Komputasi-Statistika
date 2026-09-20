#Nama: Putri Kalycia Nurjihan
#NIM: 3338250051
#Kelas 3B
#Tugas Pertemuan 3 Komputasi Statistika

#1.Buka data airquality
data(airquality)
#panggil
airquality

#Melihat struktur data
str(airquality)


#2. Buat histogram untuk variabel Wind, sertakan pula density nya 
#buat Histogram
hist(airquality$Wind,
     breaks = 10,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram Wind + Density curve")

#buat density
dens <- density(airquality$Wind)

#tambah density curve
lines(dens, col = "darkgreen", lwd = 2)


#3. Buat Boxplot dan Steam and leaf
#a. Boxplot
boxplot(airquality$Wind,
        horiz = TRUE,
        xlab = "Wind",
        main = "Boxplot Wind")

#b. Steam and Leaf
stem(airquality$Wind)


#4. Buat Scatter Plot
#Scatterplot Wind terhadap Solar.R
plot(Solar.R ~ Wind,
     data = airquality,
     pch = 16,
     main = "Scatterplot Wind vs Solar.R",
     xlab = "Wind",
     ylab = "solar.R")

# Menambahkan garis regresi
abline(lm(Solar.R ~ Wind, data = airquality),
       col = "blue",
       lty = 2,
       lwd = 2)