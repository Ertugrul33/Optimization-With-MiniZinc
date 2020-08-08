% Use this editor as a MiniZinc scratch book
var 0..250: x1; % 1. tip elbise modeli
var 0..250: x2; % 2. tip elbise modeli

% Kumaş Kısıtı
constraint 2*x1 + x2 <= 240;

% Zaman Kısıtı
constraint  3*x1 + x2 <= 320;

% Negatif Olmama Kısıtı
constraint x1 >= 0; % x1 için negatif olmama kısıtı
constraint x2 >= 0; % x2 için negatif olmama kısıtı

solve maximize 25*x1 + 20*x2;

output ["1. tip elbise modeli = \(x1)\n",
        "2. tip elbise modeli = \(x2)\n"];
