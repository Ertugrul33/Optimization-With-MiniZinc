% Use this editor as a MiniZinc scratch book
var 0..100: x1; % 1. tip ayakkabı
var 0..100: x2; % 2. tip ayakkabı

% Zaman Kısıtı 
constraint 2*x1 + 3*x2 <= 30;

% Malzeme Kısıtı
constraint 3*x1 + 2*x2 <= 40;

% Negatif Olmama Kısıtı
constraint x1 >= 0; % x1 için negatif olmama kısıtı
constraint x2 >= 0; % x2 için negatif olmama kısıtı

solve maximize 4*x1 + 6*x2;

output ["1. tip ayakkabı = \(x1)\n",
        "2. tip ayakkabı = \(x2)\n"];