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
    switch (animation) {
        case AnimationBottomToTop:
        {
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
            break;
            
        case AnimationTopToBottom:
            
            break;
            
        case AnimationRightToLeft:
            
            break;
            
        case AnimationAwesome:
            
            break;
            
        default:
            break;
            

    }
}



@end
