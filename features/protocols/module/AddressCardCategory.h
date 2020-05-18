#ifndef ADDRESS_CARD_CATEGORY_H
#define ADDRESS_CARD_CATEGORY_H

    #import "AddressCard.h"

    @interface AddressCard (AddressCardCategory)
    - (void)uppercaseName;
    - (BOOL)compareName:(AddressCard*)anotherCard;
    @end

#endif  /* ADDRESS_CARD_CATEGORY_H */