// A program which demonstrates the compiling of Clite with the added xor boolean operator
int main() {
    int x;
    int y;
    bool f;
    bool d;
    f = true;
    d = false;
    y = 20;
    x = y - 5;

    // parsed into the ixor jasmine value, 32 bit ints are used for booleans in the jvm machine code.
    while (f ^^ d)  {
        x = x + 1;
        if(x > y) {
            d = true;
        }
    }
} // main
