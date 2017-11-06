.class public Lcom/mapps/android/view/AdInterstitialView;
.super Landroid/view/View;
.source "AdInterstitialView.java"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;,
        Lcom/mapps/android/view/AdInterstitialView$VIEWSTYLE;
    }
.end annotation


# instance fields
.field FailedToReceiveHandler:Landroid/os/Handler;

.field private FlickerReceiver:Landroid/content/BroadcastReceiver;

.field private final IO_BUFFER_SIZE:I

.field private final MEZZO_DIRECTORY:Ljava/lang/String;

.field private final MEZZO_IMAGE:Ljava/lang/String;

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field private adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

.field private click_option:Ljava/lang/String;

.field private commonHandler:Landroid/os/Handler;

.field private dir:Ljava/lang/String;

.field initHandler:Landroid/os/Handler;

.field private interConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private interCustomActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private isErrorState:Z

.field private mAdListner:Lcom/mapps/android/listner/AdListner;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

.field final mHandler:Landroid/os/Handler;

.field private mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

.field private mIsGPSUse:Z

.field private mPathType:Ljava/lang/String;

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private mclickActionType:Ljava/lang/String;

.field private mclickURL:Ljava/lang/String;

.field private media_type:I

.field private mhouse:Ljava/lang/String;

.field private nt:Lcom/mezzo/common/network/Nt;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

.field private res_inleft:I

.field private res_inright:I

.field private res_outleft:I

.field private res_outright:I

.field public uudi_key:Ljava/lang/String;

.field private viewStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->uudi_key:Ljava/lang/String;

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mclickActionType:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mclickURL:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mhouse:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mPathType:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->click_option:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    .line 69
    iput-boolean v2, p0, Lcom/mapps/android/view/AdInterstitialView;->mDebug:Z

    .line 70
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    .line 76
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 77
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

    .line 78
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    const/16 v0, 0x1000

    iput v0, p0, Lcom/mapps/android/view/AdInterstitialView;->IO_BUFFER_SIZE:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    .line 87
    iput-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 89
    const-string v0, "/mezzo/"

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 90
    const-string v0, "image"

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z

    .line 96
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->interCustomActivity:Ljava/lang/Class;

    .line 103
    iput v3, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    .line 125
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$1;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->initHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$2;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->commonHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$3;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mHandler:Landroid/os/Handler;

    .line 309
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$4;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 420
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$5;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->interConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 524
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$6;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$7;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$7;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method private ImgDelAfterDateCheck(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 940
    const-string v3, "ImgDelAfterDateCheck  "

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename 1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 942
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 943
    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime_float"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 944
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 946
    .local v1, "savedtime":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename 2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 947
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "savedtime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 950
    const/4 v2, 0x1

    .line 953
    :cond_0
    return v2
.end method

.method private SendRequestInterstitial(IZ)V
    .locals 3
    .param p1, "div"    # I
    .param p2, "next"    # Z

    .prologue
    .line 488
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView$15;-><init>(Lcom/mapps/android/view/AdInterstitialView;IZ)V

    .line 503
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdInterstitialView$16;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdInterstitialView$16;-><init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 521
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 522
    return-void
.end method

.method private SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "enddatetime"    # Ljava/lang/String;

    .prologue
    .line 957
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 958
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 959
    .local v1, "endtime":Ljava/lang/Long;
    const-string v3, "SetPreference  "

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endtime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 962
    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime_float"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 963
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 964
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 965
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    return-void
.end method

.method private StartinterstitialView(IZLjava/lang/String;III)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "bnext"    # Z
    .param p3, "viewinfo"    # Ljava/lang/String;
    .param p4, "mediatype"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    .line 633
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$19;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mapps/android/view/AdInterstitialView$19;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;IIZII)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 664
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 665
    return-void
.end method

