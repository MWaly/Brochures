//
//  MWBListSection.h
//  Brochures
//
//  This is the custom view which will display to the user details of the sector
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWBListSection : UICollectionReusableView

/**
 *  Label holding the title for sector
 */
@property (nonatomic ,weak) IBOutlet UILabel* sectorTitleLabel;

/**
 *  The logo to be ddisplayed of the sector
 */
@property (nonatomic ,weak) IBOutlet UIImageView* sectorLogo;
/**
 *  The brochures counter label
 */
@property (nonatomic ,weak) IBOutlet UILabel* sectorBrochuresCounterLabel;


/**
 *  Initalizing a view of sector header
 *
 *  @param title            sector title
 *  @param imageOfSector    image Of Sector
 *  @param countOfBrochuers count of brochures in this sector
 *
 *  @return view with filled data
 */
+ (MWBListSection*) listSectionWithTitle:(NSString*)title logo:(UIImage*)imageOfSector countOfBrouchers:(NSUInteger)countOfBrochuers;



@end
