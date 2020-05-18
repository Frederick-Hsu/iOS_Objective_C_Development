#import "exceptions.h"
#import "../categories/NewPoint.h"

void execeptionFunc(void)
{
    MyPoint* point = [[MyPoint alloc] init];
    @throw point;
}

void tryCatchExceptions(void)
{
    @try
    {
        execeptionFunc();
    }
    @catch (MyPoint* except)
    // @catch (NSString* except)
    {
        NSLog(@"This exception was captured.");
        [except release];
    }
    @finally
    {
        NSLog(@"The exceptions had been cleaned up.");
    }
}