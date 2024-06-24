#include <memory>
#include <vector>

constexpr int STACK_MAX = 256;
constexpr int INIT_OBJ_NUM_MAX = 8;

enum class ObjectType { OBJ_INT, OBJ_PAIR };

struct Object {
  ObjectType type;
  bool marked = false;
  std::unique_ptr<Object> next;

  union {
    int value;
    struct {
      Object *first;
      Object *second;
    };
  };

  Object(ObjectType type) : type(type) {}
};

class VM {
private:
  std::vector<Object *> stack;
  std::unique_ptr<Object> firstObject;
  int numObjects = 0;
  int maxObjects = INIT_OBJ_NUM_MAX;

  void mark(Object *object);
  void markAll();
  void sweep();

public:
  VM() = default;
  ~VM() { freeObjects(); }
  int getNumObjects() const { return numObjects; }

  void push(Object *value);
  Object *pop();
  void gc();
  Object *newObject(ObjectType type);
  void pushInt(int intValue);
  Object *pushPair();
  void freeObjects();
};
