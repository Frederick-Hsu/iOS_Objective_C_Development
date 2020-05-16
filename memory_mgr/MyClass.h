#ifndef MY_CLASS_H
#define MY_CLASS_H

    #import <Foundation/Foundation.h>

    #define GET_METHOD      1
    #define ASSIGN_METHOD   2
    #define RETAIN_METHOD   3
    #define COPY_METHOD     4
    #define SET_METHOD      RETAIN_METHOD

    @interface MyObject : NSObject
    {
    }
    @end

    @interface MyClass : NSObject
    {
        MyObject* _myObj;
    }
    // @property (nonatomic, retain) MyObject* myObj

    - (MyObject*)myObj;
    - (void)setMyObj:(id)newValue;

    @end


#endif  /* MY_CLASS_H */