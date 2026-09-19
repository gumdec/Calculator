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
## Flowchart
```{mermaid}
graph TD
    Start([Mulai]) --> InputOp[/Input operator +, -, x, :/]
    
    %% Cek Penjumlahan
    InputOp --> CekTambah{operasi == "+"}
    CekTambah -- Ya --> InputNilaiTambah[/Input nilai yang akan dijumlahkan/]
    InputNilaiTambah --> OutputTambah[/Tampilkan: Jumlah bilangan/]
    OutputTambah --> Selesai([Selesai])
    
    %% Cek Pengurangan
    CekTambah -- Tidak --> CekKurang{operasi == "-"}
    CekKurang -- Ya --> InputNilaiKurang[/Input nilai yang akan dikurangkan/]
    InputNilaiKurang --> OutputKurang[/Tampilkan: Hasil operasi pengurangan/]
    OutputKurang --> Selesai
    
    %% Cek Perkalian
    CekKurang -- Tidak --> CekKali{operasi == "x"}
    CekKali -- Ya --> InputNilaiKali[/Input nilai yang akan dikalikan/]
    InputNilaiKali --> OutputKali[/Tampilkan: Hasil operasi perkalian/]
    OutputKali --> Selesai
    
    %% Cek Pembagian
    CekKali -- Tidak --> CekBagi{operasi == ":"}
    CekBagi -- Ya --> InputNilaiBagi[/Input nilai yang akan dibagi/]
    InputNilaiBagi --> OutputBagi[/Tampilkan: Hasil operasi pembagian/]
    OutputBagi --> Selesai
    
    %% Jika tidak ada yang cocok (Else)
    CekBagi -- Tidak --> OutputError[/Tampilkan: Operasi tidak tersedia/]
    OutputError --> Selesai
```
