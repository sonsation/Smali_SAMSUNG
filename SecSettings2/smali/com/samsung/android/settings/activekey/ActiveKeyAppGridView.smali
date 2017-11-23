.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    }
.end annotation


# instance fields
.field private grid_view:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field private mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

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

.field private mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPressType:I

.field private mState:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppListAdapter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->stopLoading()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private doAppLoading(Z)V
    .locals 5
    .param p1, "loading"    # Z

    .prologue
    const/4 v4, 0x1

    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->clear()V

    .line 113
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 453
    .local v2, "iconRes":I
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 454
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 459
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    if-nez v0, :cond_0

    .line 460
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->reSizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 463
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 455
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v19, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 313
    .local v21, "context":Landroid/content/Context;
    if-nez v21, :cond_0

    .line 314
    return-object v19

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 318
    .local v20, "app_name":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    .line 320
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v15, "LauncherIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/16 v22, 0x200

    .line 323
    .local v22, "filter":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v22

    invoke-virtual {v5, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 325
    .local v14, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v17, "app":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v5, :cond_1

    .line 330
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1

    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_1

    .line 331
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "pkg_name":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "activity_name":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 335
    .local v6, "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .line 336
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 337
    const/4 v8, 0x0

    .line 335
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 338
    .local v2, "appListitem":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v2    # "appListitem":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    .end local v3    # "pkg_name":Ljava/lang/String;
    .end local v4    # "activity_name":Ljava/lang/String;
    .end local v6    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "app":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/16 v22, 0x80

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v22

    invoke-virtual {v5, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 345
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 346
    .restart local v17    # "app":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .restart local v3    # "pkg_name":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .restart local v4    # "activity_name":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 351
    .restart local v6    # "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .line 352
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 351
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 354
    .restart local v2    # "appListitem":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->isBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    .line 357
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 360
    .end local v2    # "appListitem":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    .end local v3    # "pkg_name":Ljava/lang/String;
    .end local v4    # "activity_name":Ljava/lang/String;
    .end local v6    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "app":Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v16, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;-><init>()V

    .line 361
    .local v16, "alphaComparator":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 365
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v23, "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;>;"
    new-instance v7, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    const-string/jumbo v8, "torch"

    const-string/jumbo v9, "torch"

    .line 367
    const v5, 0x7f0b035e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f020607

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 366
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 369
    .local v7, "torch":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    return-object v23

    .line 373
    .end local v7    # "torch":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    .end local v23    # "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;>;"
    :cond_6
    return-object v19
.end method

.method private getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
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
    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 385
    return v3

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

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

    .line 387
    .local v0, "whitePkg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    const/4 v2, 0x1

    return v2

    .line 391
    .end local v0    # "whitePkg":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private reSizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 467
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 468
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a04d8

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 471
    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 473
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0xc4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 153
    .local v1, "mActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 154
    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pressed_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "pressed_type":Ljava/lang/String;
    const-string/jumbo v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110475

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    .line 166
    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    new-instance v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110473

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const v3, 0x7f0b0352

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    const v4, 0x7f100313

    .line 184
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 186
    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    .line 192
    new-instance v3, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;)V

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    .line 193
    iget-boolean v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    .line 149
    return-void

    .line 159
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_0
    const-string/jumbo v3, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    goto/16 :goto_0

    .line 162
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    goto/16 :goto_0

    .line 182
    .restart local v0    # "emptyView":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0b08b3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const v0, 0x7f040172

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 205
    iput-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    .line 197
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v0

    .line 108
    .local v0, "check":Z
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 102
    .end local v0    # "check":Z
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 212
    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->restorePressActionFromBackup(Landroid/content/Context;I)V

    .line 216
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    .line 210
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->removePressActionAndMakeBackup(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V
    .locals 3
    .param p1, "appItemInfo"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 281
    return-void
.end method
