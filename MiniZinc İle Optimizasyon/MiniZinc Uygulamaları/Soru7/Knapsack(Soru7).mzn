enum URUNLER;
int: kapasite; % Çanta kapasitesi

array[URUNLER] of int: fiyatlar; % Ürünlere ait fiyatlar
array[URUNLER] of int: agirliklar; % Ürünlere ait ağırlıklar

var set of URUNLER: canta;

constraint sum (i in canta) (agirliklar[i]) <= kapasite;

solve maximize sum (i in canta) (fiyatlar[i]) ;

output ["Çantaya konulacak ürünler = \(canta)\n"];