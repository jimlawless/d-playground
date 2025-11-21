// 'Pete the Baker' code kata challenge

import std.stdio;

void main() {
    auto recipe= [ "flour": 500, "sugar": 200, "eggs": 1 ];
    auto available=[ "flour" : 1200, "sugar": 1200, "eggs" : 5, "milk" : 200 ];
    writeln(howMany(recipe,available));
}

int howMany(int[string] r, int[string] a) {
    int min=int.max;
    foreach(k,v; r) {
        if(k in a) {
            int count = a[k] / r[k] ;
            min = (count<min)? count : min ;
        }
        else 
            return 0;
    }
    return min;
}
