##Tugas: Komputasi statistika Pertemuan 1
#Putri Kalycia Nurjihan
#3338250051
#kelas3B


#1.#Vektor numerik
v_num <- c(1.2, 13.4, 7.9)
v_num
   #vektor integer
v_int <- c(8L, 12L, 16L)
v_int
   #vektor logical
v_log <- c(TRUE, FALSE, FALSE)
v_log
   #Vektor karakter
v_char <- c("Statistika", "Kelas", "B")
v_char

#2. Membuat matrix 4x4
m <- matrix(1:16, nrow = 4, ncol = 4)

#3. Membuat array 4D
a <- array(1:24, dim = c(2, 3, 2, 2))
            
#4. Membuat data frame 4 kolom berisi:(character,numeric,logical,logical)
df <- data.frame(
  nama          = c("Andi", "Budi", "Citra", "Dewi"), 
  ipk           = c(3.85, 2.95, 3.62, 3.40),         
  is_beasiswa   = c(TRUE, FALSE, TRUE, FALSE),      
  is_status_aktif = c(TRUE, TRUE, TRUE, TRUE)          
)

# Menampilkan data frame
print(df)

#5. Membuat list fungsi() berisi 5 komponen:(vektor baris,vektor kolom,matriks 4x4, data frame 4 kolom,
#                    list isi 4(matriks 4x4, array 4D, data frame, vektor baris))
list_tugas <- list(
  #vektor baris 
  vektor_baris = v_num,
  #vektor kolom
  vektor_kolom = matrix(c(100, 200, 300, 400, 500), ncol = 1),
  #matriks 4x4
  matriks_4x4 = m,
  #data frame
  data_frame = df,
  
  #semua (matriks 4x4_array 4D_data frame_vektor baris)
  semua = list(
    sub_matriks   = m,                        
    sub_array4d   = a,                        
    sub_dataframe = df,                       
    sub_vektor    = v_char                    
  )
)
#menampilkan hasil
print(list_tugas)