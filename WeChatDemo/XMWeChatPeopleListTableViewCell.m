//
//  XMWeChatPeopleListTableViewCell.m
//  WeChatDemo
//
//  Created by David Guo on 16/3/2.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMWeChatPeopleListTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <masonry.h>

@interface XMWeChatPeopleListTableViewCell ()

@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *wordsLabel;
@property (nonatomic,strong) UILabel *timelabel;

@end

@implementation XMWeChatPeopleListTableViewCell

-(void)setPeopleModel:(XMWeChatPeopleModel *)peopleModel{
    if (_peopleModel!=peopleModel) {
        _peopleModel = peopleModel;
    }
    [_iconImageView sd_setImageWithURL:[NSURL URLWithString:_peopleModel.image] placeholderImage:[UIImage imageNamed:@"ff_IconGroup"]];
    _nameLabel.text = _peopleModel.name;
    _wordsLabel.text = _peopleModel.words;
    _timelabel.text = _peopleModel.time;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _iconImageView = [[UIImageView alloc]init];
    _iconImageView.layer.cornerRadius = 5;
    _iconImageView.layer.masksToBounds = YES;
    [self.contentView addSubview:_iconImageView];
    [_iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.with.top.mas_equalTo(5);
        make.bottom.mas_equalTo(-5);
        make.width.mas_equalTo(_iconImageView.mas_height);
    }];
    
    _nameLabel = [[UILabel alloc]init];
    _nameLabel.textAlignment = NSTextAlignmentLeft;
    _nameLabel.font = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:_nameLabel];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(5);
        make.left.mas_equalTo(_iconImageView.mas_right).with.offset(5);
        make.right.mas_equalTo(-60);
        make.height.mas_equalTo(12);
    }];
    
    _wordsLabel = [[UILabel alloc]init];
    _wordsLabel.textColor = [UIColor grayColor];
    _wordsLabel.textAlignment = NSTextAlignmentLeft;
    _wordsLabel.font = [UIFont systemFontOfSize:10];
    [self.contentView addSubview:_wordsLabel];
    [_wordsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_nameLabel.mas_bottom).with.offset(5);
        make.left.mas_equalTo(_nameLabel.mas_left);
        make.bottom.mas_equalTo(-5);
        make.right.mas_equalTo(0);
    }];
    
    _timelabel = [[UILabel alloc]init];
    _timelabel.textColor = [UIColor grayColor];
    _timelabel.textAlignment = NSTextAlignmentRight;
    _timelabel.font = [UIFont systemFontOfSize:10];
    [self.contentView addSubview:_timelabel];
    [_timelabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_nameLabel.mas_right);
        make.top.mas_equalTo(5);
        make.right.mas_equalTo(-5);
        make.height.mas_equalTo(10);
    }];
    
    return self;
}
@end
