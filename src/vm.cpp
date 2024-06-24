#include <stdexcept>
#include <vm.h>

void VM::mark(Object *object) {
  if (object->marked)
    return;
  object->marked = true;
  if (object->type == ObjectType::OBJ_PAIR) {
    mark(object->first);
    mark(object->second);
  }
}

void VM::markAll() {
  for (auto &obj : stack) {
    mark(obj);
  }
}

void VM::sweep() {
  std::unique_ptr<Object> *current = &firstObject;
  while (*current) {
    if (!(*current)->marked) {
      std::unique_ptr<Object> unreached = std::move(*current);
      *current = std::move(unreached->next);
      numObjects--;
    } else {
      (*current)->marked = false;
      current = &((*current)->next);
    }
  }
}

void VM::push(Object *value) {
  if (stack.size() > STACK_MAX)
    throw std::runtime_error("Stack underflow!");
  stack.push_back(value);
}

Object *VM::pop() {
  if (stack.empty())
    throw std::runtime_error("Stack underflow!");
  Object *object = stack.back();
  stack.pop_back();
  return object;
}

void VM::gc() {
  int numObjectsBefore = numObjects;
  markAll();
  sweep();
  maxObjects = numObjects == 0 ? INIT_OBJ_NUM_MAX : numObjects * 2;
}

Object *VM::newObject(ObjectType type) {
  if (numObjects == maxObjects)
    gc();

  Object *object = new Object(type);
  object->next.reset(firstObject.release());
  firstObject.reset(object);
  numObjects++;
  return object;
}

void VM::pushInt(int intValue) {
  Object *object = newObject(ObjectType::OBJ_INT);
  object->value = intValue;
  push(object);
}

Object *VM::pushPair() {
  Object *object = newObject(ObjectType::OBJ_PAIR);
  object->second = pop();
  object->first = pop();
  push(object);
  return object;
}

void VM::freeObjects() { gc(); }
