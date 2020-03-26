/*
 * File name    : misc.m
 * Description  : Implement something miscellaneous 
 */

#import "misc.h"

#define COPY_SETTER_METHOD

@implementation MyObject
@end

@implementation MyClass

// @synthesize myObj;

- (MyObject*)myObj
{
    return _myObj;
}

#if defined (ASSIGN_SETTER_METHOD)
    - (void)setMyObj:(id)newValue
    {
        _myObj = newValue;
    }
#elif defined (RETAIN_SETTER_METHOD)
    - (void)setMyObj:(id)newValue
    {
        if (_myObj != newValue)
        {
            [_myObj release];
            _myObj = [newValue retain];
        }
    }
#elif defined (COPY_SETTER_METHOD)
    - (void)setMyObj:(id)newValue
    {
        if (_myObj != newValue)
        {
            [_myObj release];
            _myObj = [newValue copy];
        }
    }
#endif

@end

