.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/QuickConnectable;
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMusicTabManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;
    }
.end annotation


# static fields
.field private static final KEY_SELECTED_TAB_ID:Ljava/lang/String; = "key_tab_id"


# instance fields
.field private final mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

.field private final mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

.field private mInitTabPosition:I

.field private mInitialized:Z

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private final mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 1471
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1542
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$3;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1359
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .line 1361
    const v0, 0x7f120055

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1363
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;-><init>(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    .line 1364
    const v0, 0x7f12025d

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 1365
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;
    .param p1, "x1"    # I

    .prologue
    .line 1339
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->sendLocalTabAnalytics(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    return-object v0
.end method

.method private ensureInit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1422
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitialized:Z

    if-nez v1, :cond_2

    .line 1423
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1424
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1425
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setLayoutDirection(I)V

    .line 1427
    const/4 v0, -0x1

    .line 1428
    .local v0, "tabPosition":I
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitTabPosition:I

    if-eq v1, v3, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitTabPosition:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->findTabPosition(I)I

    move-result v0

    .line 1431
    :cond_0
    if-ne v0, v3, :cond_1

    .line 1432
    const/4 v0, 0x0

    .line 1434
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 1436
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    new-instance v2, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$1;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 1442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitialized:Z

    .line 1444
    .end local v0    # "tabPosition":I
    :cond_2
    return-void
.end method

.method private static isLDUModel()Z
    .locals 2

    .prologue
    .line 1600
    const-string v0, ""

    .line 1603
    .local v0, "salesCode":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1613
    :cond_0
    :goto_0
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1610
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isShopDemo(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shopdemo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private sendLocalTabAnalytics(I)V
    .locals 3
    .param p1, "tabId"    # I

    .prologue
    .line 1563
    sparse-switch p1, :sswitch_data_0

    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1592
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_0
    return-void

    .line 1565
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_0
    const-string v0, "0005"

    .line 1566
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1568
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_1
    const-string v0, "0006"

    .line 1569
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1571
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_2
    const-string v0, "0007"

    .line 1572
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1574
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_3
    const-string v0, "0008"

    .line 1575
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1577
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_4
    const-string v0, "0009"

    .line 1578
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1580
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_5
    const-string v0, "0010"

    .line 1581
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1583
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_6
    const-string v0, "0011"

    .line 1584
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1586
    .end local v0    # "eventId":Ljava/lang/String;
    :sswitch_7
    const-string v0, "0012"

    .line 1587
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 1563
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_4
        0x10004 -> :sswitch_1
        0x10006 -> :sswitch_5
        0x10007 -> :sswitch_6
        0x10008 -> :sswitch_7
        0x10030 -> :sswitch_0
        0x110001 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 1377
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1379
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1381
    if-eqz p2, :cond_2

    .line 1382
    const-string v0, "key_tab_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitTabPosition:I

    .line 1387
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    :cond_0
    const v0, 0x10002

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitTabPosition:I

    .line 1391
    :cond_1
    return-void

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "music_current_tab"

    const v2, 0x10004

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mInitTabPosition:I

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1466
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "STQV"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    .line 1468
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedTabId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListTypeToTabString(I)Ljava/lang/String;

    move-result-object v2

    .line 1466
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1369
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1370
    const-string v1, "key_tab_id"

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    .line 1371
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedTabId()I

    move-result v0

    .line 1370
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    return-void

    .line 1371
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->startDlnaDmsObserving()V

    .line 1449
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->stopDlnaDmsObserving()V

    .line 1455
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "music_current_tab"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedTabId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1458
    return-void
.end method

.method public performQuickConnect()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1511
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 1512
    .local v1, "fg":Landroid/app/Fragment;
    :goto_0
    instance-of v4, v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 1513
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 1514
    .local v0, "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1515
    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v2

    .line 1516
    .local v2, "ids":[J
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchSconnect(Landroid/app/Activity;[J)V

    .line 1520
    .end local v0    # "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    .end local v2    # "ids":[J
    :goto_1
    return v3

    .line 1511
    .end local v1    # "fg":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1520
    .restart local v1    # "fg":Landroid/app/Fragment;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1525
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    if-eqz v2, :cond_0

    .line 1526
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedTabId()I

    move-result v0

    .line 1528
    .local v0, "selectedTabId":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 1529
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->reset()V

    .line 1530
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->initTabIds(Landroid/app/Activity;)V

    .line 1532
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->findTabPosition(I)I

    move-result v1

    .line 1534
    .local v1, "tabPosition":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1535
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 1540
    .end local v0    # "selectedTabId":I
    .end local v1    # "tabPosition":I
    :cond_0
    :goto_0
    return-void

    .line 1537
    .restart local v0    # "selectedTabId":I
    .restart local v1    # "tabPosition":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public selectTab(II)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 1500
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->findTabPosition(I)I

    move-result v0

    .line 1504
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setTabEnabled(IZ)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1490
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setEnabled(Z)V

    .line 1494
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setAlpha(F)V

    .line 1495
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    goto :goto_0

    .line 1494
    :cond_1
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_1
.end method

.method public setVisible(ZZ)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1394
    if-eqz p1, :cond_2

    .line 1395
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->ensureInit()V

    .line 1397
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setVisibility(I)V

    .line 1398
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setVisibility(I)V

    .line 1400
    if-eqz p2, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mActivity:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$800(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;[Landroid/view/View;)V

    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1405
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1406
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1407
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1419
    :cond_1
    :goto_0
    return-void

    .line 1410
    .end local v0    # "fg":Landroid/app/Fragment;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setVisibility(I)V

    .line 1413
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->mAdapter:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$MainTabAdapter;->getSelectedFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1414
    .restart local v0    # "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1416
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_0
.end method
