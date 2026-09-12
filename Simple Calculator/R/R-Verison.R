# V.1
# Program meminta user untuk memilih operasi matematika
operasi <- readline(prompt="Masukan operator (+, -, x, :) : ")
# Hasil inputan user dicek apakah (+, -, x, :)
if (operasi == "+"){
  cat("Masukan nilai yang akan dijumlahkan : ")
  nilai <- scan(what = integer())
  cat("Jumlah bilangan : ", sum(nilai))
} else if (operasi=="-"){
  cat("Masukan nilai yang akan dikurangkan : ")
  nilai <- scan(what = integer())
  cat("Hasil operasi : ", nilai[1]-sum(nilai[-1]))
} else if (operasi == "x"){
  cat("masukan nilai yang akan dikalikan : ")
  nilai <- scan(what = integer())
  cat("Hasil operasi : ", prod(nilai))
}else if (operasi == ":"){
  cat("masukan nilai yang akan dikalikan : ")
  nilai <- scan(what = integer())
  cat("Hasil operasi : ", nilai[1] / prod(nilai[-1]))
# Ketika user input diluar operasi yang tersedia maka diberikan keluaran sebagai berikut
} else {
  cat("Operasi tidak tersedia")
}

