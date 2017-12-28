.class Lcom/android/launcher3/home/HomeLoader$50;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$isWidget:Z

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;IZLandroid/content/ComponentName;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 4777
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanY:I

    iput p7, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    iput p8, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 4780
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$14600()Ljava/lang/Object;

    move-result-object v29

    monitor-enter v29

    .line 4781
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$14700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 4782
    .local v23, "screenCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 4783
    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addShortcut : currentPageCount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " addIndex = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    move/from16 v14, v23

    .local v14, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v14, v0, :cond_0

    .line 4786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$14800()Landroid/content/Context;

    move-result-object v30

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    .line 4785
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 4790
    .end local v14    # "index":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    move/from16 v28, v0

    if-nez v28, :cond_3

    .line 4791
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v18, 0x1

    .line 4792
    .local v18, "move":Z
    :goto_1
    const/4 v6, 0x0

    .line 4793
    .local v6, "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4794
    .local v8, "addOrMoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 4795
    .local v20, "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$14900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 4796
    .local v24, "screenId":J
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v26

    .line 4799
    .local v26, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 4801
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15000()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v22

    .line 4802
    .local v22, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v9, Landroid/appwidget/AppWidgetHost;

    .line 4803
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15100()Landroid/content/Context;

    move-result-object v28

    const/16 v30, 0x400

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 4804
    .local v9, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    .line 4805
    .local v10, "appWidgetId":I
    if-eqz v22, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15200()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    const/16 v30, 0x0

    .line 4806
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 4807
    :cond_1
    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addOrMoveItem : Unable to bind app widget id "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " component "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4809
    invoke-virtual {v9, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 4840
    .end local v9    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v10    # "appWidgetId":I
    .end local v22    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_2
    :goto_2
    if-nez v6, :cond_9

    .line 4841
    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not exist"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    monitor-exit v29

    .line 4908
    :goto_3
    return-void

    .line 4791
    .end local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "addOrMoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v18    # "move":Z
    .end local v20    # "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v24    # "screenId":J
    .end local v26    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4811
    .restart local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v8    # "addOrMoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v9    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .restart local v10    # "appWidgetId":I
    .restart local v18    # "move":Z
    .restart local v20    # "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v22    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .restart local v24    # "screenId":J
    .restart local v26    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_4
    new-instance v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .end local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 4812
    .restart local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanX:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 4813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanY:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    goto :goto_2

    .line 4907
    .end local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "addOrMoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v10    # "appWidgetId":I
    .end local v18    # "move":Z
    .end local v20    # "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v22    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .end local v23    # "screenCount":I
    .end local v24    # "screenId":J
    .end local v26    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 4816
    .restart local v6    # "addOrMoveInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v8    # "addOrMoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v18    # "move":Z
    .restart local v20    # "occupiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v23    # "screenCount":I
    .restart local v24    # "screenId":J
    .restart local v26    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_5
    if-eqz v18, :cond_7

    .line 4817
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    .line 4818
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 4819
    .local v17, "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4820
    .local v16, "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 4821
    move-object/from16 v6, v16

    .line 4822
    goto :goto_2

    .line 4826
    .end local v16    # "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v17    # "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_7
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15300()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    .line 4827
    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    .line 4828
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v11, :cond_2

    .line 4829
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 4830
    .local v13, "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 4831
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15400()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v6

    .line 4832
    const-wide/16 v30, -0x64

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto/16 :goto_2

    .line 4846
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v13    # "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v31, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v32, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4848
    .local v7, "addOrMoveInfoRect":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 4849
    .local v19, "occupiedInfoRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 4850
    .local v21, "pageItemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v21, :cond_b

    .line 4851
    sget-object v28, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4852
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_a
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4853
    .local v15, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v31, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v32, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v33, v0

    add-int v32, v32, v33

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v33, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4855
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 4856
    const/16 v30, -0x1

    move/from16 v0, v30

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v30

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4857
    iget-wide v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    .line 4858
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4863
    .end local v15    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_b
    if-eqz v18, :cond_c

    .line 4864
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x64

    cmp-long v28, v30, v32

    if-eqz v28, :cond_e

    .line 4865
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->setPrevContainer(J)V

    .line 4866
    const-wide/16 v30, -0x64

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4871
    :cond_c
    :goto_5
    move-wide/from16 v0, v24

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 4874
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4877
    if-eqz v18, :cond_f

    .line 4878
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 4879
    .local v27, "values":Landroid/content/ContentValues;
    const-string v28, "container"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4880
    const-string v28, "screen"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4881
    const-string v28, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4882
    const-string v28, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4889
    .end local v27    # "values":Landroid/content/ContentValues;
    :goto_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_d

    .line 4890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15800()Landroid/content/Context;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 4894
    :cond_d
    if-eqz v18, :cond_10

    .line 4895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v12

    .line 4896
    .local v12, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    new-instance v30, Lcom/android/launcher3/home/HomeLoader$50$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v8}, Lcom/android/launcher3/home/HomeLoader$50$1;-><init>(Lcom/android/launcher3/home/HomeLoader$50;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$15900(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 4907
    .end local v12    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :goto_7
    monitor-exit v29

    goto/16 :goto_3

    .line 4868
    :cond_e
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    goto/16 :goto_5

    .line 4885
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    goto :goto_6

    .line 4905
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method
