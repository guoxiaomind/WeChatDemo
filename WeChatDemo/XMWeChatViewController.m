//
//  WeChatViewController.m
//  WeChatDemo
//
//  Created by David Guo on 16/2/29.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMWeChatPeopleListTableViewCell.h"
#import "XMWeChatPeopleModel.h"
#import "XMWeChatViewController.h"
#import <Masonry.h>

@interface XMWeChatViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *peopleTableView;

@property (nonatomic, strong) UISearchBar *searchBar;

@property (nonatomic, strong) UIView *headerView;

@property (nonatomic, strong) UILabel *headerTitle;

@property (nonatomic, strong) UIButton *addButton;

@property (nonatomic, strong) NSArray *peopleList;

@end

@implementation XMWeChatViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self initUI];
}

- (void)initUI {

    self.tabBarItem.title = @"微信";
    self.tabBarItem.image = [UIImage imageNamed:@"tabbar_mainframe"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_mainframeHL"];
    self.tabBarItem.badgeValue = @"3";

    _headerView = [[UIView alloc] init];
    _headerView.backgroundColor = [UIColor colorWithWhite:0.15 alpha:1];
    [self.view addSubview:_headerView];
    [_headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.with.right.with.top.mas_equalTo(0);
        make.height.mas_equalTo(60);
    }];

    _headerTitle = [[UILabel alloc] init];
    _headerTitle.backgroundColor = [UIColor clearColor];
    _headerTitle.textColor = [UIColor whiteColor];
    _headerTitle.text = @"微信";
    _headerTitle.textAlignment = NSTextAlignmentCenter;
    _headerTitle.font = [UIFont systemFontOfSize:14];
    [_headerView addSubview:_headerTitle];
    [_headerTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.with.right.with.bottom.mas_equalTo(0);
        make.top.mas_equalTo(20);
    }];

    _addButton = [[UIButton alloc] init];
    [_addButton setImage:[UIImage imageNamed:@"AddGroupMemberBtnHL"] forState:UIControlStateNormal];
    [_addButton setImage:[UIImage imageNamed:@"AddGroupMemberBtnHL"] forState:UIControlStateHighlighted];
    [_headerView addSubview:_addButton];
    [_addButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.with.bottom.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];

    _peopleTableView = [[UITableView alloc] init];
    _peopleTableView.dataSource = self;
    _peopleTableView.delegate = self;
    _peopleTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:_peopleTableView];
    [_peopleTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.with.right.with.bottom.mas_equalTo(0);
        make.top.mas_equalTo(60);
    }];

    _searchBar = [[UISearchBar alloc] init];
    _searchBar.placeholder = @"搜索";
    _searchBar.autocapitalizationType = UITextAutocapitalizationTypeWords;
    _searchBar.showsCancelButton = NO;
    [_searchBar setBarTintColor:[UIColor colorWithWhite:0.9 alpha:1]];
    _peopleTableView.tableHeaderView = _searchBar;
    [_searchBar sizeToFit]; //大小自适应容器
}

- (NSArray *)peopleList {

    NSString *path = [[NSBundle mainBundle] pathForResource:@"peopleList.plist" ofType:nil];
    NSArray *arrayDict = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *arrayModels = [NSMutableArray array];
    for (NSDictionary *dict in arrayDict) {
        XMWeChatPeopleModel *model = [XMWeChatPeopleModel peopleWithDict:dict];
        [arrayModels addObject:model];
        _peopleList = arrayModels;
    }
    return _peopleList;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.peopleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    XMWeChatPeopleModel *peopleModel = self.peopleList[indexPath.row];
    static NSString *identified = @"peopleCell";
    XMWeChatPeopleListTableViewCell *peopleCell = [tableView dequeueReusableCellWithIdentifier:identified];
    if (peopleCell == nil) {
        peopleCell = [[XMWeChatPeopleListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identified];
    }
    peopleCell.peopleModel = peopleModel;
    return peopleCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 45;
}

- (UIStatusBarStyle)preferredStatusBarStyle {

    return UIStatusBarStyleLightContent;
}

@end
