.class abstract Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseMilkPlayerMessage"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MilkMessage"


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;-><init>(Landroid/os/Bundle;)V

    .line 164
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->mActivity:Landroid/app/Activity;

    .line 165
    return-void
.end method

.method private getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method private releaseDormancyMode()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "MilkMessage"

    const-string/jumbo v1, "releaseDormancyFlag"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isDormancyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "MilkMessage"

    const-string/jumbo v1, "releaseDormancyFlag - isDormancyMode is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setDormancyMode(Z)Z

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->releaseDormancyMode()V

    .line 183
    return-void
.end method

.method public doNegative()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->releaseDormancyMode()V

    .line 177
    return-void
.end method

.method public doPositive()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->releaseDormancyMode()V

    .line 171
    return-void
.end method
