#include <iostream>

using namespace std;

class Employee {
public:
    Employee(char *name, int id);
    ~Employee();
    char *getName() { return _name; }
    // Other Accessor methods
private:
    int _id;
    char *_name;
};

Employee::Employee(char *name, int id) {
    _id = id;
    _name = new char[strlen(name) + 1];
    // Allocates an character array object
    strcpy(_name, name);
}

Employee::~Employee() {
    delete[] _name;
}

int main() {
    Employee programmer("John", 22);
    cout << programmer.getName() << endl;

    return 0;
}