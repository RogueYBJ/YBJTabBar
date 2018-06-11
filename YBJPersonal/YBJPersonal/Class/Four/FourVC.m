//
//  FourVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "FourVC.h"
#import <WebKit/WebKit.h>
@interface FourVC ()<WKUIDelegate,WKNavigationDelegate>
@property(strong,nonatomic)WKWebView * WKWeb;
@end

@implementation FourVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    NSLog(@"%@",_UrlStr);
    [self.view addSubview:self.WKWeb];
    self.WKWeb.UIDelegate = self;
    self.WKWeb.navigationDelegate = self;
    [self.WKWeb loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_UrlStr]]];
}
- (WKWebView *)WKWeb   {
    if (!_WKWeb) {
        _WKWeb = [[WKWebView alloc] initWithFrame:self.view.bounds];
    }
    return _WKWeb;
}
#pragma mark - WKNavigationDelegate
// 页面开始加载时调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    self.title = @"加载中。。。";
}
// 当内容开始返回时调用
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    self.title = @"正在读取。。。";
}
// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    self.title = @"加载完成";
}
// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
    self.title = @"加载失败";
}
@end
