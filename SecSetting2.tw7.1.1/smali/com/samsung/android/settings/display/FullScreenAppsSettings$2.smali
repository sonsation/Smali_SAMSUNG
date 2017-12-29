.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v23

    monitor-enter v23

    .line 275
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 276
    .local v20, "start":J
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "Collecting apps..."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 279
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "Getting ApplicationInfo..."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->clear()V

    .line 282
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v6, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 284
    .local v4, "activity":Landroid/app/Activity;
    if-nez v4, :cond_0

    monitor-exit v23

    .line 285
    return-void

    .line 286
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 287
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get5(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/pm/LauncherApps;

    move-result-object v22

    .line 288
    new-instance v24, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v25, 0x0

    .line 287
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v16

    .line 289
    .local v16, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "  launchable activities:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "lai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    .line 291
    .local v14, "lai":Landroid/content/pm/LauncherActivityInfo;
    const-string/jumbo v22, "FullScreenAppsSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 293
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v15    # "lai$iterator":Ljava/util/Iterator;
    .end local v16    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "start":J
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 296
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v6    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v15    # "lai$iterator":Ljava/util/Iterator;
    .restart local v16    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "start":J
    :cond_1
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 297
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 298
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v10, v2, v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    move-result-object v19

    .line 303
    .local v19, "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 305
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "key":Ljava/lang/String;
    .end local v19    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    :cond_3
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "Finish getting ApplicationInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v6    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "info$iterator":Ljava/util/Iterator;
    .end local v15    # "lai$iterator":Ljava/util/Iterator;
    .end local v16    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-set0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get11(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 312
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "Sorting apps... (sort by type)"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v17, "mTempRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    invoke-static {}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get8()Ljava/util/Comparator;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    const/16 v19, 0x0

    .line 317
    .local v19, "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    const/4 v7, 0x0

    .end local v19    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    .local v7, "i":I
    :goto_2
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v7, v0, :cond_d

    .line 318
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_b

    .line 319
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    .line 320
    .local v19, "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    if-nez v7, :cond_6

    .line 321
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 323
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_8

    .line 324
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 325
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 328
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 329
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 331
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 330
    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    move/from16 v22, v0

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    goto :goto_5

    .line 317
    .end local v19    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 336
    .end local v7    # "i":I
    .end local v12    # "j":I
    .end local v17    # "mTempRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;>;"
    :cond_c
    const-string/jumbo v22, "FullScreenAppsSettings"

    const-string/jumbo v24, "Sorting apps... (sort by name)"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-static {}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get8()Ljava/util/Comparator;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-wrap0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get7(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/lang/Runnable;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v8, v24, v20

    .line 344
    .local v8, "elapsed":J
    const-string/jumbo v22, "FullScreenAppsSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Collected apps in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "ms, mRows.size : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 345
    const-string/jumbo v25, " / mSortedRows.size : "

    .line 344
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 344
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v23

    .line 273
    return-void
.end method
