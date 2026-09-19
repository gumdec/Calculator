import math

operator = str(input("Masukan operasi yang ingin di lakukan (+,-,/,x) : "))
if operator == "+":
    data_v = list(map(int, input("Masukan Nilai yang akan dijumlahkan (pisahkan dengan spasi) : ").split()))
    print("Jumlah nialnya adalah : ",sum(data_v))
if operator == "-":
    data_v = list(map(int, input("Masukan Nilai yang akan dikurangkan (pisahkan dengan spasi) : ").split()))
    print("Hasil pengurangan adalah : ", data_v[0]-sum(data_v[1:]))
if operator == "/":
    data_v = list(map(int, input("Masukan Nilai yang akan dibagi (pisahkan dengan spasi) : ").split()))
    print("Hasil pembagian adalah : ", data_v[0]/math.prod(data_v[1:]))
if operator == "x":
    data_v = list(map(int, input("Masukan Nilai yang akan dikali (pisahkan dengan spasi) : ").split()))
    print("Hasil perkalian adalah : ", math.prod(data_v))
else:
    print("Operator tidak dikenali")
