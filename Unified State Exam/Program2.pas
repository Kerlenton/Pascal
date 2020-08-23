﻿{

На спутнике «Восход» установлен прибор, предназначенный для измерения солнечной 
активности. В течение времени эксперимента (это время известно заранее) прибор каждую 
минуту передаёт в обсерваторию по каналу связи положительное целое число, не превышающее 
1000, — количество энергии солнечного излучения, полученной за последнюю минуту, измеренное 
в условных единицах.

После окончания эксперимента передаётся контрольное значение — наибольшее число R, 
удовлетворяющее следующим условиям:

1) R — произведение двух различных переданных элементов последовательности 
(«различные» означает, что не рассматриваются квадраты переданных чисел, 
произведения различных, но равных по величине элементов допускаются);
2) R кратно 6.

Если чисел, соответствующих приведённым условиям, нет, считается, что R = –1. 
На вход программе в первой строке подаётся количество чисел N. В каждой из последующих N 
строк записано одно натуральное число, не превышающее 1000. В последней строке 
записано контрольное значение.

Пример входных данных:
5
52
12
39
55
23

Пример выходных данных для приведённого выше примера входных данных:
2028

}

var i, x, n, max_mul, m1, m2, m3, m6: integer;

begin
   max_mul := -1; m1:= 0; m2 := 0; m3 := 0; m6 := 0;
   
   readln(n);
   readln(x);
   
   for i := 1 to n-1 do
   begin
      if (x > m1) then m1 := x;
      if (x > m2) and (x mod 2 = 0) then m2 := x;
      if (x > m3) and (x mod 3 = 0) then m3 := x;
      if (x > m6) and (x mod 6 = 0) then m6 := x;
      
      readln(x);
      
      if (x * m1 > max_mul) and ((x * m1) mod 6 = 0) then max_mul := x * m1;
      if (x * m2 > max_mul) and ((x * m2) mod 6 = 0) and (m2 > 0) then max_mul := x * m2;
      if (x * m3 > max_mul) and ((x * m3) mod 6 = 0) and (m3 > 0) then max_mul := x * m3;
      if (x * m6 > max_mul) and ((x * m6) mod 6 = 0) and (m6 > 0) then max_mul := x * m6;
   end;
   writeln(max_mul);
end.