#ifndef ADDRESS_CARD_H
#define ADDRESS_CARD_H

    #import <Cocoa/Cocoa.h>

    @interface AddressCard : NSObject <NSCoding>
    {
        NSString* name;
        NSString* email;
    }
    @property (nonatomic, readwrite, assign) NSString* name;
    @property (nonatomic, readwrite, assign) NSString* email;
    
    - (void)encodeWithCoder:(NSCoder*)aCoder;
    - (id)initWithCoder:(NSCoder*)aDecoder;
    @end


#endif  /* ADDRESS_CARD_H */