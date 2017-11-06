.class public Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;
.super Lcom/samsung/android/app/music/milk/advertise/AdBannerView;
.source "AdBannerBand.java"

# interfaces
.implements Lcom/mapps/android/listner/AdListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdBannerBand"


# instance fields
.field private adView:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->setOrientation(I)V

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->resume()V

    .line 35
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 40
    const-string v0, "AdBannerBand"

    const-string/jumbo v1, "resume : release ad view"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getInst()Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getBandBanner(Landroid/content/Context;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->addView(Landroid/view/View;)V

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public onChargeableBannerType(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .prologue
    .line 62
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;->onDetachedFromWindow()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->adView:Lcom/mapps/android/view/AdView;

    .line 55
    const-string v0, "AdBannerBand"

    const-string/jumbo v1, "onDetachedFromWindow : release ad view"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onFailedToReceive(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "errorCode"    # I

    .prologue
    .line 66
    sparse-switch p2, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 75
    :sswitch_0
    const-string v0, "AdBannerBand"

    const-string/jumbo v1, "onFailedToReceive : Failed loading advertisement"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerBand;->setVisibility(I)V

    goto :goto_0

    .line 66
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
