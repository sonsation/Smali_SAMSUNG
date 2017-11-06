.class public Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "ShareFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShareFragment"

.field public static final SHARED_ITEM_KEY:Ljava/lang/String; = "SHARED_ITEM_KEY"

.field public static final SHARED_STATION_KEY:Ljava/lang/String; = "SHARED_STATION_KEY"

.field public static final SHARED_TRACK_KEY:Ljava/lang/String; = "SHARED_TRACK_KEY"

.field public static final SHARED_TYPE:Ljava/lang/String; = "SHARED_TYPE"

.field private static final SHARE_CUSTOMIZED_APPS:[I


# instance fields
.field protected mAllAppsGrid:Landroid/widget/GridView;

.field protected mCloseBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field protected mGridAdapter:Landroid/widget/BaseAdapter;

.field private mIsPackageChanged:Z

.field private mLoading:Landroid/view/View;

.field protected mMoreBtn:Landroid/widget/ImageView;

.field protected mPM:Landroid/content/pm/PackageManager;

.field private mPackageReceiver:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;

.field protected mPackageToSnsInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mShare1Btn:Landroid/widget/ImageView;

.field private mShare2Btn:Landroid/widget/ImageView;

.field private mShare3Btn:Landroid/widget/ImageView;

.field private mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

.field protected mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->SHARE_CUSTOMIZED_APPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x3ec
        0x3e9
        0x3ea
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mIsPackageChanged:Z

    .line 109
    new-instance v0, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/share/country/ShareCountryKR;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->makeShareData(Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->onClickCloseBtn()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->onClickMoreBtn()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mIsPackageChanged:Z

    return p1
.end method

.method private decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 567
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 572
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 568
    .restart local p1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissSelf()V
    .locals 3

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ShareFragment"

    const-string v2, "dismissSelf >> IllegalStateException occurs. Do nothing!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCustomizedAppsInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "snsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    sget-object v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->SHARE_CUSTOMIZED_APPS:[I

    .line 314
    .local v0, "defaultApps":[I
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    :cond_0
    return-object v3

    .line 318
    :cond_1
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v2, v0, v4

    .line 319
    .local v2, "shareItem":I
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getSnsInfo(I)Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    move-result-object v1

    .line 320
    .local v1, "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    if-eqz v1, :cond_2

    .line 321
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    iget-object v7, v1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getDeepLinkCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "encodingDeepLinkURL"    # Ljava/lang/String;

    .prologue
    .line 599
    const/4 v2, 0x0

    .line 601
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    const-string v4, "deeplink="

    .line 602
    .local v4, "startDeepLinkString":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "deeplinkCmd":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 604
    .local v3, "startCmdIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 609
    .end local v0    # "deeplinkCmd":Ljava/lang/String;
    .end local v3    # "startCmdIndex":I
    .end local v4    # "startDeepLinkString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDefaultUsedAppsCount()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x3

    return v0
.end method

.method private getMostRecentlyUsedApps()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v13, "recentsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    new-instance v4, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    .line 269
    .local v4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 270
    .local v5, "currInfo":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    if-eqz v5, :cond_0

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "com.samsung.radio.share.recents"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v14

    .line 274
    .local v14, "recentTime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-lez v17, :cond_0

    .line 275
    iput-wide v14, v5, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    .line 276
    invoke-static {v13, v5, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v11

    .line 278
    .local v11, "insert":I
    if-gez v11, :cond_0

    .line 279
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    neg-int v11, v0

    .line 280
    invoke-interface {v13, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    .end local v5    # "currInfo":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .end local v11    # "insert":I
    .end local v14    # "recentTime":J
    :cond_1
    const-string v16, "ShareFragment"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getMostRecentlyUsedApps >> Recently used app size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 287
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 286
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getServerTime()J

    move-result-wide v6

    .line 290
    .local v6, "currTime":J
    const/4 v9, 0x0

    .line 291
    .local v9, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->getDefaultRecentlySharedSns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "defaultApps":[Ljava/lang/String;
    :goto_1
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v9, :cond_4

    .line 293
    aget-object v12, v8, v9

    .line 294
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 296
    .local v10, "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "com.samsung.radio.share.recents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    invoke-static/range {v16 .. v19}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 300
    .end local v10    # "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 301
    goto :goto_1

    .line 302
    .end local v6    # "currTime":J
    .end local v8    # "defaultApps":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getDefaultUsedAppsCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 303
    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getDefaultUsedAppsCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    .line 306
    :cond_4
    return-object v13
.end method

.method private getPkgName(I)Ljava/lang/String;
    .locals 1
    .param p1, "shareItem"    # I

    .prologue
    .line 465
    const-string v0, ""

    .line 467
    .local v0, "pkgName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 485
    :goto_0
    :pswitch_0
    return-object v0

    .line 469
    :pswitch_1
    const-string v0, "com.kakao.talk"

    .line 470
    goto :goto_0

    .line 472
    :pswitch_2
    const-string v0, "com.facebook.katana"

    .line 473
    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "com.twitter.android"

    .line 476
    goto :goto_0

    .line 478
    :pswitch_4
    const-string v0, "com.instagram.android"

    .line 479
    goto :goto_0

    .line 481
    :pswitch_5
    const-string v0, "jp.naver.line.android"

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getSnsInfo(I)Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .locals 8
    .param p1, "shareItem"    # I

    .prologue
    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 408
    .local v2, "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 409
    .local v4, "appLabel":Ljava/lang/String;
    const-string v5, ""

    .line 411
    .local v5, "activityInfo":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 439
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    const-wide/16 v6, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/model/share/SnsInfo;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    .line 413
    :pswitch_1
    const-string v5, "com.kakao.talk"

    move-object v3, v5

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 416
    goto :goto_0

    .line 418
    :pswitch_2
    const-string v5, "com.facebook.katana"

    move-object v3, v5

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Facebook;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Facebook;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 421
    goto :goto_0

    .line 423
    :pswitch_3
    const-string v5, "com.twitter.android"

    move-object v3, v5

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Twitter;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 426
    goto :goto_0

    .line 428
    :pswitch_4
    const-string v5, "com.instagram.android"

    move-object v3, v5

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Instagram;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 430
    invoke-static {}, Lcom/samsung/android/app/music/milk/share/Instagram;->getSnsName()Ljava/lang/String;

    move-result-object v4

    .line 431
    goto :goto_0

    .line 433
    :pswitch_5
    const-string v5, "jp.naver.line.android"

    move-object v3, v5

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Line;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Line;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private hasManyShareActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "com.twitter.android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.apps.docs"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBaseShareActivityOfApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "com.twitter.android.composer.ComposerActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.apps.docs.app.SendTextToClipboardActivity"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomizedSns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 443
    sget-object v1, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->SHARE_CUSTOMIZED_APPS:[I

    .line 446
    .local v1, "defaultApps":[I
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 461
    :cond_1
    :goto_0
    return v2

    .line 450
    :cond_2
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_5

    aget v0, v1, v4

    .line 451
    .local v0, "currItem":I
    const-string v6, "com.twitter.android"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 452
    const-string v6, "com.twitter.android.composer.ComposerActivity"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 450
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 456
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getPkgName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .end local v0    # "currItem":I
    :cond_5
    move v2, v3

    .line 461
    goto :goto_0
.end method

.method private makeShareData(Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V
    .locals 8
    .param p1, "snsInfo"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 509
    .local v4, "args":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 510
    const-string v0, "SHARED_TYPE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, "type":I
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/SnsInfo;ILandroid/os/Bundle;Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;Lcom/samsung/android/app/music/milk/share/country/ShareCountry;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.samsung.radio.share.recents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 515
    invoke-static {v0, v1, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private onClickCloseBtn()V
    .locals 3

    .prologue
    .line 387
    const-string v0, "ShareFragment"

    const-string v1, "onClickCloseBtn >> Close button is clicked, dismissing share picker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "831"

    const-string v2, "8033"

    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 391
    return-void
.end method

.method private onClickMoreBtn()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 394
    new-array v0, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mMoreBtn:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare1Btn:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare2Btn:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare3Btn:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    .line 395
    .local v0, "buttons":[Landroid/view/View;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 396
    .local v1, "currBtn":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "currBtn":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mAllAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 399
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "831"

    const-string v4, "8032"

    .line 400
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private parsingArrayList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "seedlist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/DeepLinkSeed;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, "deepLinkSeedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/DeepLinkSeed;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 596
    :cond_0
    return-void

    .line 580
    :cond_1
    const-string v5, "@"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "seedList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 583
    aget-object v4, v3, v1

    .line 584
    .local v4, "seedUnit":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "seed":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;-><init>()V

    .line 588
    .local v0, "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedType:Ljava/lang/String;

    .line 589
    const/4 v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedID:Ljava/lang/String;

    .line 590
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedName:Ljava/lang/String;

    .line 591
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0    # "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setupListeners()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 334
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 336
    const/4 v3, 0x3

    new-array v0, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare1Btn:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare2Btn:Landroid/widget/ImageView;

    aput-object v3, v0, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare3Btn:Landroid/widget/ImageView;

    aput-object v4, v0, v3

    .line 338
    .local v0, "buttons":[Landroid/view/View;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 339
    .local v1, "currBtn":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 340
    new-instance v4, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "currBtn":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$3;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mMoreBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$4;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mAllAppsGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$5;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    return-void
.end method


# virtual methods
.method protected initViewsOnCreate(Landroid/view/View;)V
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v8, 0x7f12002c

    const/4 v7, 0x0

    .line 198
    const v5, 0x7f120383

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mCloseBtn:Landroid/widget/ImageView;

    .line 199
    const v5, 0x7f120384

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mMoreBtn:Landroid/widget/ImageView;

    .line 200
    const v5, 0x7f120387

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare1Btn:Landroid/widget/ImageView;

    .line 201
    const v5, 0x7f120386

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare2Btn:Landroid/widget/ImageView;

    .line 202
    const v5, 0x7f120385

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare3Btn:Landroid/widget/ImageView;

    .line 203
    const v5, 0x7f120240

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mLoading:Landroid/view/View;

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getMostRecentlyUsedApps()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "appOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    const/4 v5, 0x3

    new-array v4, v5, [Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare1Btn:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare2Btn:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mShare3Btn:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 209
    .local v4, "shareButtons":[Landroid/widget/ImageView;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 210
    aget-object v2, v4, v3

    .line 211
    .local v2, "currBtn":Landroid/widget/ImageView;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 213
    .local v0, "app":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->hasManyShareActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    .line 216
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->isBaseShareActivityOfApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 221
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v5, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 227
    .end local v0    # "app":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .end local v2    # "currBtn":Landroid/widget/ImageView;
    :cond_2
    const v5, 0x7f120388

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mAllAppsGrid:Landroid/widget/GridView;

    .line 228
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mAllAppsGrid:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mGridAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPM:Landroid/content/pm/PackageManager;

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mUIThreadHandler:Landroid/os/Handler;

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    .line 121
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPM:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 124
    .local v10, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getCustomizedAppsInfo()Ljava/util/List;

    move-result-object v13

    .line 126
    .local v13, "shareList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_3

    .line 127
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 130
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "label":Ljava/lang/String;
    :goto_1
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 133
    .local v8, "activityName":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->isCustomizedSns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const/16 v1, 0x3ed

    .line 135
    .local v1, "shareItem":I
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/model/share/SnsInfo;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    .local v0, "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->hasManyShareActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->isBaseShareActivityOfApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .end local v1    # "shareItem":I
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 130
    .end local v4    # "label":Ljava/lang/String;
    .end local v8    # "activityName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 141
    .restart local v0    # "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .restart local v1    # "shareItem":I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v8    # "activityName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .end local v1    # "shareItem":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/String;
    .end local v8    # "activityName":Ljava/lang/String;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v2, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;

    invoke-direct {v2, p1, v13}, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mGridAdapter:Landroid/widget/BaseAdapter;

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageReceiver:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageReceiver:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const v1, 0x7f040128

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mRootView:Landroid/view/View;

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->initViewsOnCreate(Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->setupListeners()V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageReceiver:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mIsPackageChanged:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mIsPackageChanged:Z

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->dismissSelf()V

    .line 188
    :cond_0
    return-void
.end method

.method public onShareDataResult(Lcom/samsung/android/app/music/common/model/share/ShareData;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V
    .locals 5
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;
    .param p2, "snsInfo"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 524
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 525
    iget v1, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mShareItem:I

    packed-switch v1, :pswitch_data_0

    .line 555
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mLoading:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->dismissSelf()V

    .line 557
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "831"

    const-string v3, "8031"

    iget-object v4, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppLabel:Ljava/lang/String;

    .line 558
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_1
    return-void

    .line 527
    .restart local v0    # "a":Landroid/app/Activity;
    :pswitch_1
    new-instance v1, Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    goto :goto_0

    .line 531
    :pswitch_2
    new-instance v1, Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/Facebook;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/share/Facebook;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    goto :goto_0

    .line 535
    :pswitch_3
    new-instance v1, Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/Twitter;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/share/Twitter;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 536
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    if-eqz v1, :cond_0

    .line 537
    check-cast v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    .end local v0    # "a":Landroid/app/Activity;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->setDisabledBackPress(J)V

    goto :goto_0

    .line 542
    .restart local v0    # "a":Landroid/app/Activity;
    :pswitch_4
    new-instance v1, Lcom/samsung/android/app/music/milk/share/Instagram;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/Instagram;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/share/Instagram;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    goto :goto_0

    .line 546
    :pswitch_5
    new-instance v1, Lcom/samsung/android/app/music/milk/share/Line;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/Line;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/share/Line;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    goto :goto_0

    .line 550
    :pswitch_6
    new-instance v1, Lcom/samsung/android/app/music/milk/share/MoreItem;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/share/MoreItem;-><init>(Landroid/app/Activity;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mActivityName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/music/milk/share/MoreItem;->share(Lcom/samsung/android/app/music/common/model/share/ShareData;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 178
    return-void
.end method
