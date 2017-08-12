//
//  ViewController.m
//  project_animation
//
//  Created by Treinamento on 12/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) removerView{
    
    //Cria a animação
    [UIView transitionWithView:self.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
                           //tira o xib da view
                           [self.myView removeFromSuperview];
                       } completion:^(BOOL finished) {
                           [[NSNotificationCenter defaultCenter] removeObserver:self];
                       }];
    
}

- (IBAction)showView:(id)sender {
    //Carrega o .xib
    self.myView = [[[NSBundle mainBundle] loadNibNamed:@"MyView" owner:self options:nil] objectAtIndex:0];
    //Coloca o xib com o tamanho da tela atual
    self.myView.frame = self.view.frame;
    
    //esconde os elementos, funcao criada no .m do controle de .xib
    [self.myView ocultarElementos];
    
    //Oculta o searchField
    [self.myView ocultarSearchField];
    
    //Para se comunicar com outras classes, usamos esta classe NotificationCenter, para passar objectos era so passar no object
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(removerView) name:@"sidd" object:nil];
    
    //Cria a animação
    [UIView transitionWithView:self.view
                             duration:0.5
                             options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
                                 //Adiciona o xib na view
                                 [self.view addSubview:self.myView];
                             } completion:^(BOOL finished) {
                                 [self.myView exibirElementos];
                             }];
    
}

@end
