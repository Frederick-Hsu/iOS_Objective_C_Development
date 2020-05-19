#ifndef ADDRESS_CARD_CATEGORY_H
#define ADDRESS_CARD_CATEGORY_H

    #import "AddressCard.h"

    @interface AddressCard (AddressCardCategory)
    - (void)uppercaseName;
    @end

    void testAddressCard(void);

#endif  /* ADDRESS_CARD_CATEGORY_H */