#include <array>

class Bar {
private:
    std::array<int, 30> not_important_;
};

class Foo {
public:
    Foo()
        : bar_{new Bar{}} {}

    // Rule of three!
    Foo(const Foo& rhs) {
        // TODO: Not yet implemented.
        std::terminate();
    }

    Foo&
    operator=(const Foo& rhs) {
        // TODO: Not yet implemented.
        std::terminate();
    }

    ~Foo() {
        // TODO: Not yet implemented.
        std::terminate();
    }

private:
    // XXX: Well, this is not doing well in practical...
    // but hey, this is just some exercise. Please use
    // std::unique_ptr or std::shared_ptr instead.
    //
    // The Foo object will "own" this Bar pointer.
    Bar* bar_{nullptr};
};
