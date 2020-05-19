#ifndef ARRAY_MANIP_H
#define ARRAY_MANIP_H

    #import <Foundation/Foundation.h>

    void manip_array_container(void);
    void manip_mutable_array_container(void);
    void test_arrays_copy(void);
    void split_array(void);
    void join_array(void);

    @interface Compare : NSObject
    {
    }
    - (NSComparisonResult)compareMethod:(id)element;
    @end

    void fast_enumeration(void);

#endif  /* ARRAY_MANIP_H */