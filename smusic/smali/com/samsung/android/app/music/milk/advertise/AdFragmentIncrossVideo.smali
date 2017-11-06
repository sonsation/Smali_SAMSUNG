.class public Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;
.super Landroid/app/Fragment;
.source "AdFragmentIncrossVideo.java"

# interfaces
.implements Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
.implements Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdFragmentIncrossVideo-"


# instance fields
.field private final DEFAULT_VOLUME:I

.field private final NO_AD:Ljava/lang/String;

.field private final VIDEO_TIMEOUT:I

.field private bBlock:Z

.field private bChangedCp:Z

.field private bPaused:Z

.field delayHandler:Landroid/os/Handler;

.field private final mAdSlots:[Ljava/lang/String;

.field private mDawinVideoAd:Lcom/dawin/DawinVideoAd;

.field mDoNotShow:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    const-string/jumbo v0, "\uad11\uace0 \uc5c6\uc74c"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->NO_AD:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDoNotShow:Landroid/widget/TextView;

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->DEFAULT_VOLUME:I

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->VIDEO_TIMEOUT:I

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bBlock:Z

    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bPaused:Z

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bChangedCp:Z

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "QL6ONY3KX8C"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "QL6ONY3KX8D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "QL6ONY3KX8E"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "QL6ONY3KX8F"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mAdSlots:[Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->delayHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bBlock:Z

    return p1
.end method

.method private getAdSlot()I
    .locals 4

    .prologue
    .line 348
    const-string v1, "AdFragmentIncrossVideo-"

    const-string v2, "getAdSlot"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_AD_INCROSS_ADSLOT_INDEX"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "slot":I
    add-int/lit8 v0, v0, 0x1

    .line 351
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :cond_0
    const-string v1, "AdFragmentIncrossVideo-"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdSlot - slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_AD_INCROSS_ADSLOT_INDEX"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 356
    return v0
.end method

.method private getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;
    .locals 4
    .param p0, "b"    # Z

    .prologue
    .line 69
    const-string v2, "AdFragmentIncrossVideo-"

    const-string v3, "newInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;-><init>()V

    .line 72
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;
    iput-boolean p0, v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bChangedCp:Z

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_AD_POPUP_TYPE"

    sget-object v3, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method

.method private release()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->postStickyAdPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdClickThru : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onAdError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v1, "AdFragmentIncrossVideo-"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdError - title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bBlock:Z

    .line 310
    const-string/jumbo v1, "\uad11\uace0 \uc5c6\uc74c"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bChangedCp:Z

    if-nez v1, :cond_0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->MEZZO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->delayHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$3;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->release()V

    goto :goto_0
.end method

.method public onAdLoaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->startAd()V

    .line 240
    :cond_0
    return-void
.end method

.method public onAdSkiped(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdSkiped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->release()V

    .line 296
    return-void
.end method

.method public onAdSkippableStateChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdSkippableStateChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onAdStoped(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdStoped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->release()V

    .line 303
    return-void
.end method

.method public onAdVideoComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->release()V

    .line 279
    return-void
.end method

.method public onAdVideoFirstQuartile(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoFirstQuartile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onAdVideoMidpoint(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoMidpoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onAdVideoProgress(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onAdVideoStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$2;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method public onAdVideoThirdQuartile(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v0, "AdFragmentIncrossVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdVideoThirdQuartile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const v0, 0x7f040132

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 179
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onDestroy()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    .line 185
    :cond_0
    return-void
.end method

.method public onKeyBackPressed()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onKeyBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bBlock:Z

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onDestroy()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->release()V

    .line 231
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 210
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onPause()V

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bPaused:Z

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 191
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "AdFragmentIncrossVideo-"

    const-string/jumbo v1, "onResume - mDawinVideoAd is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onResume()V

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bPaused:Z

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->onKeyBackPressed()V

    .line 204
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    const-string v6, "AdFragmentIncrossVideo-"

    const-string/jumbo v7, "onViewCreated"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v6, 0x7f120397

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/dawin/DawinVideoAd;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    .line 102
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/dawin/DawinVideoAd;->setVolume(I)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getAdSlot()I

    move-result v2

    .line 105
    .local v2, "index":I
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mAdSlots:[Ljava/lang/String;

    aget-object v5, v6, v2

    .line 108
    .local v5, "strAdSlot":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "adslotid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v6, "userdata"

    const-string v7, "USERDATA"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v6, "videotimeout"

    const/16 v7, 0x2710

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "initData":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDawinVideoAd:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v6, v3, p0}, Lcom/dawin/DawinVideoAd;->initAd(Ljava/lang/String;Lcom/dawin/DawinVideoAd$DawinVideoAdListener;)V

    .line 121
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->bBlock:Z

    .line 123
    const v6, 0x7f120394

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDoNotShow:Landroid/widget/TextView;

    .line 124
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDoNotShow:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 125
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->mDoNotShow:Landroid/widget/TextView;

    new-instance v7, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v6

    const-string v7, "842"

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;

    .line 154
    .local v0, "activity":Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;)V

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setVideoAdPlayTime(J)V

    .line 172
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 173
    return-void

    .line 113
    .end local v0    # "activity":Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;
    .end local v3    # "initData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
