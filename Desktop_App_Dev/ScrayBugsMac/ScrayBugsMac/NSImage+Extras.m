/**************************************************************************************************
 * File name    : NSImage+Extras.m
 * Description  : Extension to the class NSImage
 * Creator      : Ernesto Garcia Carril
 * Creation date: Fri.  3 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/

#import "NSImage+Extras.h"

@implementation NSImage (Extras)

    - (NSImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize
    {
        NSImage *sourceImage = self;
        NSImage *newImage = nil;
        CGSize imageSize = sourceImage.size;
        
        CGFloat width  = imageSize.width,
                height = imageSize.height;
        
        CGFloat targetWidth  = targetSize.width,
                targetHeight = targetSize.height;
        
        CGFloat scaleFactor = 0.0,
                scaleWidth  = targetWidth,
                scaleHeight = targetHeight;
        
        CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);
        
        if (CGSizeEqualToSize(imageSize, targetSize) == NO)
        {
            CGFloat widthFactor  = targetWidth / width,
                    heightFactor = targetHeight / height;
            if (widthFactor > heightFactor)
            {
                scaleFactor = widthFactor;      /* Scale to fit height */
            }
            else
            {
                scaleFactor = heightFactor;     /* Scale to fit width */
            }
            scaleWidth  = ceil(width * scaleFactor);
            scaleHeight = ceil(height * scaleFactor);
            
            /* Align the image central position */
            if (widthFactor > heightFactor)
            {
                thumbnailPoint.y = (targetHeight - scaleHeight) * 0.5;
            }
            else
            {
                thumbnailPoint.x = (targetWidth  - scaleWidth ) * 0.5;
            }
        }
        
        newImage = [[NSImage alloc] initWithSize:NSMakeSize(scaleWidth, scaleHeight)];
        CGRect thumbnailRect = CGRectZero;
        thumbnailRect.origin = thumbnailPoint;
        thumbnailRect.size.width  = scaleWidth;
        thumbnailRect.size.height = scaleHeight;
        
        NSRect imageRect = NSMakeRect(0.0, 0.0, imageSize.width, imageSize.height);
        
        [newImage lockFocus];
        [self drawInRect:thumbnailRect
                fromRect:imageRect
               operation:NSCompositingOperationCopy /* NSCompositeCopy */
                fraction:1.0];
        [newImage unlockFocus];
        
#if 0
        UIGraphicsBeginImageContext(targetSize);    /* this will crop */
        
        thumbnailRect = CGRectZero;
        thumbnailRect.origin = thumbnailPoint;
        thumbnailRect.size.width = scaleWidth;
        thumbnailRect.size.height = scaleHeight;
        [sourceImage drawInRect:thumbnailRect fromRect:NSZeroRect operation:NSCompositingOperationCopy fraction:1.0];
        [sourceImage drawInRect:thumbnailRect];
        
        newImage = UIGraphicsGetImageFromCurrentImageContext();
        if (newImage == nil)
        {
            NSLog(@"Could not scale image");
        }
        /* Pop the context to get back to the default */
        UIGraphicsEndImageContext();
#endif        
        
        return newImage;
    }

@end
