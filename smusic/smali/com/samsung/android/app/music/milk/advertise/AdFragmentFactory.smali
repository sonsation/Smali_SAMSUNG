.class public Lcom/samsung/android/app/music/milk/advertise/AdFragmentFactory;
.super Ljava/lang/Object;
.source "AdFragmentFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdFragmentFactory-"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFragment(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)Landroid/app/Fragment;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentFactory$1;->$SwitchMap$com$samsung$android$app$music$milk$advertise$AdPopupDlgFactory$ADPOPUP_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 44
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 23
    :pswitch_0
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment - INTERSTITIAL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->newInstance(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    move-result-object v1

    goto :goto_0

    .line 26
    :pswitch_1
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment - POSTROLL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->newInstance(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    move-result-object v1

    goto :goto_0

    .line 29
    :pswitch_2
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment - VIDEO"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getVideoCp()I

    move-result v0

    .line 31
    .local v0, "videoCp":I
    if-ne v0, v3, :cond_0

    .line 32
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    move-result-object v1

    goto :goto_0

    .line 37
    .end local v0    # "videoCp":I
    :pswitch_3
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment - VIDEO MEZZO"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    move-result-object v1

    goto :goto_0

    .line 40
    :pswitch_4
    const-string v1, "AdFragmentFactory-"

    const-string v2, "getFragment - VIDEO INCROSS"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    move-result-object v1

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
