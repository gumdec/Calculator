## Kalkulator sederhana R V.1
Kalkulator ini mendukung opersi aritmetika sederhana, seperti penjumlahan, pengurangan, perkalian, dan pembagaian.

## Penjelasan Kode
```{r}
operasi <- readline(prompt="Masukan operator (+, -, x, :) : ")
```
Kode ini akan meminta user untuk menginput operasi tang akan digunakan.

```{r}
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
```
Kode ini merupakan seleksi sesuai input user.
```{r}
} else {
  cat("Operasi tidak tersedia")
}
```
ketika user menginput operator di luar yang tersedia maka output akan diberikan seperti ini.