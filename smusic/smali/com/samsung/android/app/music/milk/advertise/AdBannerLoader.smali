.class public Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;
.super Ljava/lang/Object;
.source "AdBannerLoader.java"

# interfaces
.implements Lcom/mapps/android/listner/AdListner;


# static fields
.field public static final MAN_API_TYPE_ERROR:I = -0x12c

.field public static final MAN_APP_ID_ERROR:I = -0x190

.field public static final MAN_CREATIVE_ERROR:I = -0x384

.field public static final MAN_ID_BAD:I = -0x258

.field public static final MAN_ID_NO_AD:I = -0x2bc

.field public static final MAN_INTERVAL:I = -0x3e8

.field public static final MAN_SERVER_ERROR:I = -0xc8

.field public static final MAN_WINDOW_ID_ERROR:I = -0x1f4

.field public static final NETWORK_ERROR:I = -0x64

.field private static final TAG:Ljava/lang/String; = "AdViewCacher"

.field public static inst:Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

.field private static tagIndex:I


# instance fields
.field public bannerViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mapps/android/view/AdView;",
            ">;"
        }
    .end annotation
.end field

.field public endingAdViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mapps/android/view/EndingAdView;",
            ">;"
        }
    .end annotation
.end field

.field public errorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interstitalAdViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mapps/android/view/AdInterstitialView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->tagIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->bannerViews:Ljava/util/Queue;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    .line 77
    return-void
.end method

.method private createBanner(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v4, v4, v1}, Lcom/mapps/android/view/AdView;-><init>(Landroid/content/Context;III)V

    .line 92
    .local v0, "view":Lcom/mapps/android/view/AdView;
    const-string v1, "1251"

    const-string v2, "31019"

    const-string v3, "802403"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdView;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 93
    invoke-virtual {v0, v4}, Lcom/mapps/android/view/AdView;->isAnimateImageBanner(Z)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getViewTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StartService()V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->bannerViews:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "AdViewCacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBanner queue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->bannerViews:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private createEndingBanner(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 101
    new-instance v0, Lcom/mapps/android/view/EndingAdView;

    invoke-direct {v0, p1}, Lcom/mapps/android/view/EndingAdView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "view":Lcom/mapps/android/view/EndingAdView;
    const-string v1, "1251"

    const-string v2, "31019"

    const-string v3, "802404"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/EndingAdView;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p0}, Lcom/mapps/android/view/EndingAdView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 105
    const/4 v1, 0x1

    iput v1, v0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getViewTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->setTag(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->startEndingAdView()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method private createInterstitalBanner(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 114
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView;

    invoke-direct {v0, p1}, Lcom/mapps/android/view/AdInterstitialView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "view":Lcom/mapps/android/view/AdInterstitialView;
    const-string v1, "1251"

    const-string v2, "31019"

    const-string v3, "802404"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdInterstitialView;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdInterstitialView;->setAdListner(Lcom/mapps/android/listner/AdListner;)V

    .line 119
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->getViewTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public static getInst()Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->inst:Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->inst:Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->inst:Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->inst:Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getViewTag()I
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->tagIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->tagIndex:I

    return v0
.end method


# virtual methods
.method public getBandBanner(Landroid/content/Context;)Lcom/mapps/android/view/AdView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->createBanner(Landroid/content/Context;)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->bannerViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->bannerViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapps/android/view/AdView;

    .line 129
    .local v0, "adView":Lcom/mapps/android/view/AdView;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "adView":Lcom/mapps/android/view/AdView;
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getEndingBanner(Landroid/content/Context;)Lcom/mapps/android/view/EndingAdView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->createEndingBanner(Landroid/content/Context;)V

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->createEndingBanner(Landroid/content/Context;)V

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapps/android/view/EndingAdView;

    .line 146
    .local v0, "adView":Lcom/mapps/android/view/EndingAdView;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->endingAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "adView":Lcom/mapps/android/view/EndingAdView;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getInterstitalBanner(Landroid/content/Context;)Lcom/mapps/android/view/AdInterstitialView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->createInterstitalBanner(Landroid/content/Context;)V

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->createInterstitalBanner(Landroid/content/Context;)V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->interstitalAdViews:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapps/android/view/AdInterstitialView;

    .line 163
    .local v0, "adView":Lcom/mapps/android/view/AdInterstitialView;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdInterstitialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdInterstitialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0    # "adView":Lcom/mapps/android/view/AdInterstitialView;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public onChargeableBannerType(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .prologue
    .line 174
    const-string v0, "AdViewCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChargeableBannerType AD changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onFailedToReceive(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "errorCode"    # I

    .prologue
    .line 180
    sparse-switch p2, :sswitch_data_0

    .line 196
    instance-of v0, p1, Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_0

    .line 197
    check-cast p1, Lcom/mapps/android/view/AdView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_0
    const-string v0, "AdViewCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailedToReceive : banner load error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerLoader;->errorList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
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
