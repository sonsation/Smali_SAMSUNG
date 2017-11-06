.class public Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "ProductFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ProductFragment"

.field public static final PRODUCT_URL:Ljava/lang/String; = "http://samsungmusic.kr/mobile/ticket_buy"


# instance fields
.field private mLoading:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->handleDeepLink(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method private handleDeepLink(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "ProductFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeepLink"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 117
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    const v2, 0x7f0401f3

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "root":Landroid/view/View;
    const v2, 0x7f1200f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    .line 47
    const v2, 0x7f120320

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mLoading:Landroid/view/View;

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v2

    const-string v3, "productUrl"

    const-string v4, "http://samsungmusic.kr/mobile/ticket_buy"

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getMilkAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "ProductFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method
