.class public Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;
.super Lcom/samsung/android/app/music/milk/advertise/AdBannerView;
.source "AdBannerEnding.java"

# interfaces
.implements Lcom/mapps/android/listner/AdListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdBannerEnding"


# instance fields
.field private adView:Lcom/mapps/android/view/EndingAdView;

.field delayHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->delayHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->delayHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->setOrientation(I)V

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->resume()V

    .line 40
    return-void
.end method

.method private resume()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "AdBannerEnding"

    const-string/jumbo v1, "resume : called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getInst()Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getEndingBanner(Landroid/content/Context;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    .line 46
    const-string v0, "AdBannerEnding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume : adView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/EndingAdView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->addView(Landroid/view/View;)V

    .line 50
    const-string v0, "AdBannerEnding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume : resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adView:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public onChargeableBannerType(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public onFailedToReceive(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "errorCode"    # I

    .prologue
    .line 61
    const-string v0, "AdBannerEnding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailedToReceive tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sparse-switch p2, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerEnding;->adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;->onError()V

    goto :goto_0

    .line 63
    nop

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
