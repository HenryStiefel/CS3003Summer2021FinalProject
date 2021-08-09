// a first program with
// two comment lines
int main() {
    int x;
    int y;
    bool f;
    bool d;
    f = true;
    d = false;
    y = 20;
    x = y - 5;

    while (f ^^ d)  {
        x = x + 1;
        if(x > y) {
            d = true;
        }
    }
} // main
