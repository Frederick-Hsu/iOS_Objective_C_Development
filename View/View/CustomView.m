/**************************************************************************************************
 * File name    : CustomView.m
 * Description  : Customize the user-defined view, implement the class CustomView
 * Creator      : Frederick Hsu
 * Creation date: Tue.  07 March 2017
 * Copyright(C) 2017    All rights reserved.
 *
 **************************************************************************************************/


#import "CustomView.h"

@interface CustomView ()

    - (void)saveScrollViewAsImage;

@end

/*================================================================================================*/

@implementation CustomView

    - (void)drawRect:(NSRect)dirtyRect
    {
        [super drawRect:dirtyRect];
        
        /* Drawing code here. */
        
        [[NSColor yellowColor] setFill];
        NSBezierPath *curvePath = [NSBezierPath bezierPathWithOvalInRect:dirtyRect];
        [curvePath stroke];
        
        NSRect bounds = [self bounds];
        NSBezierPath *roundedShape = [NSBezierPath bezierPath];
        [roundedShape appendBezierPathWithRoundedRect:bounds xRadius:10 yRadius:10];
        [roundedShape fill];
    }

    - (void)saveSelfAsImage
    {
        [self lockFocus];
        NSImage *image = [[NSImage alloc] initWithData:[self dataWithPDFInsideRect:self.bounds]];
        [self unlockFocus];
        
        NSData *imageData = image.TIFFRepresentation;
        /* Create a file handler */
        NSFileManager *fmgr = [NSFileManager defaultManager];
        NSString *filePath = @"/Users/frederick_hsu/Programming/Objective_C_Programming/View/View/capture.png";
        [fmgr createFileAtPath:filePath contents:imageData attributes:nil];
        
        /* After saved file, Finder change working directory to the file path */
        NSURL *fileURL = [NSURL fileURLWithPath:filePath];
        [[NSWorkspace sharedWorkspace] activateFileViewerSelectingURLs:@[fileURL]];
    }

    - (void)saveScrollViewAsImage
    {
        [self lockFocus];
        NSRect rect = [self frame];
        NSData *dataRectImage = [self dataWithPDFInsideRect:rect];
        [self unlockFocus];
        
        NSString *imageFilePath = @"/Users/frederick_hsu/Programming/Objective_C_Programming/View/View/screenshot.png";
        NSPDFImageRep *pdfImage = [NSPDFImageRep imageRepWithData:dataRectImage];
        
        NSFileManager *fmgr = [NSFileManager defaultManager];
        NSInteger pdfPageCount = [pdfImage pageCount];
        
        for (NSInteger i = 0; i < pdfPageCount; i++)
        {
            [pdfImage setCurrentPage:i];
            NSImage *tmpImage = [[NSImage alloc] init];
            [tmpImage addRepresentation:pdfImage];
            NSBitmapImageRep *bitmapImage = [NSBitmapImageRep imageRepWithData:[tmpImage TIFFRepresentation]];
            NSData *finalData = [bitmapImage representationUsingType:NSPNGFileType properties:@{}];
            [fmgr createFileAtPath:imageFilePath contents:finalData attributes:nil];
        }
    }

@end
