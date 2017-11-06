.class public Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;
.super Lcom/samsung/android/app/music/milk/advertise/AdBannerView;
.source "AdBannerInterstital.java"

# interfaces
.implements Lcom/mapps/android/listner/AdListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdBannerInterstital"


# instance fields
.field private adView:Lcom/mapps/android/view/AdInterstitialView;

.field delayHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->delayHandler:Landroid/os/Handler;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->delayHandler:Landroid/os/Handler;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 33
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->setOrientation(I)V

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->resume()V

    .line 38
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "AdBannerInterstital"

    const-string/jumbo v1, "resume : called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getInst()Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getInterstitalBanner(Landroid/content/Context;)Lcom/mapps/android/view/AdInterstitialView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdInterstitialView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adView:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public onChargeableBannerType(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public onFailedToReceive(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "errorCode"    # I

    .prologue
    .line 57
    sparse-switch p2, :sswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 66
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;->onError()V

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x384 -> :sswitch_0
        -0x2bc -> :sswitch_0
        -0x258 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x12c -> :sswitch_0
        -0xc8 -> :sswitch_0
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method
