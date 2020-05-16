#import "testing.h"
#import "Rectangle.h"
#import "Square.h"
#import "misc.h"

// #import <Cocoa/Cocoa.h>


void accessObjs(void)
{
    /* Rectangle */
    Rectangle *myRect = [[Rectangle alloc] init];
    [myRect setWidth:5 andHeight:8];

    NSLog(@"The rectangle's width = %d, height = %d", myRect.width, myRect.height);
    NSLog(@"The area = %i, perimeter = %i", [myRect area], [myRect perimeter]);

    [myRect release];

    /* Square */
    Square *sq = [[Square alloc] init];
    [sq setLength:10];
    NSLog(@"The length of square: %d", [sq length]);
    NSLog(@"The area of square: %i", [sq area]);
    NSLog(@"The perimeter of square: %i", [sq perimeter]);

    [sq release];
}

void verifyMethodOverride(void)
{
    ClassB* bobj = [[ClassB alloc] init];
    NSLog(@"bobj is %@", bobj);        /* call the root class method [NSObject description] */
    NSLog(@"[bobj description] = %@", [bobj description]);
    NSLog(@"[bobj class] = %@", [bobj class]);

    [bobj initVar];
    [bobj printVar];
    [bobj release];
}