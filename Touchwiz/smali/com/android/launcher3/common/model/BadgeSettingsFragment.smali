.class public Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.super Landroid/app/Fragment;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeSettingsFragment"


# instance fields
.field private final BADGE_APP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

.field private allSwitchLayout:Landroid/widget/LinearLayout;

.field private isDatabaseLoaderRunning:Z

.field private mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

.field private mAllSwitch:Landroid/widget/Switch;

.field private mBadgeAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

.field private mBadgeSettings:I

.field private final mBadges_Hidden_DualApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const-string v1, "hidden"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden_DualApp:Ljava/util/List;

    .line 52
    iput-boolean v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    .line 53
    iput v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    .line 525
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateAllSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->loadBadgeProvider()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->createAppItemArray()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;)Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->refreshAllAppItems(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden_DualApp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDisableAllAppsBadge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->dismissProgress()V

    return-void
.end method

.method private createAppItemArray()V
    .locals 10

    .prologue
    .line 291
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    .line 292
    .local v3, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v6

    .line 293
    .local v6, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    .line 294
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 295
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 296
    .local v4, "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 301
    .local v0, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V

    .line 302
    .local v2, "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    iget-object v9, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    .end local v0    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v2    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    .end local v4    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v8, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    return-void
.end method

.method private dismissProgress()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private hasActivityForComponent(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 352
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 353
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 356
    .local v1, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    const/4 v3, 0x1

    .line 360
    .end local v1    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDisableAllAppsBadge()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBadgeProvider()V
    .locals 17

    .prologue
    .line 364
    const-string v1, "BadgeSettingsFragment"

    const-string v3, "loadBadgeProvider"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden_DualApp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v15

    .line 367
    .local v15, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v15}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    .line 368
    .local v14, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 369
    .local v13, "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v2, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 370
    .local v2, "badgeUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 371
    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/common/model/BadgeCache;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 372
    if-nez v2, :cond_2

    .line 402
    .end local v2    # "badgeUri":Landroid/net/Uri;
    .end local v13    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    return-void

    .line 375
    .restart local v2    # "badgeUri":Landroid/net/Uri;
    .restart local v13    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "noMultiUser"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 378
    :cond_3
    const/4 v7, 0x0

    .line 380
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 381
    if-eqz v7, :cond_5

    .line 382
    :cond_4
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, "pkgName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "className":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 386
    .local v11, "hidden":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    if-eqz v8, :cond_4

    .line 387
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v9, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->hasActivityForComponent(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden_DualApp:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-direct {v3, v9, v13}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 394
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v11    # "hidden":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 395
    .local v10, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v1, "BadgeSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    if-eqz v7, :cond_0

    .line 398
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 397
    .end local v10    # "e":Ljava/lang/SecurityException;
    :cond_5
    if-eqz v7, :cond_0

    .line 398
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 397
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 398
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private refreshAllAppItems(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 116
    .local v0, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    goto :goto_0

    .line 118
    .end local v0    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public static setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "value"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 170
    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 171
    .local v1, "badgeUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    sget-object v5, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/launcher3/common/model/BadgeCache;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 173
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "noMultiUser"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 179
    :cond_2
    const-string v4, "package=? AND class=?"

    .line 180
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v8

    aput-object p2, v0, v9

    .line 181
    .local v0, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string v5, "hidden"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 185
    const-string v5, "package"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v5, "class"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v5, "badgecount"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateAllSwitch()V
    .locals 7

    .prologue
    .line 122
    const/4 v0, 0x1

    .line 123
    .local v0, "all":Z
    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 124
    .local v1, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 129
    .end local v1    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    .line 129
    :goto_0
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    return-void

    .line 131
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableAllAppsBadge()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->refreshAllAppItems(Z)V

    .line 434
    return-void
.end method

.method public enableAllAppsbadge(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 427
    .local v0, "isChecked":Z
    xor-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    .line 430
    :cond_0
    return-void
.end method

.method public enableAppBadge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 446
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 447
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 449
    .local v1, "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    .line 451
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyItemChanged(I)V

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 456
    .end local v1    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateAllSwitch()V

    .line 457
    return-void
.end method

.method public hasAppsBadge()Z
    .locals 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 438
    .local v0, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 442
    .end local v0    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAllAppsBadgeSwitchChecked()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleAppBadgeChecked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 460
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 461
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 462
    .local v1, "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    .end local v1    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_0
    :goto_1
    return v3

    .line 466
    .restart local v1    # "item":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 460
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startLoader()V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 74
    const v1, 0x7f04001d

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    const v1, 0x7f11005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    .line 78
    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    .line 79
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0016

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    .line 84
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->setOnChangeListener(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getBadgeSetings()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    .line 93
    iget v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    return-object v0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startDatabaseLoader()V

    .line 197
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 315
    return-void
.end method

.method public startDatabaseLoader()V
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 418
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDatabaseLoader: return ,mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startLoader()V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    .line 410
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateAppBadgeIntoDatabase()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 137
    iget-object v8, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    if-eqz v8, :cond_5

    .line 138
    const-string v8, "BadgeSettingsFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAppBadgeIntoDatabase: count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v12}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v8, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "hasShow":Z
    const/4 v3, 0x0

    .line 142
    .local v3, "hasHide":Z
    iget-object v8, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 143
    .local v0, "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v8

    if-nez v8, :cond_1

    .line 144
    const/4 v4, 0x1

    .line 145
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    const/4 v3, 0x1

    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v2

    .line 148
    .local v2, "hasChange":Z
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "pakcgeName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v5

    .line 152
    .local v5, "hidden":Z
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    .line 153
    .local v7, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v0, v10}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHasChange(Z)V

    .line 154
    iget-object v12, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    move v8, v9

    :goto_1
    invoke-static {v12, v6, v1, v7, v8}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    goto :goto_0

    :cond_3
    move v8, v10

    goto :goto_1

    .line 157
    .end local v0    # "app":Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "hasChange":Z
    .end local v5    # "hidden":Z
    .end local v6    # "pakcgeName":Ljava/lang/String;
    .end local v7    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 158
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    .line 166
    .end local v3    # "hasHide":Z
    .end local v4    # "hasShow":Z
    :cond_5
    :goto_2
    const-string v8, "BadgeSettingsFragment"

    const-string v9, "updateAppBadgeIntoDatabase: done "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 159
    .restart local v3    # "hasHide":Z
    .restart local v4    # "hasShow":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 160
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2

    .line 162
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    .line 335
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateList: mDatabaseLoader is Running..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList() called with: mBadgeAppLoader.getStatus()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method
