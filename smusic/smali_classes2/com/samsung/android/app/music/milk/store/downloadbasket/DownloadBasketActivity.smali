.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "DownloadBasketActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$TabId;
    }
.end annotation


# static fields
.field public static final KEY_TRACK_IDS:Ljava/lang/String; = "key_track_ids"

.field public static final MAX_COUNT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "DownloadBasketActivity"


# instance fields
.field private mBottomBarMenu:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

.field private mBottomBarMenuItemSelectListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderUpdateListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private final mPageCount:I

.field private mPageFocusListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllCheckListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mPageCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAllCheckListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenuItemSelectListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mPageFocusListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkUnavailable()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "DownloadBasketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkUnavailable activity is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v14

    const-string/jumbo v0, "title"

    aput-object v0, v2, v13

    const-string/jumbo v3, "status_code=?"

    new-array v4, v13, [Ljava/lang/String;

    const-string v0, "01"

    aput-object v0, v4, v14

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, "repTrackTitle":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 398
    .local v7, "count":I
    const v0, 0x7f0a02b3

    .line 399
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 398
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "message":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    if-ne v7, v13, :cond_3

    .line 402
    const v0, 0x7f0a02b2

    .line 403
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    .line 402
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 412
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [J

    .line 413
    .local v8, "ids":[J
    const/4 v9, 0x0

    .local v9, "index":I
    move v10, v9

    .line 415
    .end local v9    # "index":I
    .local v10, "index":I
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v8, v10

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 417
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02b0

    .line 418
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v11}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0146

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$5;

    invoke-direct {v2, p0, v8}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;[J)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "checkUnavailable"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    .end local v7    # "count":I
    .end local v8    # "ids":[J
    .end local v9    # "index":I
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "repTrackTitle":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_0

    if-eqz v5, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 406
    .restart local v7    # "count":I
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v12    # "repTrackTitle":Ljava/lang/String;
    :cond_3
    const v0, 0x7f0a02b1

    .line 407
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v7, -0x1

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 406
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 427
    .end local v7    # "count":I
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "repTrackTitle":Ljava/lang/String;
    :cond_4
    const-string v0, "DownloadBasketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkUnavailable verfiedTracks size is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 391
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_4
    if-eqz v6, :cond_5

    if-eqz v5, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_5
    throw v0

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    .restart local v7    # "count":I
    .restart local v8    # "ids":[J
    .restart local v9    # "index":I
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v12    # "repTrackTitle":Ljava/lang/String;
    :cond_8
    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_2
.end method

.method private initBottomBarMenu()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "builder":Landroid/support/v7/view/menu/MenuBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f130001

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    move-object v1, v0

    .line 234
    .local v1, "menu":Landroid/view/Menu;
    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    .line 235
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->newInstance(Landroid/app/Activity;Landroid/view/Menu;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenu:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    .line 245
    return-void
.end method

.method private initPage(Lcom/samsung/android/app/music/common/model/UserInfo;)V
    .locals 7
    .param p1, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    const/4 v6, 0x0

    .line 305
    const/4 v1, -0x1

    .line 306
    .local v1, "tabId":I
    if-eqz p1, :cond_1

    const-string v3, "1"

    iget-object v4, p1, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    const/4 v1, 0x0

    .line 314
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initTabEnable(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->setCurrentItem(I)V

    .line 316
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 317
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getBasketALCTrackTitleArray(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 318
    .local v0, "alcTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 319
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02a7

    .line 321
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a029a

    .line 323
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 322
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const-string v4, "946"

    .line 324
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0146

    const-string v5, "9436"

    new-instance v6, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    .line 325
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a008a

    const-string v5, "9435"

    .line 332
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v3

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "IndividualOnly"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 337
    .end local v0    # "alcTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 308
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "1"

    iget-object v4, p1, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    const/4 v1, 0x1

    goto :goto_0

    .line 311
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private initSelectAll()V
    .locals 4

    .prologue
    const v3, 0x7f0a02b7

    const/4 v2, 0x0

    .line 206
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 209
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 212
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 213
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_0
    return-void
.end method

.method private initTabEnable(Lcom/samsung/android/app/music/common/model/UserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    const/4 v2, 0x0

    .line 352
    if-eqz p1, :cond_1

    .line 353
    const-string v0, "1"

    iget-object v1, p1, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabEnabled(IZ)V

    .line 356
    :cond_0
    const-string v0, "1"

    iget-object v1, p1, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$PurchasedTracks;->getCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabEnabled(IZ)V

    .line 361
    :cond_1
    return-void
.end method

.method private notifyHeaderUpdated(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "tabId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHeaderUpdateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;

    .line 434
    .local v0, "l":Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;->initHeader(Ljava/util/ArrayList;)V

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeaderUpdateListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V
    .locals 1
    .param p1, "tabId"    # I
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHeaderUpdateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public addOnBottomBarMenuSelectListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)V
    .locals 1
    .param p1, "tabId"    # I
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenuItemSelectListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public addOnPageFocusListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;)V
    .locals 1
    .param p1, "tabId"    # I
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mPageFocusListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;->onPageFocused(Z)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnSelectAllCheckListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;)V
    .locals 1
    .param p1, "tabId"    # I
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAllCheckListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 365
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 366
    if-nez p3, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initPage(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    .line 368
    instance-of v5, p4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    if-eqz v5, :cond_2

    move-object v1, p4

    .line 369
    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    .line 370
    .local v1, "info":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->getSubscriptionList()Ljava/util/ArrayList;

    move-result-object v3

    .line 371
    .local v3, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 372
    const/4 v5, 0x1

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->notifyHeaderUpdated(ILjava/util/ArrayList;)V

    .line 374
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->getDrmSubscription()Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    move-result-object v0

    .line 375
    .local v0, "drmSubscription":Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;->toSimpleSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    move-result-object v2

    .line 377
    .local v2, "simpleSubscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->notifyHeaderUpdated(ILjava/util/ArrayList;)V

    .line 381
    .end local v2    # "simpleSubscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    .end local v4    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->checkUnavailable()V

    .line 384
    .end local v0    # "drmSubscription":Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
    .end local v3    # "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v1, 0x7f04005a

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->setContentView(I)V

    .line 168
    const v1, 0x7f120055

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketPagerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    const v1, 0x7f12017e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initMiniPlayer()V

    .line 179
    instance-of v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V

    .line 181
    invoke-interface {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 188
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHeaderUpdateListeners:Landroid/util/SparseArray;

    .line 189
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenuItemSelectListeners:Landroid/util/SparseArray;

    .line 190
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAllCheckListeners:Landroid/util/SparseArray;

    .line 191
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mPageFocusListeners:Landroid/util/SparseArray;

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initSelectAll()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initBottomBarMenu()V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 196
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_1

    .line 197
    const-string v1, "DownloadBasket"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v3, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchDownloadBasketResponseExecutor;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchDownloadBasketResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 200
    :cond_1
    if-nez p1, :cond_2

    .line 201
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "936"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 203
    :cond_2
    return-void
.end method

.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 292
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->initPage(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 296
    .local v1, "ids":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_track_ids"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->setIntent(Landroid/content/Intent;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->verifyTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 302
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "ids":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public removeHeaderUpdateListener(I)V
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mHeaderUpdateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    return-void
.end method

.method public removeOnBottomBarMenuSelectListener(I)V
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenuItemSelectListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    return-void
.end method

.method public removeOnPageFocusListener(I)V
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mPageFocusListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 162
    return-void
.end method

.method public removeOnSelectAllCheckListener(I)V
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mSelectAllCheckListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 150
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "tabId"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    if-nez p2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenu:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->hide()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->mBottomBarMenu:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->show()V

    goto :goto_0
.end method
