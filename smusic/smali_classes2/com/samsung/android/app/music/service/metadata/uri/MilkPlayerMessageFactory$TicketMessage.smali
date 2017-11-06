.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TicketMessage"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 290
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 291
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;->mActivity:Landroid/app/Activity;

    .line 292
    return-void
.end method

.method static build(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 279
    const-string/jumbo v0, "upsell_popup"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-object p0
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 284
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doNegative()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doNegative()V

    .line 322
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "9151"

    .line 323
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public doPositive()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 314
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "9152"

    .line 316
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 296
    const v0, 0x7f040102

    return v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, ""

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0310

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0x50

    return v0
.end method