.method private StartinterstitialView(ZLjava/lang/String;III)V
    .locals 7
    .param p1, "bcheck"    # Z
    .param p2, "viewinfo"    # Ljava/lang/String;
    .param p3, "mediatype"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 596
    if-eqz p1, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    .line 602
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$18;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView$18;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;III)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 628
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 629
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->common(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mclickURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdInterstitialView;IZ)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->requestUseSSp(IZ)V

    return-void
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTInterstitial;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/view/AdInterstitialView;->requestNotSSp(IZLcom/mezzo/common/network/data/DataNTInterstitial;)V

    return-void
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/listner/AdListner;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdInterstitialView;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    return-void
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdInterstitialView;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mDebug:Z

    return-void
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdInterstitialView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->commonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdInterstitialView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    return v0
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdInterstitialView;IZ)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->requestShowInterstitial(IZ)V

    return-void
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdInterstitialView;Z)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->requestShowFrontView(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTSSP;IZ)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/view/AdInterstitialView;->requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;IZ)V

    return-void
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/data/DataNTInterstitial;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 409
    invoke-direct/range {p0 .. p5}, Lcom/mapps/android/view/AdInterstitialView;->requestSsplView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/Nt;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    return-void
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/Nt;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    return-object v0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdInterstitialView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mDebug:Z

    return v0
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->interConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    return-object v0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/listner/AdInterstitalListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

    return-object v0
.end method

