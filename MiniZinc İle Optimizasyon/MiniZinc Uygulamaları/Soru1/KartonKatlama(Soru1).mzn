var 0..100: x1;
var 0..100: x2;

constraint 30*x1 + 50*x2 >= 320;

constraint 1*x1 + 2*x2 <= 12;

constraint x1 >= 0;
constraint x2 >= 0;

solve minimize 150*x1 + 200*x2;

output ["x1 = \(x1) \n",
        "x2 = \(x2) \n"];