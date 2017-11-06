.class public Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;
.super Ljava/lang/Object;
.source "DialOptionBtnHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialOptionBtnHandler"


# instance fields
.field private mBackgroundHanlder:Landroid/os/Handler;

.field private mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

.field private mContext:Landroid/content/Context;

.field private mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

.field private mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

.field private mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

.field private mLastRunnable:Ljava/lang/Runnable;

.field private mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/app/FragmentManager;)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p5, "radioService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mContext:Landroid/content/Context;

    .line 50
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 51
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 53
    const v2, 0x7f120337

    .line 54
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 55
    .local v16, "mainOptionsView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .line 57
    const v2, 0x7f120339

    .line 58
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 59
    .local v5, "mainDownloadView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .line 62
    const v2, 0x7f12033b

    .line 63
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 64
    .local v8, "mainFavoriteView":Landroid/view/ViewGroup;
    new-instance v6, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .line 68
    const v2, 0x7f12033d

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 70
    .local v12, "mainCreateView":Landroid/view/ViewGroup;
    new-instance v9, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v10, p1

    move-object/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .line 73
    const v2, 0x7f120314

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 76
    .local v15, "lyricTouchArea":Landroid/view/ViewGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 77
    new-instance v3, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-direct {v3, v2, v15, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .line 81
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "option_btn_updater"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mThread:Landroid/os/HandlerThread;

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    return-object v0
.end method


# virtual methods
.method public btnDisable()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public checkShareStation()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->checkShareStation()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeMoreMenu()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->closeMoreMenu()V

    .line 207
    :cond_0
    return-void
.end method

.method public isCurFavorite()Z
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->isCurFavorite()Z

    move-result v1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDownloadEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->isDownloadEnable()Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLyricLoadFinish()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->isLoadFinished()Z

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionMenuOpened()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public launchAblumDeteail()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->launchAlbumDetail()V

    .line 284
    :cond_0
    return-void
.end method

.method public launchArtistDetail()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->launchArtistDetail()V

    .line 270
    :cond_0
    return-void
.end method

.method public launchDownload()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mDownloadMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->launchDownload()V

    .line 256
    :cond_0
    return-void
.end method

.method public launchLyric()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->launchLyric()V

    .line 311
    :cond_0
    return-void
.end method

.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->onPrimaryColorChanged(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->onPrimaryColorChanged(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updatePrimaryColor(I)V

    .line 146
    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/compat/HandlerThreadCompat;->quit(Landroid/os/HandlerThread;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mCreateMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->release()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->release()V

    .line 94
    :cond_1
    return-void
.end method

.method public setFavorite()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->clickFavoriteBtn(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public setFavoriteUndo()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mFavoriteMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->clickFavoriteBtn(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public setLyricFinishCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 1
    .param p1, "finishCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setLyricVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->setVisibility(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public shareStation()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->shareSataion()V

    .line 242
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public showMoreMenu()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->showMoreMenu()V

    .line 201
    :cond_0
    return-void
.end method

.method public supportAlbumDetail()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->supportAlbumDetail()Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportArtistDetail()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mOptionMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->supportArtistDetail()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportLyric()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLyricMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->supportLyric()Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V
    .locals 2
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "isLoginUser"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public updateBtnStatus(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$3;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public updateCreateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 2
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mBackgroundHanlder:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
