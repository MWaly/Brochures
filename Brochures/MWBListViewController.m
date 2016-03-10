//
//  MWBListViewController.m
//  Brochures
//
//  Created by Mokhles on 28/02/16.
//  Copyright © 2016 Mohamed Waly. All rights reserved.
//

#import "MWBListViewController.h"
#import "MWBWebDataStore.h"
#import "MWBDisplayableSectorsContainer.h"
#import "MWBBrochureViewItem.h"
#import "MWBSectionViewItem.h"
#import "MWBListSection.h"
#import "MWBCellElementCollectionViewCell.h"
@interface MWBListViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic , strong) MWBDisplayableSectorsContainer* dataContainer;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewTable;

@end

@implementation MWBListViewController
- (void)viewDidLoad {

    [super viewDidLoad];
        // initating the list
    [self.moduleEventHandler updateList];


}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRetrieveImage:) name:@"Image Retrieved" object:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super viewWillDisappear:animated];
}
#pragma mark - List Interface Protocol

- (void)showDataForList:(MWBDisplayableSectorsContainer *)sections
{
    NSLog(@"data to be shown now");
    

    __weak MWBListViewController *weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^(void){
    weakSelf.dataContainer=sections;
    [weakSelf.collectionViewTable reloadData];
    });

    


}

- (void)showNetworkErrorMessage
{
    NSLog(@"error handling to be done now");
}

#pragma mark - Collection View Protocol - 

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    MWBSectionViewItem* sectionViewItem = [self.dataContainer.sectors objectAtIndex:section];
    
    return [sectionViewItem.sectionsNumber  integerValue];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  [self.dataContainer.sectors count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    MWBSectionViewItem * section = [self.dataContainer.sectors objectAtIndex:indexPath.section];
    
    MWBBrochureViewItem *brochureDisplayableItem = [self.dataContainer.brochures[section.identfier] objectAtIndex:indexPath.row];
    
    MWBCellElementCollectionViewCell * collectionViewCell = [ collectionView dequeueReusableCellWithReuseIdentifier:@"CELL"  forIndexPath:indexPath];
    collectionViewCell.brochureTitle.text = brochureDisplayableItem.title;
    collectionViewCell.brochureREtailer.text= brochureDisplayableItem.retailerName;
    collectionViewCell.brochureImage.image = brochureDisplayableItem.imageOfBrochure;


   return  collectionViewCell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    MWBListSection * collectionViewSection = [ collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"SECTION" forIndexPath:indexPath];
    
    MWBSectionViewItem* sectionViewItem =[self.dataContainer.sectors objectAtIndex:indexPath.section];
    collectionViewSection.sectorTitleLabel.text =sectionViewItem.name;
    collectionViewSection.sectorBrochuresCounterLabel.text=[sectionViewItem.sectionsNumber  stringValue];
    collectionViewSection.sectorLogo.image = sectionViewItem.image;
    
    return collectionViewSection;

}

#pragma mark - Image Retrieval  - 
//TODO: seperate methods of image retrieval whether to brochure or section
- (void) didRetrieveImage:(NSNotification*)notifcation
{
    for (UICollectionViewCell *cell in [self.collectionViewTable visibleCells])
    {
        NSIndexPath *indexPath = [self.collectionViewTable indexPathForCell:cell];
        MWBSectionViewItem * section = [self.dataContainer.sectors objectAtIndex:indexPath.section];
        
        MWBBrochureViewItem *brochureDisplayableItem = [self.dataContainer.brochures[section.identfier] objectAtIndex:indexPath.row];
        __weak MWBListViewController *weakSelf = self;
        if ([brochureDisplayableItem.identfier isEqualToString:notifcation.object]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                  [weakSelf.collectionViewTable reloadItemsAtIndexPaths:@[indexPath]];
            });
        }
        // reloading sections
        // TODO: make it upon visible supplmentary views and not colleciton view as it causes some blocakge of updates
        if ([section.identfier isEqualToString:notifcation.object]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [weakSelf.collectionViewTable reloadSections:[NSIndexSet indexSetWithIndex:indexPath.section]];
            });
        }
    }
}
@end
