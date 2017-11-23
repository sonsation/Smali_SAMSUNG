.class public Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$4;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;,
        Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Row;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;",
            ">;"
        }
    .end annotation
.end field

.field public static mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static mSplitBarLeftWeight:F


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field insetdivider:Landroid/graphics/drawable/InsetDrawable;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field mAppPreference:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mLockOptionResID:I

.field private mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;",
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

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHideApp:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockOptionResID:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockOptionResID:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockOptionValues(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "LockNotificationApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 104
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    .line 127
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSplitBarLeftWeight:F

    .line 129
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    .line 446
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    .line 843
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$4;-><init>()V

    .line 842
    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHideApp:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 512
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 679
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method private getEnabledItemCount()I
    .locals 7

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "cnt":I
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    .line 817
    .local v1, "r":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v5, v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v6, v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v3

    .line 818
    .local v3, "state":Z
    if-nez v3, :cond_0

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    .end local v1    # "r":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    .end local v3    # "state":Z
    :cond_1
    return v0
.end method

.method private getLockOptionValues(I)I
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 200
    const v2, 0x7f0b1a60

    if-eq p1, v2, :cond_0

    const/4 v0, 0x1

    .line 201
    .local v0, "enabled":Z
    :goto_0
    const v2, 0x7f0b1a5e

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 203
    .local v1, "show":Z
    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x2

    :goto_2
    return v2

    .line 200
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 201
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    .line 203
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 345
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 344
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 339
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getVisibilityString(I)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 827
    packed-switch p1, :pswitch_data_0

    .line 830
    :pswitch_0
    const-string/jumbo v1, "show_content"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 833
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "hide_contents"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "do_not_show_notifications"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;)Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    .prologue
    const/4 v5, 0x1

    .line 456
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;-><init>()V

    .line 457
    .local v0, "row":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    .line 458
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    .line 460
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 466
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->banned:Z

    .line 467
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->priority:Z

    .line 468
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->sensitive:Z

    .line 469
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->show:Z

    .line 470
    return-object v0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "LockNotificationApplist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 884
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 885
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 888
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 627
    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "LockNotificationApplist"

    const-string/jumbo v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    .line 630
    const/4 v6, 0x0

    .line 631
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    sget-object v9, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 632
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 633
    .local v0, "N":I
    const/4 v2, 0x1

    .line 634
    .local v2, "first":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    .line 636
    .local v4, "isEnabled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 637
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    .line 639
    .local v5, "row":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    iput-boolean v2, v5, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->first:Z

    .line 640
    const/4 v2, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_1

    monitor-exit v8

    .line 643
    return-void

    .line 645
    :cond_1
    :try_start_1
    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    .line 646
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 648
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 649
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 650
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget-object v11, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v10, v11, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 651
    iget-boolean v7, v5, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->banned:Z

    if-eqz v7, :cond_2

    .line 652
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0913

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 656
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 658
    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;-><init>()V

    .line 659
    .local v1, "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v7, v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    .line 660
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;->uid:I

    iput v7, v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    .line 662
    sget-object v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v1    # "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    .end local v5    # "row":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppRow;
    :cond_3
    monitor-exit v8

    .line 666
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    if-eqz v7, :cond_5

    .line 667
    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "LockNotificationApplist"

    const-string/jumbo v8, "Restoring listView state"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 669
    iput-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 671
    :cond_5
    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "LockNotificationApplist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

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

    .line 626
    :cond_6
    return-void

    .line 629
    .end local v0    # "N":I
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "isEnabled":Z
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 209
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 208
    invoke-static {v2, p3, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 210
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 212
    .local v1, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V

    .line 207
    .end local v1    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    :cond_0
    return-void
.end method

.method private updateAllAppsPreference()V
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "lock_notification_all_apps"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 374
    .local v0, "allAppsValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string/jumbo v1, "notification_all_apps"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 370
    return-void
.end method

.method private updateDropdownList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string/jumbo v8, "set_visibility"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .line 222
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v8, :cond_0

    .line 223
    const-string/jumbo v8, "LockNotificationApplist"

    const-string/jumbo v9, "Preference not found: set_visibility"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v8}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->clearRestrictedItems()V

    .line 227
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 229
    const v8, 0x7f0b1a5e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const/16 v8, 0xc

    .line 233
    invoke-direct {p0, v4, v5, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 236
    const v8, 0x7f0b1a5f

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v8, 0x4

    .line 240
    invoke-direct {p0, v2, v3, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 243
    const v8, 0x7f0b1a60

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 247
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateLockscreenNotifications()V

    .line 251
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v9, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 312
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 314
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    .line 316
    .local v6, "value":I
    and-int/lit8 v8, v6, 0x8

    if-nez v8, :cond_1

    .line 317
    and-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_1

    .line 216
    .end local v6    # "value":I
    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v2, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 330
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 331
    .local v0, "allowPrivate":Z
    if-nez v1, :cond_1

    const v2, 0x7f0b1a60

    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockOptionResID:I

    .line 334
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockOptionResID:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockOptionValues(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockscreen:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLockOptionResID:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setSummary(I)V

    .line 325
    return-void

    .line 332
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0b1a5e

    goto :goto_0

    .line 333
    :cond_2
    const v2, 0x7f0b1a5f

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isAllAppsCheckedState()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 895
    const/4 v3, 0x0

    .line 896
    .local v3, "offCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 899
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 896
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 902
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;

    .line 904
    .local v0, "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 905
    add-int/lit8 v3, v3, 0x1

    .line 908
    .end local v0    # "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    .end local v2    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_2
    if-lez v3, :cond_0

    .line 909
    return v7

    .line 912
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 189
    .local v11, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0a04c4

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    const v1, 0x7f0a04ba

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    add-int/2addr v0, v1

    .line 191
    const v1, 0x7f0a0022

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    add-int v4, v0, v1

    .line 193
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->insetdivider:Landroid/graphics/drawable/InsetDrawable;

    .line 185
    return-void

    .line 194
    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v5, 0x7f080097

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->addPreferencesFromResource(I)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    .line 144
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    .line 145
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "launcherapps"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 147
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 148
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    :cond_0
    :goto_0
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f028c

    invoke-direct {v5, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    .line 158
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 159
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 161
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 164
    const-string/jumbo v6, "com.android.settings_preferences"

    const/4 v7, 0x4

    .line 163
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "split_bar_left_wegigh"

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    .line 165
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    sput v5, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSplitBarLeftWeight:F

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 169
    .local v0, "mWidth":I
    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mSplitBarLeftWeight:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x43480000    # 200.0f

    div-float v4, v5, v6

    .line 171
    .local v4, "xPoint":F
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 172
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 173
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    float-to-int v5, v4

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 175
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
    .end local v0    # "mWidth":I
    .end local v1    # "sharedPreference":Landroid/content/SharedPreferences;
    .end local v2    # "window":Landroid/view/Window;
    .end local v3    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "xPoint":F
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateDropdownList()V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateAllAppsPreference()V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->loadAppsList()V

    .line 137
    return-void

    .line 149
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHideApp:Z

    .line 150
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 152
    const-string/jumbo v5, "LockNotificationApplist"

    const-string/jumbo v6, "Hide app notification list is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mHideApp:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 804
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 805
    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LDST"

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getEnabledItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 802
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 356
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 351
    sget-boolean v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LockNotificationApplist"

    const-string/jumbo v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 349
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 864
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "desiredState":Z
    move-object v2, p1

    .line 865
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 867
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;

    .line 869
    .local v0, "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v3, v5, v6, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->setSensitive(Ljava/lang/String;IZ)Z

    .line 870
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 872
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->setStatusPreference(Z)V

    .line 874
    sget-boolean v3, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1001cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v1, :cond_2

    const/16 v3, 0x3e8

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 880
    return v4

    .line 875
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "NFST"

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    invoke-static {v3, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 878
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateLockscreenNotifications()V

    .line 362
    return-void
.end method

.method public setStatusPreference(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "lock_notification_all_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 406
    return-void
.end method
