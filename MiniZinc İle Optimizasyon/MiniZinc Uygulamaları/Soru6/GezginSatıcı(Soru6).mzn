% Use this editor as a MiniZinc scratch book
include "globals.mzn";

int: n; % Şehir sayısı
array[1..n,1..n] of int: uzakliklar;

% x12 -> 1. taşın 2. taşa olan uzaklığını temsil etmektedir.
array[1..n] of var 1..n: next; 

var int: uzaklik = sum(i in 1..n)(uzakliklar[i,next[i]]);

constraint circuit(next);

solve minimize uzaklik;

output ["Uzaklık: \(uzaklik) Gidilen şehirlerin sırası: \(next)"];