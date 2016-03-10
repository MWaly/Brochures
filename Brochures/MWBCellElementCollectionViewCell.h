//
//  MWBCellElementCollectionViewCell.h
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWBCellElementCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *brochureTitle;
@property (weak, nonatomic) IBOutlet UIImageView *brochureImage;
@property (weak, nonatomic) IBOutlet UILabel *brochureREtailer;

@end
