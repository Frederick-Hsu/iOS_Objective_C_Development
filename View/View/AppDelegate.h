/**************************************************************************************************
 * File name    : AppDelegate.h
 * Description  : Define the class AppDelegate
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import <Cocoa/Cocoa.h>


@interface AppDelegate : NSObject <NSApplicationDelegate>

#if 0
    /* 修改視圖Frame相關的原點Origin,  大小Size, 矩形frame
     * 所使用的方法和屬性 : 
     */
    @property NSRect frame;

    - (void)setFrameOrigin:(NSPoint)newOrigin;
    - (void)setFrameSize:(NSSize)newSize;

    /* 修改視圖Bounds原點Origin, 大小Size和Bounds
     * 所使用的方法和屬性
     */
    @property NSRect bounds;

    - (void)setBoundsOrigin:(NSPoint)newOrigin;
    - (void)setBoundsSize:(NSSize)newSize;
#endif

    - (void)configLayerView;

@end

