.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioPlayingLimitOverMessage"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->mActivity:Landroid/app/Activity;

    .line 348
    return-void
.end method

.method static build(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 335
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 336
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 340
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doPositive()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 370
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const-string v0, ""

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a02ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a02eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x11

    return v0
.end method
