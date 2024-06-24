#include "vm.h"
#include <gtest/gtest.h>

TEST(VMTest, InitializationTest) {
  VM vm;
  ASSERT_EQ(vm.getNumObjects(), 0) << "Initially, numObjects should be 0";
}

TEST(VMTest, PopObjectTest) {
  VM vm;
  vm.pushInt(20);
  vm.pushInt(30);
  Object *obj = vm.pop();
  ASSERT_EQ(obj->value, 30) << "The popped object should have the value 30";
  ASSERT_EQ(vm.getNumObjects(), 2)
      << "The popped object have not yet been collected";
  vm.gc();
  ASSERT_EQ(vm.getNumObjects(), 1) << "Should be 1 after garbage collection";
}

TEST(VMTest, CyclicalReferenceTest) {
  VM vm;
  vm.pushInt(1);
  vm.pushInt(2);
  Object *pair1 = vm.pushPair();
  vm.pushInt(3);
  vm.pushInt(4);
  Object *pair2 = vm.pushPair();

  pair1->second = pair2;
  pair2->second = pair1;

  vm.gc();
  ASSERT_TRUE(vm.getNumObjects() > 0)
      << "Objects in cyclical references should not be collected";
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
