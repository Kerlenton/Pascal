﻿{ 

По каналу связи передаются положительные целые числа, не превышающие 1000 – результаты измерений, 
полученных в ходе эксперимента (количество измерений известно заранее, гарантируется). После 
окончания эксперимента передаётся контрольное значение – наибольшее число R, удовлетворяющее следующим условиям:

   1. R – сумма двух различных переданных элементов последовательности («различные» 
   означает, что нельзя просто удваивать переданные числа, суммы различных, но равных по 
   величине элементов допускаются).
   2. R - нечётное число.
   
Если чисел, соответствующих приведённым условиям, нет, считается, что R = –1. 
На вход программе в первой строке подаётся количество чисел N. В каждой из последующих N 
строк записано одно натуральное число, не превышающее 1000. В последней строке записано контрольное значение.

Пример входных данных:
6
100
8
33
45
19
90

Пример выходных данных для приведённого выше примера входных данных:
145

}

var 
   i, n, max_even, max_odd, max_sum, x: integer;
begin
   max_even := 0; max_odd := 0; max_sum := -1;
   
   readln(n);
   readln(x);
   
   for i := 1 to n-1 do
   begin
      if (x > max_even) and ((x mod 2) = 0) then 
         max_even := x;
      if (x > max_odd) and ((x mod 2) <> 0) then
         max_odd := x;
         
      readln(x);
      
      if (x + max_even > max_sum) and (((x + max_even) mod 2) <> 0) then
         max_sum := x + max_even;
      if (x + max_odd > max_sum) and (((x + max_odd) mod 2) <> 0) and (max_sum > 0) then
         max_sum := x + max_odd;
      
   end;
   
   writeln(max_sum);
   
end.