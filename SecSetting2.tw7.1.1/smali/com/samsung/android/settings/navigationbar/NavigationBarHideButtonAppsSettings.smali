.class public Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$4;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$Row;
    }
.end annotation


# static fields
.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExcludePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHideButtonApps:Landroid/preference/PreferenceCategory;

.field private mHideButtonAppsDesc:Lcom/samsung/android/settings/UnclickablePreference;

.field private mIsPartialLoading:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z

    .line 398
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRowComparator:Ljava/util/Comparator;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRows:Landroid/util/ArrayMap;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    .line 243
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 64
    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 235
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method private makeExcludePackageList()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    const-string/jumbo v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 373
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 374
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 7

    .prologue
    .line 314
    const-string/jumbo v4, "ShowHideButtonAppsSettings"

    const-string/jumbo v5, "Refreshing apps..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 316
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v5

    .line 317
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 319
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 320
    const-string/jumbo v4, "ShowHideButtonAppsSettings"

    const-string/jumbo v6, "mSortedRows size is 0"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 321
    return-void

    .line 323
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    .line 325
    .local v3, "row":Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    new-instance v2, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 326
    .local v2, "pref":Landroid/preference/SwitchPreference;
    iget-object v4, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget v4, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 330
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 349
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    iget v4, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    if-nez v4, :cond_2

    .line 333
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 338
    :goto_2
    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;)V

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "row":Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 336
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "pref":Landroid/preference/SwitchPreference;
    .restart local v3    # "row":Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v2    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "row":Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    :cond_3
    monitor-exit v5

    .line 352
    const-string/jumbo v4, "ShowHideButtonAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Refreshed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " displayed items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    monitor-enter p0

    .line 231
    :try_start_0
    sput-boolean p1, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 230
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNaviBarHidePackageInfo(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 408
    const/4 v1, 0x1

    .line 410
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowManager;->getNaviBarHidePackageInfo(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    :goto_0
    const-string/jumbo v2, "ShowHideButtonAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNaviBarHidePackageInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShowHideButtonAppsSettings"

    const-string/jumbo v3, "getNaviBarHidePackageInfo() RemoteException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 357
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;-><init>()V

    .line 358
    .local v0, "row":Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 359
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mUid:I

    .line 361
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    invoke-virtual {p2, p1, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mUid:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getNaviBarHidePackageInfo(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    .line 369
    return-object v0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ShowHideButtonAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    iget-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 207
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const-string/jumbo v0, "ShowHideButtonAppsSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 133
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b06bf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 136
    const-string/jumbo v0, "hide_button_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/preference/PreferenceCategory;

    .line 137
    const-string/jumbo v0, "hide_button_apps_desc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonAppsDesc:Lcom/samsung/android/settings/UnclickablePreference;

    .line 139
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002b4

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->makeExcludePackageList()V

    .line 123
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 200
    const-string/jumbo v0, "ShowHideButtonAppsSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setFragmentVisibleState(Z)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 149
    const-string/jumbo v6, "ShowHideButtonAppsSettings"

    const-string/jumbo v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 151
    const-string/jumbo v9, "navigationbar_hide_bar"

    .line 150
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 152
    .local v1, "isHideBar":Z
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 153
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 158
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 159
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 161
    const-string/jumbo v9, "navigationbar_hide_bar"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 162
    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    .line 160
    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setFragmentVisibleState(Z)V

    .line 165
    iput-boolean v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v9, 0x1020004

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "emptyView":Landroid/widget/TextView;
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f1002aa

    invoke-virtual {v0, v6, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0148

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a02cd

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 173
    .local v3, "mLeftPadding":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 174
    .local v4, "mRightPadding":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 175
    .local v2, "mBottomPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a02cf

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 176
    .local v5, "mTopPadding":I
    invoke-virtual {v0, v3, v5, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 177
    const v6, 0x7f0b06c0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 178
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setEmptyView(Landroid/view/View;)V

    .line 181
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    :goto_3
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->showAppList(Z)V

    .line 147
    return-void

    .line 150
    .end local v0    # "emptyView":Landroid/widget/TextView;
    .end local v1    # "isHideBar":Z
    .end local v2    # "mBottomPadding":I
    .end local v3    # "mLeftPadding":I
    .end local v4    # "mRightPadding":I
    .end local v5    # "mTopPadding":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isHideBar":Z
    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 152
    goto/16 :goto_1

    .line 156
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto/16 :goto_2

    .restart local v0    # "emptyView":Landroid/widget/TextView;
    .restart local v2    # "mBottomPadding":I
    .restart local v3    # "mLeftPadding":I
    .restart local v4    # "mRightPadding":I
    .restart local v5    # "mTopPadding":I
    :cond_4
    move v7, v8

    .line 181
    goto :goto_3
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 214
    const-string/jumbo v0, "ShowHideButtonAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_hide_bar"

    .line 216
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 215
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->showAppList(Z)V

    .line 213
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNaviBarHidePackage(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 419
    const-string/jumbo v1, "ShowHideButtonAppsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNaviBarHidePackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / disable-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->setNaviBarHidePackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ShowHideButtonAppsSettings"

    const-string/jumbo v2, "setNaviBarHidePackage() RemoteException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAppList(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonAppsDesc:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->loadAppsList()V

    .line 220
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0
.end method
