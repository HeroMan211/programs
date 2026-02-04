#include <iostream>
using namespace std;

void r(string name);
void r(string name, int age);
int main() {

    r("Fares", 5);

}

void r(string name) {
    cout << "Hello " << name << '\n';
}
void r(string name, int age) {
    cout << "Hello " << name << ", You are " << age << " years old\n";
}