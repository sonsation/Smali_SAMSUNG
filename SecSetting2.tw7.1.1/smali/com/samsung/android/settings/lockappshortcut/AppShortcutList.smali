.class public Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AppShortcutList.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;,
        Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
    }
.end annotation


# static fields
.field static mBixbyCurrentStatesId:Ljava/lang/String;


# instance fields
.field private grid_view:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field private isStatus:Z

.field private mAppListAdapter:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getAppListAdapter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->startLoading()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->stopLoading()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    .line 521
    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 60
    return-void
.end method

.method private doAppLoading(Z)V
    .locals 5
    .param p1, "loading"    # Z

    .prologue
    const/4 v4, 0x1

    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->clear()V

    .line 141
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->startLoading()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v13, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v15

    .line 374
    .local v15, "context":Landroid/content/Context;
    if-nez v15, :cond_0

    return-object v13

    .line 376
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    invoke-static {v15, v4}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 377
    .local v14, "app_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v4, v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    invoke-static {v15, v4}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 379
    .local v17, "opposite_app_name":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    .line 381
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v9, "LauncherIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/16 v16, 0x200

    .line 384
    .local v16, "filter":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v16

    invoke-virtual {v4, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 386
    .local v8, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 387
    .local v11, "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v4, :cond_1

    .line 391
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_1

    .line 392
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "pkg_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "activity_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 397
    .local v5, "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .line 398
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 397
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 400
    .local v1, "appListitem":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v1    # "appListitem":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .end local v2    # "pkg_name":Ljava/lang/String;
    .end local v3    # "activity_name":Ljava/lang/String;
    .end local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "app":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/16 v16, 0x80

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v16

    invoke-virtual {v4, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 407
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 408
    .restart local v11    # "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .restart local v2    # "pkg_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .restart local v3    # "activity_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 412
    .restart local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .line 413
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 412
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 416
    .restart local v1    # "appListitem":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    if-eqz v17, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 417
    :cond_3
    if-eqz v14, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 416
    if-nez v4, :cond_5

    .line 418
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->isBlackList(Ljava/lang/String;)Z

    move-result v4

    .line 416
    if-eqz v4, :cond_6

    .line 419
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    .line 421
    :cond_6
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 424
    .end local v1    # "appListitem":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .end local v2    # "pkg_name":Ljava/lang/String;
    .end local v3    # "activity_name":Ljava/lang/String;
    .end local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "app":Landroid/content/pm/ResolveInfo;
    :cond_7
    new-instance v10, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;

    invoke-direct {v10}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;-><init>()V

    .line 425
    .local v10, "alphaComparator":Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;
    invoke-static {v13, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    return-object v13
.end method

.method private getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    :cond_0
    return-object v0
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return v3

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "whitePkg$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, "whitePkg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const/4 v2, 0x1

    return v2

    .line 445
    .end local v0    # "whitePkg":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 3

    .prologue
    .line 362
    const-string/jumbo v1, "left"

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 367
    .local v0, "returnVal":I
    :goto_0
    return v0

    .line 365
    .end local v0    # "returnVal":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "returnVal":I
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 193
    .local v1, "mActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pressed_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    .line 197
    new-instance v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11054e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    .line 201
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    new-instance v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$3;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11054c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, "emptyView":Landroid/widget/TextView;
    const v2, 0x7f0b0a3a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->isStatus:Z

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    .line 222
    new-instance v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    .line 223
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->isStatus:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->doAppLoading(Z)V

    .line 189
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a024d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 453
    .local v1, "gridViewStartEndPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a024e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 454
    .local v2, "gridViewTopPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a024c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 455
    .local v0, "gridViewBottomPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0572

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 457
    .local v3, "itemWidth":I
    iget-object v4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 458
    iget-object v4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v4, v1, v2, v1, v0}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 449
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v0, 0x7f040190

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 235
    iput-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    .line 227
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 171
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 172
    sget-boolean v2, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v2, :cond_0

    .line 173
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->isStatus:Z

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 174
    const-string/jumbo v2, "left"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "ASLS"

    iget-object v5, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBixbyCurrentStatesId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 169
    return-void

    :cond_2
    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "ASRS"

    iget-object v5, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v0

    .line 128
    .local v0, "check":Z
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 131
    .end local v0    # "check":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    if-nez v1, :cond_1

    .line 132
    const-string/jumbo v1, "LeftShortcut"

    sput-object v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBixbyCurrentStatesId:Ljava/lang/String;

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sget-object v4, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBixbyCurrentStatesId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 123
    return-void

    .line 134
    :cond_1
    const-string/jumbo v1, "RightShortcut"

    sput-object v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mBixbyCurrentStatesId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 242
    if-nez p2, :cond_0

    const-string/jumbo v1, "0"

    .line 243
    .local v1, "v":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    .line 244
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->doAppLoading(Z)V

    .line 247
    const-string/jumbo v2, "left"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 252
    .local v0, "returnVal":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz p2, :cond_2

    const/16 v2, 0x3e8

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 240
    return-void

    .line 242
    .end local v0    # "returnVal":I
    .end local v1    # "v":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "1"

    .restart local v1    # "v":Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "returnVal":I
    goto :goto_1

    .line 252
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected saveApplicationData(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 4
    .param p1, "appItemInfo"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    .line 334
    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "left"

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "ASLP"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 328
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "ASRP"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectAppShortcutBixby(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "app_name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 598
    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    .line 597
    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "opposite_app_name":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, "toBeAppName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, "stateId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 602
    .local v3, "nlgStateid":Ljava/lang/String;
    const-string/jumbo v7, "LeftShortcutChange"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 603
    const-string/jumbo v3, "LeftShortcut"

    .line 607
    .local v3, "nlgStateid":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 608
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .line 609
    .local v0, "App":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    iget-object v7, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 610
    if-eqz v4, :cond_2

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 610
    if-eqz v7, :cond_2

    .line 612
    const-string/jumbo v7, "LeftShortcutChange"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 613
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 615
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 616
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 615
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 642
    :goto_2
    return-void

    .line 605
    .end local v0    # "App":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .end local v2    # "i":I
    .local v3, "nlgStateid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "RightShortcut"

    .local v3, "nlgStateid":Ljava/lang/String;
    goto :goto_0

    .line 618
    .restart local v0    # "App":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .restart local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 620
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 621
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 620
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    .line 623
    :cond_2
    if-eqz v1, :cond_3

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 623
    if-eqz v7, :cond_3

    .line 625
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "App"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "AppName"

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 628
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    .line 629
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->isBlackList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 630
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 632
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 634
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    invoke-static {v8, v7}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->-wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    .line 635
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 636
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "App"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "Appname"

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 640
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    .line 607
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 645
    .end local v0    # "App":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 647
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 595
    return-void
.end method
