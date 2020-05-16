#import "MyClass.h"

@implementation MyObject
@end

@implementation MyClass

/* get */
- (MyObject*)myObj
{
    return _myObj;
}

#if (SET_METHOD == ASSIGN_METHOD)
    /* assign */
    - (void)setMyObj:(id)newValue
    {
        _myObj = newValue;
    }
#elif (SET_METHOD == RETAIN_METHOD)
    /* retain */
    - (void)setMyObj:(id)newValue
    {
        if (_myObj != newValue)
        {
            [_myObj release];
            _myObj = [newValue retain];     // [_myObj retainCount] = [newValue retainCount] + 1
        }
    }
#elif (SET_METHOD == COPY_METHOD)
    /* copy */
    - (void)setMyObj:(id)newValue
    {
        if (_myObj != newValue)
        {
            [_myObj release];
            _myObj = [newValue copy];   // [_myObj retainCount] = 1
        }
    }
#endif

@end