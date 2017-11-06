.class final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoginMessage"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 236
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 237
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;->mActivity:Landroid/app/Activity;

    .line 238
    return-void
.end method

.method static build(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 225
    const-string/jumbo v0, "upsell_popup"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    return-object p0
.end method

.method static obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 230
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doNegative()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doNegative()V

    .line 267
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "9151"

    .line 268
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public doPositive()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    .line 260
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "9157"

    .line 261
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 242
    const v0, 0x7f040103

    return v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, ""

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    .prologue
    .line 273
    const/16 v0, 0x50

    return v0
.end method
