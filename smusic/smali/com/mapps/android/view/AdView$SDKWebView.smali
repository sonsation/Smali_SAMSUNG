.class Lcom/mapps/android/view/AdView$SDKWebView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKWebView"
.end annotation


# instance fields
.field private PAGE_LOAD_PROGRESS:I

.field public bGotolinkType:Z

.field public bLinkType:Z

.field private mContext:Landroid/content/Context;

.field private mWebView:Landroid/webkit/WebView;

.field private onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

.field root:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
    .locals 8
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "strURL"    # Ljava/lang/String;
    .param p4, "bType"    # Z
    .param p5, "color"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1581
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    .line 1582
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1573
    iput-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    .line 1574
    iput-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    .line 1575
    iput v6, p0, Lcom/mapps/android/view/AdView$SDKWebView;->PAGE_LOAD_PROGRESS:I

    .line 1576
    iput-boolean v7, p0, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    .line 1577
    iput-boolean v7, p0, Lcom/mapps/android/view/AdView$SDKWebView;->bLinkType:Z

    .line 1583
    iput-boolean p4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->bLinkType:Z

    .line 1584
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    .line 1585
    invoke-virtual {p0, p6}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1586
    new-instance v4, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    .line 1587
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    .line 1588
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$42(Lcom/mapps/android/view/AdView;)I

    move-result v2

    .line 1590
    .local v2, "iheight":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1591
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    .line 1594
    if-eqz p5, :cond_3

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1596
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1597
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :goto_0
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1605
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1607
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1608
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1609
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1610
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1611
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1613
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mapps/android/share/ShareUtil;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHW-M250"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1614
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1615
    :cond_0
    invoke-virtual {p0, v6}, Lcom/mapps/android/view/AdView$SDKWebView;->setFocusable(Z)V

    .line 1616
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 1617
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/mapps/android/view/AdView$SDKWebView$1;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdView$SDKWebView$1;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1633
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1634
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v4

    sget-object v5, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {v4, v5}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    .line 1636
    :cond_1
    if-eqz p4, :cond_4

    .line 1637
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1648
    :goto_1
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/mapps/android/view/AdView$SDKWebView$2;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdView$SDKWebView$2;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1659
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdView$SDKWebView$3;-><init>(Lcom/mapps/android/view/AdView$SDKWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1733
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1734
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/mapps/android/view/AdView$SDKWebView;->addView(Landroid/view/View;)V

    .line 1737
    :cond_2
    return-void

    .line 1599
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1600
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1602
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1640
    :cond_4
    :try_start_2
    const-string v4, "UTF-8"

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, "base64":Ljava/lang/String;
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v5, "text/html; charset=utf-8"

    const-string v6, "base64"

    invoke-virtual {v4, v0, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1642
    .end local v0    # "base64":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1643
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1644
    const/16 v4, -0x384

    invoke-static {p1, v4}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKWebView;I)V
    .locals 0

    .prologue
    .line 1575
    iput p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->PAGE_LOAD_PROGRESS:I

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    return-object v0
.end method


# virtual methods
.method public changBackgroundColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 1741
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1744
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1751
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1747
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeURL(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "bType"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v7, -0x384

    .line 1763
    iput-boolean p2, p0, Lcom/mapps/android/view/AdView$SDKWebView;->bLinkType:Z

    .line 1764
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1765
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1766
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v2

    .line 1768
    .local v2, "color":Ljava/lang/String;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1769
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1770
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v2    # "color":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1780
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    .line 1781
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->destroyItem()V

    .line 1782
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1783
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v4

    sget-object v5, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {v4, v5}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    .line 1785
    :cond_1
    const-string v4, "changeURL: SSPAdmState.VIEW"

    invoke-static {v4}, Lcom/mezzo/common/MzLog;->e(Ljava/lang/String;)V

    .line 1786
    if-eqz p2, :cond_4

    .line 1788
    :try_start_1
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1804
    :cond_2
    :goto_1
    return-void

    .line 1772
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .restart local v2    # "color":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1773
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->root:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1775
    :catch_0
    move-exception v3

    .line 1776
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1789
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v2    # "color":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1790
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v4}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1791
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4, v7}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_1

    .line 1795
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "base64":Ljava/lang/String;
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v5, "text/html; charset=utf-8"

    const-string v6, "base64"

    invoke-virtual {v4, v1, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1797
    .end local v1    # "base64":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1798
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v4}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1799
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4, v7}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_1
.end method

.method public destroyItem()V
    .locals 3

    .prologue
    .line 1815
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 1816
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1817
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->freeMemory()V

    .line 1818
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    :goto_0
    return-void

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    return-object v0
.end method

.method public isOtherType()Z
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$46(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$47(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1809
    :cond_0
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dBackImg"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1760
    :goto_0
    return-void

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
    .locals 0
    .param p1, "onSSPAdmListener"    # Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView;->onSSPAdmListener:Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    .line 1830
    return-void
.end method
