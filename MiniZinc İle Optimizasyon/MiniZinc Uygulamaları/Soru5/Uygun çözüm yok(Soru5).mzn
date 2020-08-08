% Use this editor as a MiniZinc scratch book
var 0..100: x1;
var 0..100: x2;

constraint x1 + 2*x2 <= 2;

constraint 2*x1+x2 >= 6;

constraint x1 >= 0;
constraint x2 >= 0;

solve minimize 6*x1 + 3*x2;

output ["x1 = \(x1)\n",
        "x2 = \(x2)\n"];