.method static synthetic access$37(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterFlickerReceiver()V

    return-void
.end method

.method static synthetic access$38(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->requestInterstitialView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$39(Lcom/mapps/android/view/AdInterstitialView;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->res_inright:I

    return v0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdInterstitialView;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->flickerTypeListneronFlickerType(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/AdInterstitialView;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->res_outright:I

    return v0
.end method

.method static synthetic access$41(Lcom/mapps/android/view/AdInterstitialView;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->res_inleft:I

    return v0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/AdInterstitialView;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->res_outleft:I

    return v0
.end method

.method static synthetic access$43(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdInterstitialView;I)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTInterstitial;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mPathType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->click_option:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mclickActionType:Ljava/lang/String;

    return-void
.end method

.method private common(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$8;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$8;-><init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    :cond_0
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 971
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 974
    return-void

    .line 972
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private flickerTypeListneronFlickerType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    invoke-interface {v0, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;->onFlickerType(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "ADSDK"

    const-string v1, "mFlickerTypeListner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mDebug:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "ADSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method private onFailedToReceive(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 538
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 539
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 540
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->FailedToReceiveHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 541
    return-void
.end method

.method private registerFlickerReceiver()V
    .locals 4

    .prologue
    .line 548
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mapps.android.action.FLICKER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/mapps/android/view/AdInterstitialView$17;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdInterstitialView$17;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    :try_start_0
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterFlickerReceiver()V

    goto :goto_0
.end method

.method private requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;IZ)V
    .locals 10
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p2, "div"    # I
    .param p3, "next"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 369
    invoke-direct {p0, v5}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    .line 370
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 371
    .local v6, "codetype":I
    if-nez v6, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView;->requestSsplView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    .line 386
    :goto_0
    return-void

    .line 373
    :cond_0
    if-ne v9, v6, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getAdm()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView;->requestSsplView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "img_path":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "urlSplit":[Ljava/lang/String;
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v5, v8, v0

    .line 379
    .local v5, "img_name":Ljava/lang/String;
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$14;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView$14;-><init>(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-direct {p0, v7, v5, v0}, Lcom/mapps/android/view/AdInterstitialView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 849
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mapps/android/view/AdInterstitialView$25;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 855
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 857
    :cond_0
    return-void
.end method

.method private requestInterstitialView(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 741
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 742
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method private requestNotSSp(IZLcom/mezzo/common/network/data/DataNTInterstitial;)V
    .locals 8
    .param p1, "div"    # I
    .param p2, "next"    # Z
    .param p3, "data"    # Lcom/mezzo/common/network/data/DataNTInterstitial;

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p3}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListInterAD;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    invoke-virtual {p3}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataListInterAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v7

    check-cast v7, Lcom/mezzo/common/network/data/DataInterAD;

    .line 391
    .local v7, "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    .line 392
    const/4 v4, 0x0

    .line 393
    .local v4, "mediaType":I
    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataInterAD;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataInterAD;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataInterAD;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdInterstitialView;->requestStartinterstitialView(IZLjava/lang/String;III)V

    .line 396
    .end local v4    # "mediaType":I
    .end local v7    # "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    :cond_0
    return-void
.end method

.method private requestShow(IZ)V
    .locals 2
    .param p1, "div"    # I
    .param p2, "state"    # Z

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->SendRequestInterstitial(IZ)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto :goto_0
.end method

.method private requestShowFrontView(Z)V
    .locals 2
    .param p1, "bnext"    # Z

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    if-nez v1, :cond_0

    .line 245
    const/16 v1, -0x3e8

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/mapps/android/view/AdInterstitialView;->requestShow(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestShowInterstitial(IZ)V
    .locals 1
    .param p1, "div"    # I
    .param p2, "state"    # Z

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    if-nez v0, :cond_0

    .line 215
    const/16 v0, -0x3e8

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->requestShow(IZ)V

    goto :goto_0
.end method

.method private requestSsplView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 6
    .param p1, "div"    # I
    .param p2, "next"    # Z
    .param p3, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p4, "viewinfo"    # Ljava/lang/String;
    .param p5, "mediaType"    # I

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    .line 418
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mapps/android/view/AdInterstitialView;->sSPView(ZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    .line 415
    :pswitch_2
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView;->sSPView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private requestStartinterstitialView(IZLjava/lang/String;III)V
    .locals 7
    .param p1, "div"    # I
    .param p2, "next"    # Z
    .param p3, "viewInfo"    # Ljava/lang/String;
    .param p4, "mediaType"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 401
    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdInterstitialView;->StartinterstitialView(ZLjava/lang/String;III)V

    goto :goto_0

    .line 404
    :pswitch_2
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdInterstitialView;->StartinterstitialView(IZLjava/lang/String;III)V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private requestUseSSp(IZ)V
    .locals 17
    .param p1, "div"    # I
    .param p2, "next"    # Z

    .prologue
    .line 325
    new-instance v3, Lcom/mezzo/common/network/Nt;

    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/view/AdInterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 328
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/mapps/android/network/ParamManager;

    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "java"

    invoke-virtual/range {v3 .. v12}, Lcom/mapps/android/network/ParamManager;->getParamSSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 329
    .local v15, "url":Ljava/lang/String;
    new-instance v14, Lcom/mezzo/common/network/request/RequestSSP;

    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v14, v3, v15, v4}, Lcom/mezzo/common/network/request/RequestSSP;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 330
    .local v14, "requestSSP":Lcom/mezzo/common/network/request/RequestSSP;
    new-instance v3, Lcom/mapps/android/view/AdInterstitialView$13;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v3, v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView$13;-><init>(Lcom/mapps/android/view/AdInterstitialView;IZ)V

    invoke-virtual {v14, v3}, Lcom/mezzo/common/network/request/RequestSSP;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v14    # "requestSSP":Lcom/mezzo/common/network/request/RequestSSP;
    .end local v15    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v13

    .line 362
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/mapps/android/view/AdInterstitialView;->requestNotSSp(IZLcom/mezzo/common/network/data/DataNTInterstitial;)V

    .line 363
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sSPView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "bnext"    # Z
    .param p3, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p4, "viewinfo"    # Ljava/lang/String;
    .param p5, "mediatype"    # I

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    .line 706
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$21;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdInterstitialView$21;-><init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;IIZ)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 737
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 738
    return-void
.end method

.method private sSPView(ZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 2
    .param p1, "bcheck"    # Z
    .param p2, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p3, "viewinfo"    # Ljava/lang/String;
    .param p4, "mediatype"    # I

    .prologue
    .line 668
    if-eqz p1, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    .line 674
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$20;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/mapps/android/view/AdInterstitialView$20;-><init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 701
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 702
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerFlickerReceiver()V

    goto :goto_0
.end method

.method private startService(Ljava/util/concurrent/Callable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "fun":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/AdInterstitialView$9;

    invoke-direct {v3, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$9;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto :goto_0
.end method

.method private unregisterFlickerReceiver()V
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected ImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 24
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 861
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z

    .line 864
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 866
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 869
    .local v13, "filelist":[Ljava/io/File;
    if-eqz v13, :cond_0

    .line 870
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v15, v0, :cond_2

    .line 887
    .end local v15    # "i":I
    :cond_0
    :try_start_0
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 888
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 889
    .local v6, "connection":Ljava/net/URLConnection;
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mapps/android/share/ShareUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v14

    .line 890
    .local v14, "header":Ljava/lang/String;
    const-string v21, "User-Agent"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/16 v21, 0xfa0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 892
    const/16 v21, 0xbb8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 893
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 894
    .local v18, "isText":Ljava/io/InputStream;
    new-instance v16, Ljava/io/BufferedInputStream;

    const/16 v21, 0x1000

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 896
    .local v16, "in":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 897
    .local v8, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    const/16 v21, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 899
    .local v19, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 900
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 902
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 904
    .local v7, "data":[B
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .local v4, "adFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v21

    if-nez v21, :cond_1

    .line 908
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 909
    .local v12, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v12, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 910
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mezzo/common/network/data/DataListInterAD;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/mezzo/common/network/data/DataListInterAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v17

    check-cast v17, Lcom/mezzo/common/network/data/DataInterAD;

    .line 913
    .local v17, "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    invoke-virtual/range {v17 .. v17}, Lcom/mezzo/common/network/data/DataInterAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    const-string v21, ""

    invoke-virtual/range {v17 .. v17}, Lcom/mezzo/common/network/data/DataInterAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 914
    invoke-virtual/range {v17 .. v17}, Lcom/mezzo/common/network/data/DataInterAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v12    # "fileStream":Ljava/io/FileOutputStream;
    .end local v17    # "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 923
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 932
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 937
    .end local v4    # "adFile":Ljava/io/File;
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v7    # "data":[B
    .end local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "header":Ljava/lang/String;
    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .end local v18    # "isText":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/BufferedOutputStream;
    .end local v20    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 871
    .restart local v15    # "i":I
    :cond_2
    aget-object v21, v13, v15

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->ImgDelAfterDateCheck(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 872
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v13, v15

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 874
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 877
    .end local v10    # "f":Ljava/io/File;
    :cond_3
    aget-object v21, v13, v15

    if-eqz v21, :cond_4

    .line 878
    aget-object v21, v13, v15

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 879
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 870
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 916
    .end local v15    # "i":I
    .restart local v4    # "adFile":Ljava/io/File;
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "data":[B
    .restart local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v14    # "header":Ljava/lang/String;
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v17    # "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    .restart local v18    # "isText":Ljava/io/InputStream;
    .restart local v19    # "out":Ljava/io/BufferedOutputStream;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 917
    .local v5, "cCal":Ljava/util/Calendar;
    const/16 v21, 0x5

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 918
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 924
    .end local v4    # "adFile":Ljava/io/File;
    .end local v5    # "cCal":Ljava/util/Calendar;
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v7    # "data":[B
    .end local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "fileStream":Ljava/io/FileOutputStream;
    .end local v14    # "header":Ljava/lang/String;
    .end local v16    # "in":Ljava/io/BufferedInputStream;
    .end local v17    # "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    .end local v18    # "isText":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/BufferedOutputStream;
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 925
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdInterstitialView;->mDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 927
    const-string v21, "ADSDK"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Failed to grab image : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 932
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 934
    :cond_7
    const/16 v21, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto/16 :goto_2

    .line 930
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdInterstitialView;->isErrorState:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 932
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 936
    :goto_3
    throw v21

    .line 934
    :cond_8
    const/16 v22, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto :goto_3

    .restart local v4    # "adFile":Ljava/io/File;
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "data":[B
    .restart local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "header":Ljava/lang/String;
    .restart local v16    # "in":Ljava/io/BufferedInputStream;
    .restart local v18    # "isText":Ljava/io/InputStream;
    .restart local v19    # "out":Ljava/io/BufferedOutputStream;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_9
    const/16 v21, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto/16 :goto_2
.end method

.method public ShowFrontView(Z)V
    .locals 1
    .param p1, "bnext"    # Z

    .prologue
    .line 257
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$12;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$12;-><init>(Lcom/mapps/android/view/AdInterstitialView;Z)V

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V

    .line 265
    return-void
.end method

.method public ShowInterstitialView()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$10;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$10;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V

    .line 230
    return-void
.end method

.method public ShowInterstitialView_Ad()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$11;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$11;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V

    .line 241
    return-void
.end method

.method public finalize_unregReciver()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->FlickerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterFlickerReceiver()V

    .line 280
    :cond_0
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getInterCustomActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->interCustomActivity:Ljava/lang/Class;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia_type()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    return v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 757
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 758
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStyle()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    return v0
.end method

.method public initalize(IIII)V
    .locals 0
    .param p1, "inright"    # I
    .param p2, "outright"    # I
    .param p3, "inleft"    # I
    .param p4, "outleft"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/mapps/android/view/AdInterstitialView;->res_inright:I

    .line 120
    iput p2, p0, Lcom/mapps/android/view/AdInterstitialView;->res_outright:I

    .line 121
    iput p3, p0, Lcom/mapps/android/view/AdInterstitialView;->res_inleft:I

    .line 122
    iput p4, p0, Lcom/mapps/android/view/AdInterstitialView;->res_outleft:I

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 211
    :cond_0
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public setAdListner(Lcom/mapps/android/listner/AdListner;)V
    .locals 0
    .param p1, "mal"    # Lcom/mapps/android/listner/AdListner;

    .prologue
    .line 780
    if-eqz p1, :cond_0

    .line 781
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 783
    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "publisher"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    .line 763
    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    .line 764
    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    .line 765
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$22;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$22;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 775
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 777
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public setInterCustomActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "interCustomActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->interCustomActivity:Ljava/lang/Class;

    .line 982
    return-void
.end method

.method public setInterstitalFinish()V
    .locals 2

    .prologue
    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 754
    return-void
.end method

.method public setInterstitalListener(Lcom/mapps/android/listner/AdInterstitalListener;)V
    .locals 0
    .param p1, "ial"    # Lcom/mapps/android/listner/AdInterstitalListener;

    .prologue
    .line 786
    if-eqz p1, :cond_0

    .line 787
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mInterstitalLintener:Lcom/mapps/android/listner/AdInterstitalListener;

    .line 789
    :cond_0
    return-void
.end method

.method public setLoaction(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 818
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$23;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$23;-><init>(Lcom/mapps/android/view/AdInterstitialView;Z)V

    .line 825
    const-string/jumbo v2, "setLoaction"

    .line 818
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 827
    return-void
.end method

.method public setOnFlickerTypeListner(Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;)V
    .locals 0
    .param p1, "sl"    # Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mFlickerTypeListner:Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    .line 749
    :cond_0
    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 830
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$24;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$24;-><init>(Lcom/mapps/android/view/AdInterstitialView;Z)V

    .line 837
    const-string/jumbo v2, "setPakageInfo"

    .line 830
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 838
    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserAge"    # Ljava/lang/String;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    .line 797
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserGender"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    .line 805
    return-void
.end method

.method public setViewStyle(I)V
    .locals 0
    .param p1, "viewStyle"    # I

    .prologue
    .line 989
    iput p1, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    .line 990
    return-void
.end method
