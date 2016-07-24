/**************************************************************************************************
 * File nae     : test_Memory_Management.m
 * Description  : Perform the test cases on how to manage the memory in Objective-C programming.
 * Creator      : Frederick Hsu
 * Creation date: Sun.  24 JULY, 2016
 * Copyright(C) 2016    All rights reserved.
 *
 **************************************************************************************************/


#import "test_Memory_Management.h"
#import "CPerson.h"

static void StrongPointer(void);
static void WeakPointer(void);

void testCases4_MemoryManagement(void)
{
    NSLog(@"Test the Reference Counting feature : ");
    testCase_ReferenceCounting();
    testCase_AutoReleasePool();
    
    NSLog(@"Verify strong and weak pointer : ");
    testCase_StrongAndWeakPointer();
}

void testCase_ReferenceCounting(void)
{
#if !defined (ENABLE_ARC)
    // 生成对象， 引用计数由 0 ---> 1
    CPerson *cp = [[CPerson alloc] initWithAge : 10];
    NSLog(@"Instantiate and generate the 'cp' object, its current count : %lu", [cp retainCount]);
    
    /**********************************************************************************************/
    
    // 每次持有对象一次，引用计数递增1
    [cp retain];
    NSLog(@"Retain the 'cp' object one time, its current count : %lu", [cp retainCount]);
    
    [cp retain];
    NSLog(@"The object was retained once again, now its current count : %lu", [cp retainCount]);
    
    [cp retain];    // 已经持有对象3次了
    NSLog(@"Retain the 'cp' object 3rd time, now its current count : %lu", [cp retainCount]);
    
    /**********************************************************************************************/
    
    // 每次释放对象一次，引用计数递减1
    [cp release];
    NSLog(@"Release the 'cp' object 1st time, its current count : %lu", [cp retainCount]);
    
    [cp release];
    NSLog(@"Release the 'cp' object 2nd time, its current count : %lu", [cp retainCount]);
    
    [cp release];   // 持有对象多少次，就得释放对象同样的次数
    NSLog(@"Release the 'cp' object 3rd time, its current count : %lu", [cp retainCount]);
    
    /**********************************************************************************************/
    
    [cp release];   // 最后，完全销毁对象
    /* 此时不能再使用对象了，对象被销毁后，就变成了僵尸(Zombie)对象了。 开启 Enable zombie objects 监控，
     * 就会在提示SIGKILL,  EXC_BAD_ACCESS错误了。
     * 而如果没有开启僵尸对象监控，Xcode本身并不对僵尸对象的使用发出错误警报的。
     */
    // NSLog(@"Now this object had been completely destroyed, its current count : %lu", [cp retainCount]);
    cp = nil;       // 清空僵尸对象。
    
    return;
#endif  /* ENABLE_ARC */
}


void testCase_AutoReleasePool(void)
{
#if !defined (ENABLE_ARC)
    @autoreleasepool    // 离开自动释放池的区域范围，对象会自动被销毁。
    {
        CPerson *per = [[[CPerson alloc] initWithAge:20] autorelease];
        NSLog(@"Currently, the reference count is : %lu", [per retainCount]);
    }
#else
    @autoreleasepool
    {
        CPerson *per = [[CPerson alloc] initWithAge:30];
        per.age = 33;
        NSLog(@"This person's is : %d", per.age);
        
        // [per retain];   // Error : 'retain' is unavailable in automatic reference counting mode.
        // [per release];      // Error : 'release' is unavailable in automatic reference counting mode.
    }
#endif  /* ENABLE_ARC */
}


void testCase_StrongAndWeakPointer(void)
{
    StrongPointer();
    WeakPointer();
}

static void StrongPointer(void)
{
    __strong CPerson *person = [[CPerson alloc] init];
    NSLog(@"----------------------------------------------");
    person = nil;   // Strong pointer will be destroyed after terminating the call to object.
    NSLog(@"----------------------------------------------");
    return;
}
static void WeakPointer(void)
{
    // 使用弱指针的对象，对象被创建完成，旋即被销毁。
    __weak CPerson *person = [[CPerson alloc] init];    // Weak pointer will be released after assignment.
    NSLog(@"----------------------------------------------");
    person = nil;
    NSLog(@"----------------------------------------------");
    return;
}