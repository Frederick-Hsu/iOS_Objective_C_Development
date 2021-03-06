/**************************************************************************************************
 * File name    : EDStarRating.h
 * Description  : EDStarRatingView interface and ARC Helper
 * Creator      : Ernesto Garcia,  Nick Lockwood
 * Creation date: Fri.  3 March 2017
 * Copyright(C) 2012    cocoawithchurros.com  and  Charcoal Design
 * Distributed under MIT license and the oermissive zlib license.
 *
 **************************************************************************************************/

#ifndef EDSTARRATING_H
#define EDSTARRATING_H

    #ifndef AH_RETAIN

        #if __has_feature(objc_arc)
            #define AH_RETAIN(x)    (x)
            #define AH_RELEASE(x)
            #define AH_AUTORELEASE(x)   (x)
            #define AH_SUPER_DEALLOC
        #else
            #define __AH_WEAK
            #define AH_WEAK assign
            #define AH_RETAIN(x)    [(x) retain]
            #define AH_RELEASE(x)   [(x) release]
            #define AH_AUTORELEASE(x)   [(x) autorelease]
            #define AH_SUPER_DEALLOC    [super dealloc]
        #endif

    #endif

    /* weak reference support */
    #ifndef AH_WEAK
        #if defined __IPHONE_OS_VERSION_MIN_REQUIRED

            #if __IPHONE_OS_VERSION_MIN_REQUIRED > __IPHONE_4_3
                #define __AH_WEAK __weak
                #define AH_WEAK weak
            #else
                #define __AH_WEAK __unsafe_unretained
                #define AH_WEAK unsafe_unretained
            #endif

        #elif defined __MAC_OS_X_VERSION_MIN_REQUIRED

            #if __MAC_OS_X_VERSION_MIN_REQUIRED > __MAC_10_6
                #define __AH_WEAK __weak
                #define AH_WEAK weak
            #else
                #define __AH_WEAK __unsafe_unretained
                #define AH_WEAK unsafe_unretained
            #endif

        #endif
    #endif
    /* ARC Helper ends */

    #import <Cocoa/Cocoa.h>

    enum
    {
        EDStarRatingDisplayFull = 0,
        EDStarRatingDisplayHalf,
        EDStarRatingDisplayAccurate
    };

    typedef NSUInteger  EDStarRatingDisplayMode;

    @protocol EDStarRatingProtocol;

    @interface EDStarRating : NSControl

        @property (nonatomic, strong) NSColor *backgroundColor;
        @property (nonatomic, strong) NSImage *backgroundImage;
        @property (nonatomic, strong) NSImage *starHighlightedImage;
        @property (nonatomic, strong) NSImage *starImage;

        @property (nonatomic) NSInteger maxRating;
        @property (nonatomic) float rating;
        @property (nonatomic) CGFloat horizontalMargin;
        @property (nonatomic) BOOL editable;
        @property (nonatomic) EDStarRatingDisplayMode displayMode;
        @property (nonatomic) float halfStarThreshold;

        @property (nonatomic, unsafe_unretained) id<EDStarRatingProtocol> delegate;

    @end

    @protocol EDStarRatingProtocol <NSObject>
        @optional
        - (void)starsSelectionChanged:(EDStarRating *)control rating:(float)rating;
    @end

#endif  /* EDSTARRATING_H */
