.class public Lcom/samsung/android/settings/notification/BlockNotificationList;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/BlockNotificationList$1;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$2;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$3;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$4;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$5;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$6;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$Row;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportSimpleStatusBar:Z


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationApps:Landroid/preference/PreferenceCategory;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleStatusBar:Landroid/preference/SwitchPreference;

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->checkAllAppsState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 688
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    .line 732
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$4;-><init>()V

    .line 731
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 740
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$5;-><init>()V

    .line 739
    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 117
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "com.sec.knox.switchknoxI"

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "com.sec.knox.switchknoxII"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "com.sec.knox.containeragent2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "com.sec.knox.switcher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 121
    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    .line 313
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$1;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 415
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$2;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 788
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$6;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 95
    return-void
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v6, "BlockNotificationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 622
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, " ;_;"

    .line 621
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 624
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 625
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 626
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    .line 627
    .local v4, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    if-nez v4, :cond_1

    .line 628
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 629
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 629
    const-string/jumbo v7, ") for unknown package "

    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 630
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 622
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0

    .line 633
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_1
    iget-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 634
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 635
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 635
    const-string/jumbo v7, ") for package "

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 636
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 639
    :cond_2
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 640
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 639
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 620
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_3
    return-void
.end method

.method private callAdvancedAppNotifications()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 276
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$NotificationAppListActivity"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 279
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "notificationmanager"

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b1a68

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 275
    :goto_0
    return-void

    .line 282
    :cond_0
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0a16

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private checkAllAppsState()Z
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 658
    .local v1, "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 659
    const/4 v2, 0x0

    return v2

    .line 655
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 697
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 699
    array-length v0, v4

    .line 700
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 701
    aget-object v3, v4, v2

    .line 702
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BlockNotificationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 585
    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;-><init>()V

    .line 586
    .local v0, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    .line 587
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    .line 589
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 595
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->banned:Z

    .line 596
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getImportance(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appImportance:I

    .line 597
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getBypassZenMode(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appBypassDnd:Z

    .line 598
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->appVisOverride:I

    .line 599
    if-eqz p3, :cond_0

    .line 600
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 600
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->lockScreenSecure:Z

    .line 606
    :cond_0
    return-object v0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "BlockNotificationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v1, "BlockNotificationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    sget-object v3, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v1, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 614
    const/4 v2, 0x0

    .line 612
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 645
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 646
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 651
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 523
    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v9, "Refreshing apps..."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 525
    iget-object v9, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v9

    .line 526
    const/4 v6, 0x0

    .line 527
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 528
    .local v0, "N":I
    const/4 v2, 0x1

    .line 529
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 530
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 531
    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v8, "mSortedRows size is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 532
    return-void

    .line 534
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .local v5, "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :try_start_2
    iput-boolean v2, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->first:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    :goto_1
    :try_start_3
    new-instance v4, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 550
    .local v4, "pref":Lcom/samsung/android/settings/SettingsSwitchPreference;
    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/BlockNotificationList;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 552
    new-instance v7, Lcom/samsung/android/settings/notification/BlockNotificationList$9;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/notification/BlockNotificationList$9;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 565
    new-instance v7, Lcom/samsung/android/settings/notification/BlockNotificationList$10;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/notification/BlockNotificationList$10;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 574
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v10, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v11, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v7, v10, v11}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 575
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 577
    const/4 v2, 0x0

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    .end local v4    # "pref":Lcom/samsung/android/settings/SettingsSwitchPreference;
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 525
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 574
    .restart local v0    # "N":I
    .restart local v2    # "first":Z
    .restart local v3    # "i":I
    .restart local v4    # "pref":Lcom/samsung/android/settings/SettingsSwitchPreference;
    .restart local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .end local v4    # "pref":Lcom/samsung/android/settings/SettingsSwitchPreference;
    .end local v5    # "row":Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :cond_2
    monitor-exit v9

    .line 580
    const-string/jumbo v7, "BlockNotificationList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " displayed items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    new-instance v7, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 212
    .local v7, "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    const/4 v4, 0x0

    .line 214
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 215
    .local v3, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b0a45

    iput v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 220
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 222
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b056a

    iput v8, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, "intent2":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v8, ":settings:fragment_args_key"

    const-string/jumbo v9, "key_simple_led_indicator_settings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v8, "extra_from_search"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 230
    .end local v1    # "intent2":Landroid/content/Intent;
    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 231
    .local v5, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v8, 0x7f0b0296

    iput v8, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 232
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v2, "intent3":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$NotificationReminderActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 236
    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 237
    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 240
    :cond_1
    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 245
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "intent3":Landroid/content/Intent;
    .end local v3    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v7    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 246
    .local v6, "list":Landroid/widget/ListView;
    if-eqz v6, :cond_3

    .line 247
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 248
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    .line 249
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 252
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 151
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b1412

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 154
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setHasOptionsMenu(Z)V

    .line 165
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f028c

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_SupportSimpleStatusBar"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    .line 171
    sget-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_1
    const-string/jumbo v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->removePreference(Ljava/lang/String;)V

    .line 184
    :goto_1
    const-string/jumbo v0, "notification_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/preference/PreferenceCategory;

    .line 186
    const-string/jumbo v0, "notification_all_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/BlockNotificationList$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$8;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 143
    return-void

    .line 156
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, "BlockNotificationList"

    const-string/jumbo v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/BlockNotificationList$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$7;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 258
    const/4 v1, 0x2

    const v2, 0x7f0b1812

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 259
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 267
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 288
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->loadAppsList()V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "simple_status_bar"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 292
    .local v0, "isSwitchOn":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 287
    return-void

    .line 291
    .end local v0    # "isSwitchOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSwitchOn":Z
    goto :goto_0
.end method
