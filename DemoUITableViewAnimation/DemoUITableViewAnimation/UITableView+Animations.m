//
//  UITableView+Animations.m
//  DemoUITableViewAnimation
//
//  Created by Phan Anh Duy on 8/18/15.
//  Copyright (c) 2015 Phan Anh Duy. All rights reserved.
//

#import "UITableView+Animations.h"

@implementation UITableView (Animations)

/*!
 *  @perform animations
 */
- (void)performAnimation:(UITableViewAnimation)animation {
    // disable scroll when tableview appearing
    [self setUserInteractionEnabled:NO];
    
    switch (animation) {
        case AnimationBottomToTop:
            [self performAnimationBottomToTop];
            break;
            
        case AnimationTopToBottom:
            [self performAnimationTopToBottom];
            break;
            
        case AnimationRightToLeft:
            [self performAnimationRightToLeft];
            break;
            
        case AnimationAwesome:
            [self performAnimationAwesome];
            break;
            
        default:
            break;
    }
    
    // enable scroll when tableview did appear
    [self setUserInteractionEnabled:YES];
}

/*!
 *  @discussion perform animation bottom to top
 */
- (void)performAnimationBottomToTop {
    NSArray *cells = self.visibleCells;
    CGFloat tableHeight = self.bounds.size.height;
    
    for (UITableViewCell *cell in cells ){
        cell.transform = CGAffineTransformMakeTranslation(0, tableHeight);
    }
    
    NSInteger index = 0;
    
    for (UITableViewCell *cell in cells) {
        [UIView animateWithDuration:1.5 delay:0.05 * index usingSpringWithDamping:0.8 initialSpringVelocity:0.0 options:0 animations:^{
            cell.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            
        }];
        
        index += 1;
    }
}

/*!
 *  @discussion perform animation bottom to top
 */
- (void)performAnimationTopToBottom {
    NSArray *cells = self.visibleCells;
    CGFloat tableHeight = self.bounds.size.height;
    
    for (UITableViewCell *cell in cells ){
        cell.transform = CGAffineTransformMakeTranslation(0, -tableHeight);
    }
    
    NSInteger index = 0;
    
    for (UITableViewCell *cell in cells) {
        [UIView animateWithDuration:1.5 delay:0.05 * index usingSpringWithDamping:0.8 initialSpringVelocity:0.0 options:0 animations:^{
            cell.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            
        }];
        
        index += 1;
    }
}

/*!
 *  @discussion perform animation bottom to top
 */
- (void)performAnimationRightToLeft {
    NSArray *cells = self.visibleCells;
    CGFloat tableWidth = self.bounds.size.width;
    
    for (UITableViewCell *cell in cells ){
        cell.transform = CGAffineTransformMakeTranslation(tableWidth, 0);
    }
    
    NSInteger index = 0;
    
    for (UITableViewCell *cell in cells) {
        [UIView animateWithDuration:1.5 delay:0.05 * index usingSpringWithDamping:0.8 initialSpringVelocity:0.0 options:0 animations:^{
            cell.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            
        }];
        
        index += 1;
    }
}

/*!
 *  @discussion perform animation bottom to top
 */
- (void)performAnimationAwesome {
    
}


@end
