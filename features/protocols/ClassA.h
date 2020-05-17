#ifndef CLASSA_H
#define CLASSA_H

    #import <Foundation/Foundation.h>

    @protocol ProtocolB
    - (void)print;
    @end

    @interface ClassA : NSObject <ProtocolB>
    {
        int x;
    }
    @property (nonatomic) int x;

    - (id)initWithX:(int)xval;
    - (void)initVar:(int)xval;
    - (void)print;
    @end

    void implementProtocolMethods(void);

#endif  /* CLASSA_H */