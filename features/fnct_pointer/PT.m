#import "PT.h"

@implementation PT
- (void)setX:(int)xval
{
    x = xval;
}

- (void)print
{
    NSLog(@"x = %d", x);
}
@end

void utilizeFnctPointer(void)
{
    PT* pt = [[PT alloc] init];
    PT* fn_ptr = [[PT alloc] init];

    int i = 3;
    /* Define a pointer to point to the method [PT setX] */
    SEL selector = @selector(setX:);    /* by define a SEL variable selector */
    /* Test: the function pointer selector which points to a function, 
     *       whether it belongs to the class PY 
     */
    NSMethodSignature* sig = [[pt class] instanceMethodSignatureForSelector:selector];
    if (sig != nil)
    {
        /* 用一个函数签名初始化NSInvocation对象 */
        NSInvocation* invocation =[NSInvocation invocationWithMethodSignature:sig];
        [invocation setSelector:selector];      /* 设置方法名， selector又指向setX */
        [invocation setTarget:pt];              /* 设置方法要发送的对象，即pt */
        [invocation setArgument:&i atIndex:2];  /* 设置参数 */
        [invocation invoke];                    /* 真正调用函数指针 */
    }
    [pt print];

    [pt performSelector:selector withObject:100];
    [pt print];

    [pt release];
    [fn_ptr release];
}