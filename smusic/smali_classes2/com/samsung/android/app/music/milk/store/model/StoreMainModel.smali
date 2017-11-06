.class public Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;,
        Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;,
        Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NumberDescendCompare;,
        Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;
    }
.end annotation


# static fields
.field public static final CACHE_KEY_MAIN_VIEW:Ljava/lang/String; = "store_main_view"

.field private static final CACHE_NAME:Ljava/lang/String; = "StoreMainCache"

.field private static final CACHE_SIZE:I = 0x19000

.field private static final DEBUG_RUNTIME_TEST:Z = false

.field private static final INTENT_ALARM_ACTION:Ljava/lang/String; = "com.samsung.milk.alarm.store.main.update_new_release"

.field private static final TAG:Ljava/lang/String; = "StoreMainModel"

.field private static TEST_MODE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE; = null

.field public static final UPDATE_INTERVAL_NEW_RELEASE:J = 0xa8c0L

.field public static final UPDATE_INTERVAL_TOP_CHART:J = 0x258L

.field private static testSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomCategoryGenreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;",
            ">;"
        }
    .end annotation
.end field

.field mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

.field private mNewReleaseUpdateInterval:J

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

.field private mTopChartUpdateInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_REORDER:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->TEST_MODE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->testSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mContext:Landroid/content/Context;

    .line 90
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mTopChartUpdateInterval:J

    .line 91
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mNewReleaseUpdateInterval:J

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->updateModelFromResponseModel(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->updateModelFromResponseModel(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Landroid/content/Context;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->setAlarm(Landroid/content/Context;JJ)V

    return-void
.end method

.method private closeCache()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "StoreMainModel"

    const-string v1, "closeCache : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->close()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    .line 329
    :cond_0
    return-void
.end method

.method private filteredBannerListFromUserType(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v2, "filteredNewBannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    if-eqz p1, :cond_3

    .line 512
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    .line 513
    .local v0, "banner":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getBannerType()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "bannerType":Ljava/lang/String;
    const-string v4, "100"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_1
    const-string v4, "101"

    .line 517
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 519
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_2
    const-string v4, "102"

    .line 523
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 525
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 526
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    .end local v0    # "banner":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    .end local v1    # "bannerType":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private getSelectedGenres()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 572
    const/4 v8, 0x0

    .line 574
    .local v8, "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    const/4 v6, 0x0

    .line 578
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "genre_order ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 589
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 590
    const-string v0, "StoreMainModel"

    const-string v1, "getSelectedGenres : cursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 608
    :goto_1
    return-object v0

    .line 581
    :catch_0
    move-exception v7

    .line 582
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    if-eqz v6, :cond_0

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 585
    const/4 v6, 0x0

    goto :goto_0

    .line 592
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 594
    const-string v0, "StoreMainModel"

    const-string v1, "getSelectedGenres : cursor count 0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 595
    goto :goto_1

    .line 598
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .restart local v8    # "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    :cond_3
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;->createGenreInforWithOrderFromDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;

    move-result-object v9

    .line 602
    .local v9, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 606
    .end local v9    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 608
    goto :goto_1
.end method

.method private isCachedData()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string/jumbo v1, "store_main_view"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidGroup(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z
    .locals 5
    .param p1, "group"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v0

    .line 544
    .local v0, "type":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    if-nez v0, :cond_1

    move v1, v2

    .line 568
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 548
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$8;->$SwitchMap$com$samsung$android$app$music$milk$store$StoreMainConstant$StoreMainGroupType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 568
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 556
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 564
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 565
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openCache()Z
    .locals 8

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "isOpen":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    if-nez v2, :cond_1

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 304
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "StoreMainCache"

    const-wide/32 v6, 0x19000

    .line 303
    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->open(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    .line 305
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    .line 311
    const/4 v1, 0x0

    .line 312
    const-string v2, "StoreMainModel"

    const-string v3, "openCache : Open cache exception"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x1

    .line 316
    const-string v2, "StoreMainModel"

    const-string v3, "openCache : already opened"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseAlarm(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 688
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 690
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.milk.alarm.store.main.update_new_release"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 692
    .local v2, "pIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 693
    return-void
.end method

.method private removeInvalidGroupContents(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z
    .locals 4
    .param p1, "group"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    if-ne v2, v3, :cond_0

    .line 496
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    .line 498
    .local v0, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->filteredBannerListFromUserType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "filteredNewBannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setBannerList(Ljava/util/List;)V

    .line 501
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 502
    const/4 v2, 0x0

    .line 506
    .end local v0    # "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    .end local v1    # "filteredNewBannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;JJ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "curTime"    # J
    .param p4, "interval"    # J

    .prologue
    const/4 v2, 0x0

    .line 680
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 682
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.samsung.milk.alarm.store.main.update_new_release"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 684
    .local v6, "sender":Landroid/app/PendingIntent;
    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 685
    return-void
.end method

.method private testPartialMix(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->testPartialRemove(Ljava/util/List;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->testPartialUpdate(Ljava/util/List;)V

    .line 359
    return-void
.end method

.method private testPartialRemove(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 363
    .local v3, "size":I
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getRandNum(I)I

    move-result v1

    .line 365
    .local v1, "randNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 366
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 367
    .local v4, "tempSize":I
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getRandNum(I)I

    move-result v2

    .line 368
    .local v2, "randUpdatedNum":I
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    const-string v5, "StoreMainModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DEBUG_PARTIAL_REMOVE : removed group index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "randUpdatedNum":I
    .end local v4    # "tempSize":I
    :cond_0
    return-void
.end method

.method private testPartialReorder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 354
    return-void
.end method

.method private testPartialUpdate(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 375
    .local v12, "size":I
    invoke-static {v12}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getRandNum(I)I

    move-result v9

    .line 377
    .local v9, "randNum":I
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 378
    .local v15, "updatedGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v8

    .line 379
    .local v8, "groupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    const/4 v10, 0x0

    .line 380
    .local v10, "randUpdatedNum":I
    sget-object v18, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_0

    sget-object v18, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 382
    :cond_0
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getRandNum(I)I

    move-result v10

    .line 384
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    .line 385
    .local v2, "banner":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, "srcUrl":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Updated image url "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->setImageUrl(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    .line 388
    .local v17, "updatedUrl":Ljava/lang/String;
    const-string v18, "StoreMainModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MODEL_PARTIAL_UPDATE : Src url"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "   updated url : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v2    # "banner":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    .end local v3    # "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    .end local v14    # "srcUrl":Ljava/lang/String;
    .end local v17    # "updatedUrl":Ljava/lang/String;
    :goto_0
    const-string v18, "StoreMainModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MODEL_PARTIAL_UPDATE : updated group index : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "   updated item index : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm:ss"

    sget-object v19, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 405
    .local v11, "simpleDate":Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "curTime":Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 407
    .local v6, "curDate":Ljava/util/Date;
    invoke-virtual {v15, v6}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setUpdateDate(Ljava/util/Date;)V

    .line 408
    return-void

    .line 391
    .end local v6    # "curDate":Ljava/util/Date;
    .end local v7    # "curTime":Ljava/lang/String;
    .end local v11    # "simpleDate":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v5

    .line 392
    .local v5, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getRandNum(I)I

    move-result v10

    .line 393
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 394
    .local v4, "content":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v13

    .line 395
    .local v13, "srcContentTitle":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Updated title"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->setContentTitle(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v16

    .line 397
    .local v16, "updatedTitle":Ljava/lang/String;
    const-string v18, "StoreMainModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MODEL_PARTIAL_UPDATE : Src title"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "   updated title : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private testRuntimeTest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    return-void
.end method

.method private updateModelFromResponseModel(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z
    .locals 6
    .param p1, "responseModel"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const/4 v3, 0x0

    .line 412
    if-nez p2, :cond_0

    .line 413
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "updateModelFromResponseModel : Dest group is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_0
    return v3

    .line 417
    :cond_0
    if-nez p1, :cond_1

    .line 418
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "updateModelFromResponseModel : ResponseModel is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    if-nez v0, :cond_2

    .line 424
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "updateModelFromResponseModel : DisplayList is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 429
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "updateModelFromResponseModel : DisplayList is 0"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getCategoryGenreList()Ljava/util/List;

    move-result-object v2

    .line 435
    .local v2, "musicCategoryGenreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 437
    .local v1, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    const-string v4, "9"

    .line 438
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 439
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setCategoryGenreList(Ljava/util/List;)V

    goto :goto_1

    .line 444
    .end local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->updateModelFromResponseModel(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method private declared-synchronized updateModelFromResponseModel(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    monitor-enter p0

    const/4 v4, 0x0

    .line 458
    .local v4, "isUpdated":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 460
    .local v1, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayGroup()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "groupTypeStr":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "displayTypeStr":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;->fromServerGroupTypeToCategoryType(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v5

    .line 464
    .local v5, "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)V

    .line 465
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayUpdDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setUpdateDate(Ljava/util/Date;)V

    .line 467
    const-string v7, "9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 468
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 469
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setCategoryGenreList(Ljava/util/List;)V

    .line 473
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->isValidGroup(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 474
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->removeInvalidGroupContents(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    move-result v3

    .line 475
    .local v3, "hasValidContents":Z
    if-eqz v3, :cond_2

    .line 476
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    .end local v0    # "displayTypeStr":Ljava/lang/String;
    .end local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v2    # "groupTypeStr":Ljava/lang/String;
    .end local v3    # "hasValidContents":Z
    .end local v5    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 478
    .restart local v0    # "displayTypeStr":Ljava/lang/String;
    .restart local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .restart local v2    # "groupTypeStr":Ljava/lang/String;
    .restart local v3    # "hasValidContents":Z
    .restart local v5    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_2
    :try_start_1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    .end local v0    # "displayTypeStr":Ljava/lang/String;
    .end local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v2    # "groupTypeStr":Ljava/lang/String;
    .end local v3    # "hasValidContents":Z
    .end local v5    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 484
    const/4 v4, 0x1

    .line 486
    new-instance v6, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NumberDescendCompare;

    invoke-direct {v6}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NumberDescendCompare;-><init>()V

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :goto_1
    monitor-exit p0

    return v4

    .line 488
    :cond_4
    :try_start_2
    const-string v6, "StoreMainModel"

    const-string/jumbo v7, "updateModelFromResponseModel : Updated groups is none"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getNewReleaseBaseUpdateTime()J
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 797
    const-wide/32 v2, 0xa8c0

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mNewReleaseUpdateInterval:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 798
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 799
    .local v0, "curTime":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 800
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 804
    :goto_0
    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 805
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 806
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 811
    :goto_1
    return-wide v2

    .line 802
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 808
    .end local v0    # "curTime":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 810
    .restart local v0    # "curTime":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mNewReleaseUpdateInterval:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 809
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 811
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_1
.end method

.method public getNewReleaseUpdateInterval()J
    .locals 2

    .prologue
    .line 793
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mNewReleaseUpdateInterval:J

    return-wide v0
.end method

.method public getTopChartUpdateInterval()J
    .locals 2

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mTopChartUpdateInterval:J

    return-wide v0
.end method

.method public loadCache()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v3, "StoreMainModel"

    const-string v4, "loadCache : in"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "tempDataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->openCache()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    const-string v3, "StoreMainModel"

    const-string v4, "loadCache : fail to open cache"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-object v2

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->isCachedData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    const-string v3, "StoreMainModel"

    const-string v4, "loadCache : fail to exist cache"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string/jumbo v3, "store_main_view"

    const-class v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 263
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 271
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 272
    :cond_2
    const-string v2, "StoreMainModel"

    const-string v3, "loadCache : No cache"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string/jumbo v3, "store_main_view"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->remove(Ljava/lang/String;)Z

    :goto_2
    move-object v2, v1

    .line 278
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->closeCache()V

    .line 268
    const-string v2, "StoreMainModel"

    const-string v3, "loadCache : Get cache exception"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const-string v2, "StoreMainModel"

    const-string v3, "loadCache : success to get cache"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onAttachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .line 97
    return-void
.end method

.method public onDetachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->closeCache()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .line 108
    return-void
.end method

.method public prepareCustomMusicCategoryData()V
    .locals 8

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->getSelectedGenres()Ljava/util/ArrayList;

    move-result-object v0

    .line 614
    .local v0, "genreInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfoWithOrder;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 615
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    .line 617
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 618
    .local v1, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 619
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mCustomCategoryGenreList:Ljava/util/ArrayList;

    .line 625
    :cond_1
    return-void
.end method

.method public registerUpdateNewReleaseAlarm()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$4;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V

    .line 671
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public registerUpdateTopChartAlarm()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    const-string v1, "StoreMainModel"

    const-string/jumbo v2, "registerUpdateTopChartAlarm : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->getTopChartUpdateInterval()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 644
    .local v0, "interval":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v1}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/lang/Long;)V

    .line 645
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public requestNewReleaseGroup()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->requestTopNewUpdate(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public requestStoreDetailGroup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 6
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "displayGroup"    # Ljava/lang/String;
    .param p4, "displayType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public requestStoreMainGroups()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    const-string v1, "StoreMainModel"

    const-string/jumbo v2, "requestStoreMainGroups : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->prepareCustomMusicCategoryData()V

    .line 116
    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V

    .line 117
    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 235
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public requestTopGroup()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->requestTopNewUpdate(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public requestTopNewUpdate(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Lrx/Observable;
    .locals 4
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    const-string v1, "StoreMainModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTopNewUpdate : in -- Group type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreServerConstant;->fromCategoryTypeToServerGroupType(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "displayGroup":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/lang/String;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public saveCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "storeMainGroups":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const-string v1, "StoreMainModel"

    const-string/jumbo v2, "saveCache : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->mMainCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string/jumbo v2, "store_main_view"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->set(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->closeCache()V

    .line 290
    const-string v1, "StoreMainModel"

    const-string/jumbo v2, "saveCache : set cache exception"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
