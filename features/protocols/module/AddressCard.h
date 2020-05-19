#ifndef ADDRESS_CARD_H
#define ADDRESS_CARD_H

    #import <Cocoa/Cocoa.h>

    @interface AddressCard : NSObject <NSCoding>
    {
        NSString* name;
        NSString* email;
    }
    @property (nonatomic, copy) NSString* name;
    @property (nonatomic, copy) NSString* email;
    
    - (void)encodeWithCoder:(NSCoder*)aCoder;
    - (id)initWithCoder:(NSCoder*)aDecoder;
    // - (id)initWithName:(NSString*)your_name andEmail:(NSString*)your_email;
    - (AddressCard*)initWithName:(NSString*)your_name andEmail:(NSString*)your_email;

    - (NSComparisonResult)compareName:(AddressCard*)element;
    + (BOOL)isMailOk:(NSString*)validEmail;
    @end


#endif  /* ADDRESS_CARD_H */