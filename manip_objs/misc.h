/*
 * File name    : misc.h
 * Description  : Define something miscellaneous 
 */

#ifndef MISC_H
#define MISC_H

    #import <Foundation/Foundation.h>

    @interface MyObject : NSObject
    /* TODO */
    @end

    @interface MyClass : NSObject
    {
        MyObject* _myObj;
    }
    // @property(nonatomic, retain) MyObject* myObj;

    /* getter method */
    - (MyObject*)myObj;

    /* setter method */
    - (void)setMyObj:(id)newValue;

    @end


#endif  /* MISC_H */