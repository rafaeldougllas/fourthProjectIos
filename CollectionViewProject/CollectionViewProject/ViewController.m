//
//  ViewController.m
//  CollectionViewProject
//
//  Created by Treinamento on 12/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "TesteCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.elementos = @[@"Segunda",@"Terca",@"Quarta",@"Quinta",@"Sexta"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return  1;
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.elementos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //Instancia a classe custom da celular, pegando a celula default `cell` que foi renomeada para este nome
    TesteCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    //Insere o texto na celula
    cell.labelLabel.text = self.elementos[indexPath.row];
    return cell;
}

@end
