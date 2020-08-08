% Use this editor as a MiniZinc scratch book
var 0..100: x1; % Bir haftada üretilen asker sayısı
var 0..100: x2; % Bir haftada üretilen tren sayısı

% Montaj Kısıtı
constraint 2*x1 + x2 <= 100;

% Marangozluk Kısıtı
constraint  x1 + x2 <=80;

% Talep Kısıtı
constraint x1 <= 40;

% Negatif Olmama Kısıtı
constraint x1 >= 0; % x1 için negatif olmama kısıtı
constraint x2 >= 0; % x2 için negatif olmama kısıtı

solve maximize 3*x1 + 2*x2;

output ["Bir haftada üretilen asker sayısı = \(x1)\n",
        "Bir haftada üretilen tren sayısı = \(x2)\n"];
