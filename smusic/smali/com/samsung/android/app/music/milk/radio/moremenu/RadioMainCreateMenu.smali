.class public Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;
.super Ljava/lang/Object;
.source "RadioMainCreateMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioMainCreateMenu"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

.field private mContext:Landroid/content/Context;

.field private mCreateMenuView:Landroid/view/View;

.field private mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

.field private mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mHasMyStation:Z

.field private mIsCeleb:Z

.field private mIsDeviceUser:Z

.field private mIsPersonalStation:Z

.field private mIsSeedUsable:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p5, "radioService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsDeviceUser:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsSeedUsable:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsPersonalStation:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsCeleb:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mMainHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    .line 70
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 71
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110141

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mPrimaryColor:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->initOptionPopupList()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->updateButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->hasStationInMystation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    return-object v0
.end method

.method private getSmartStationIDInMyStation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "stationName"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "ret":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "RadioMainCreateMenu"

    const-string v2, "hasStationByStatinName : station Name is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getSmartStationIDInMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasInMyStation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "RadioMainCreateMenu"

    const-string v1, "hasStation : station id is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStationInMyStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private hasSmartStationInMyStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "stationName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    const-string v2, "RadioMainCreateMenu"

    const-string v3, "hasStationByStatinName : station Name is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getSmartStationIDInMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hasStationInMystation()Z
    .locals 4

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "stationName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->hasSmartStationInMyStation(Ljava/lang/String;)Z

    move-result v0

    .line 420
    .end local v2    # "stationName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "stationID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 412
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->hasInMyStation(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private initOptionPopupList()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f130028

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;-><init>(Landroid/content/Context;ILandroid/view/View;Ljava/util/HashMap;Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setRightPopup(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setPrimaryColor(I)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f02016a

    .line 104
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setOnMenuItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    return-void
.end method

.method private initValue(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 4
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    const/4 v3, 0x0

    .line 370
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    .line 371
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsSeedUsable:Z

    .line 372
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsPersonalStation:Z

    .line 373
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsCeleb:Z

    .line 374
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 376
    .local v0, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 378
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsDeviceUser:Z

    .line 382
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 383
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getCurrentStaationForMenu()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 386
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getCurrentTrackForMenu()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->hasStationInMystation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    .line 391
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isPersonalStation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsPersonalStation:Z

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->isSeedUsable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsSeedUsable:Z

    .line 395
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsCeleb:Z

    .line 398
    :cond_4
    const-string v1, "RadioMainCreateMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initValue : mHasMyStation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsSeedUsable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsSeedUsable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private isDeepLinkStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currStationID"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private updateButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x7f12033e

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$7;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034a

    .line 328
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a032f

    .line 330
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$8;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateMenuView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public isEnableMenuItem(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibleMenuItem(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 124
    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsSeedUsable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsCeleb:Z

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 128
    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsCeleb:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 131
    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 134
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mHasMyStation:Z

    goto :goto_0

    .line 137
    :pswitch_4
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsDeviceUser:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 140
    :pswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mIsPersonalStation:Z

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f1205dd
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MenuItem;

    .line 149
    .local v11, "item":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-interface {v11}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 213
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$5;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 238
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 213
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9141"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$2;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 165
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 166
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 167
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Track;->isExplicit()Z

    move-result v9

    .line 155
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9142"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$3;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 183
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 173
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZ)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9143"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 191
    .local v15, "tempTrack":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/Track;->setForceAudioUrlNull()V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 194
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$4;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToPlaylitst(Landroid/app/Activity;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 207
    .end local v15    # "tempTrack":Lcom/samsung/android/app/music/common/model/Track;
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9144"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_0

    .line 245
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v13, "stationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v14

    .line 248
    .local v14, "stationName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->getSmartStationIDInMyStation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 249
    .local v12, "smartStationID":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 250
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v12    # "smartStationID":Ljava/lang/String;
    .end local v14    # "stationName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 262
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    invoke-virtual {v1, v2, v3, v4, v13}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->removeStationFromMyStations(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 278
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9145"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .restart local v12    # "smartStationID":Ljava/lang/String;
    .restart local v14    # "stationName":Ljava/lang/String;
    :cond_3
    const-string v1, "RadioMainCreateMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick : Try to remove Smart Station in MyStation But can not find smartStation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v12    # "smartStationID":Ljava/lang/String;
    .end local v14    # "stationName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v13    # "stationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 284
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v10, "args":Landroid/os/Bundle;
    const-string v1, "STATION_ID_KEY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 286
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "STATION_TITLE_KEY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 288
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    .line 290
    invoke-virtual {v1, v2, v10}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 294
    .end local v10    # "args":Landroid/os/Bundle;
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9146"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_5
    const-string v1, "RadioMainCreateMenu"

    const-string/jumbo v2, "onItemClick : Edit Station has no Station ID"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205dd
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 109
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mPrimaryColor:I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->onPrimaryColorChanged(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mCreateOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->dismiss()V

    .line 80
    :cond_0
    return-void
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 2
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->initValue(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
