/**************************************************************************************************
 * File name    : EDStarRating.m
 * Description  : EDStarRatingView interface and ARC Helper
 * Creator      : Ernesto Garcia,  Nick Lockwood
 * Creation date: Fri.  3 March 2017
 * Copyright(C) 2012    cocoawithchurros.com  and  Charcoal Design
 * Distributed under MIT license and the oermissive zlib license.
 *
 **************************************************************************************************/

#import "EDStarRating.h"

#define ED_DEFAULT_HALFSTAR_THRESHOLD   0.6

@implementation EDStarRating

    @synthesize starImage;
    @synthesize starHighlightedImage;
    @synthesize rating = _rating;
    @synthesize maxRating;
    @synthesize backgroundColor;
    @synthesize backgroundImage;
    @synthesize editable;
    @synthesize delegate;
    @synthesize horizontalMargin;
    // @synthesize drawHalfStars;
    @synthesize halfStarThreshold;
    @synthesize displayMode;

/**************************************************************************************************/

    #pragma mark -
    #pragma mark Init & dealloc

    - (id)initWithFrame:(NSRect)frame
    {
        self = [super initWithFrame:frame];
        if (self)
        {
            /* Initialization code here */
            maxRating = 5.0;
            _rating = 0.0;
            horizontalMargin = 0.0;
            displayMode = EDStarRatingDisplayFull;
            halfStarThreshold = ED_DEFAULT_HALFSTAR_THRESHOLD;
        }
        
        return self;
    }

    - (void)dealloc
    {
        AH_RELEASE(starImage);
        AH_RELEASE(starHighlightedImage);
        AH_RELEASE(backgroundColor);
        AH_RELEASE(backgroundImage);
    }

    #pragma mark -
    #pragma mark Setters

/**************************************************************************************************/

    #pragma mark -
    #pragma mark Drawing

    - (NSPoint)pointOfStarAtPosition:(NSInteger)position highlighted:(BOOL)highlighted
    {
        NSSize size = highlighted ? starHighlightedImage.size : starImage.size;
        
        NSInteger starsSpace = self.bounds.size.width - 2 * horizontalMargin;
        NSInteger interSpace = 0;
        
        interSpace = ((maxRating - 1) > 0) ? ((starsSpace - (maxRating)*size.width)/(maxRating - 1)) : 0;
        if (interSpace < 0)
        {
            interSpace = 0;
        }
        
        CGFloat x = horizontalMargin + size.width * position;
        if (position > 0)
        {
            x += (interSpace * position);
        }
        CGFloat y = (self.bounds.size.height - size.height)/2.0;
        
        return NSMakePoint(x, y);
    }

    - (void)drawRect:(NSRect)dirtyRect
    {
        /* Draw background color */
        NSColor *colorToDraw = (backgroundColor == nil) ? ([NSColor clearColor]) : (backgroundColor);
        [colorToDraw set];
        
        NSBezierPath *path = [NSBezierPath bezierPathWithRect:self.bounds];
        [path fill];
        
        /* Draw image background */
        if (backgroundImage)
        {
            [backgroundImage drawInRect:self.bounds
                               fromRect:NSMakeRect(0.0, 0.0, backgroundImage.size.width, backgroundImage.size.height)
                              operation:NSCompositingOperationSourceOver    /* NSCompositeSourceOver */
                               fraction:1.0];
        }
        NSSize starSize = [starImage size];
        NSSize starHighlightedSize = [starHighlightedImage size];
        
        for (NSInteger i = 0; i < maxRating; i++)
        {
            [starImage drawAtPoint:[self pointOfStarAtPosition:i highlighted:YES]
                          fromRect:NSMakeRect(0.0, 0.0, starSize.width, starSize.height)
                         operation:/* NSCompositeSourceOver */ NSCompositingOperationSourceOver
                          fraction:1.0];
            
            if (i < _rating)
            {
                [NSGraphicsContext saveGraphicsState];
                NSBezierPath *pathClip = nil;
                NSPoint starPoint = [self pointOfStarAtPosition:i highlighted:YES];
                
                if ((i < _rating) && (_rating < i+1))
                {
                    float difference = _rating - i;
                    NSRect rectClip;
                    rectClip.origin = starPoint;
                    rectClip.size = starSize;
                    
                    if ((displayMode == EDStarRatingDisplayHalf) && (difference < halfStarThreshold))   /* Draw half star image */
                    {
                        rectClip.size.width /= 2.0;
                        pathClip = [NSBezierPath bezierPathWithRect:rectClip];
                    }
                    else if (displayMode == EDStarRatingDisplayAccurate)
                    {
                        rectClip.size.width *= difference;
                        pathClip = [NSBezierPath bezierPathWithRect:rectClip];
                    }
                    
                    if (pathClip)
                    {
                        [pathClip addClip];
                    }
                }
                [starHighlightedImage drawAtPoint:starPoint
                                         fromRect:NSMakeRect(0.0, 0.0, starHighlightedSize.width, starHighlightedSize.height)
                                        operation:NSCompositingOperationSourceOver  /* NSCompositeSourceOver */
                                         fraction:1.0];
                [NSGraphicsContext restoreGraphicsState];
            }
        }
    }

/**************************************************************************************************/

    #pragma mark -
    #pragma mark Mouse Interaction

    - (NSInteger) starsForPoint:(NSPoint)point
    {
        NSInteger stars = 0;
        for (NSInteger i = 0; i < maxRating; i++)
        {
            NSPoint p = [self pointOfStarAtPosition:i highlighted:NO];
            if (point.x > p.x)
            {
                stars = i + 1;
            }
        }
        return stars;
    }

    - (void)mouseDown:(NSEvent *)theEvent
    {
        if (!editable)
            return;
        
        if (/* NSLeftMouseDown */ NSEventTypeLeftMouseDown == [theEvent type])
        {
            NSPoint pointInView = [self convertPoint:[theEvent locationInWindow] fromView:nil];
            self.rating = [self starsForPoint:pointInView];
            [self setNeedsDisplay];
        }
    }

    - (void)mouseUp:(NSEvent *)theEvent
    {
        if (!editable)
            return;
        
        if (delegate && [delegate respondsToSelector:@selector(starsSelectionChanged:rating:)])
        {
            [delegate starsSelectionChanged:self rating:self.rating];
        }
    }

    - (void)mouseDragged:(NSEvent *)theEvent
    {
        if (!editable)
            return;
        
        if (delegate && [delegate respondsToSelector:@selector(starsSelectionChanged:rating:)])
        {
            [delegate starsSelectionChanged:self rating:self.rating];
        }
    }

@end
