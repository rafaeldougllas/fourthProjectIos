//
//  MyView.m
//  project_animation
//
//  Created by Treinamento on 12/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void) ocultarElementos{
    self.useButton.frame   = CGRectMake(160.f, 289.f, 0.f, 0.f);
    self.backButton.frame  = CGRectMake(159.f, 288.f, 0.f, 0.f);
}

-(void) exibirElementos{
    //Adiciona a animacao quando for aparecer os botoes
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    //restaura o tamanho normal para os botoes
    self.useButton.frame   = CGRectMake(111.f, 289.f, 98.f, 72.f);
    self.backButton.frame  = CGRectMake(65.f, 288.f, 94.f, 73.f);
    //executa realmente as animacoes
    [UIView commitAnimations];
}

-(void) ocultarSearchField{
    CGRect rec = self.searchField.frame;
    rec.origin.x = -700;
    self.searchField.frame = rec;
}
-(void) exibirSearchField{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    
    
    CGRect rec = self.searchField.frame;
    rec.origin.x = 56;
    self.searchField.frame = rec;
    
    [UIView commitAnimations];
}
- (IBAction)showSearch:(id)sender {
    [self exibirSearchField];
}

- (IBAction)back:(id)sender {
    //metodo chamado na outra classe, por meio do notificationcenter
    [[NSNotificationCenter defaultCenter] postNotificationName:@"sidd" object:nil];
    
}




@end
