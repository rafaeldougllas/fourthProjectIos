//
//  MyView.h
//  project_animation
//
//  Created by Treinamento on 12/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *useButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextField *searchField;


-(void) ocultarElementos;
-(void) exibirElementos;
-(void) ocultarSearchField;
-(void) exibirSearchField;

@end
