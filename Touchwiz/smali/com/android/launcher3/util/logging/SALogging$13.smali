.class Lcom/android/launcher3/util/logging/SALogging$13;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 605
    .local v17, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v6, 0x35

    .line 608
    .local v6, "currentMode":C
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;)[C

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    aget-char v13, v22, v21

    .line 609
    .local v13, "mode":C
    if-ne v6, v13, :cond_8

    .line 610
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderCountInHome(Landroid/content/Context;)I

    move-result v14

    .line 611
    .local v14, "numOfHomeFolders":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901dd

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogUtils;->getHotseatAppItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 615
    .local v10, "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 616
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 617
    .local v8, "detail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/launcher3/util/logging/SALogging;->access$800(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v18

    .line 618
    .local v18, "statusID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 606
    .end local v6    # "currentMode":C
    .end local v8    # "detail":Ljava/lang/String;
    .end local v10    # "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v13    # "mode":C
    .end local v14    # "numOfHomeFolders":I
    .end local v18    # "statusID":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v6, 0x33

    goto :goto_0

    :cond_1
    const/16 v6, 0x30

    goto :goto_0

    .line 621
    .restart local v6    # "currentMode":C
    .restart local v10    # "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v13    # "mode":C
    .restart local v14    # "numOfHomeFolders":I
    :cond_2
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v5

    .line 622
    .local v5, "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901da

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v5, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901d9

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget v0, v5, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 627
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v19

    .line 628
    .local v19, "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901e3

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901e2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901d1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 633
    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v25

    .line 632
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 635
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v5

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901d0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v5, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v19

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901d2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901df

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v25, v0

    .line 643
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v25

    .line 642
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901db

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v25, v0

    .line 646
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v25

    .line 645
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901d8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 649
    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/util/logging/SALogUtils;->getShortcutOnHomeCount(Landroid/content/Context;)I

    move-result v25

    .line 648
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901de

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v26, 0x1

    .line 652
    invoke-static/range {v25 .. v26}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v25

    .line 651
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 654
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->insertEnterSearchCount(Landroid/content/Context;Z)V

    .line 656
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogUtils;->getGSWData(Landroid/content/Context;)Lcom/android/launcher3/util/logging/SALogUtils$GSW;

    move-result-object v7

    .line 657
    .local v7, "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    if-eqz v7, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901e8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v7, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901e6

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget v0, v7, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901e4

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v7, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->access$500(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v8

    .line 665
    .restart local v8    # "detail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const v24, 0x7f0901dc

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 668
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v25, 0x7f0901ea

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v26, 0x1

    .line 669
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "1"

    .line 667
    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 672
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v25, 0x7f0901e1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 673
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "2"

    .line 671
    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 676
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v25, 0x7f0901c8

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 677
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    .line 675
    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 679
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 680
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v25, 0x7f0901e5

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 681
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    .line 679
    :goto_6
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 683
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [I

    .line 684
    .local v9, "gridXY":[I
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    const/16 v24, 0x0

    aget v24, v9, v24

    const/16 v25, 0x1

    aget v25, v9, v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    .line 687
    sget-object v20, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogUtils;->getHideApps(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v12

    .line 688
    .local v12, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v24, v0

    const v20, 0x7f0901d6

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v24, v0

    const v20, 0x7f0901d7

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .end local v5    # "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    .end local v7    # "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    .end local v8    # "detail":Ljava/lang/String;
    .end local v9    # "gridXY":[I
    .end local v10    # "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v14    # "numOfHomeFolders":I
    .end local v19    # "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    :goto_7
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto/16 :goto_1

    .line 669
    .restart local v5    # "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    .restart local v7    # "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    .restart local v8    # "detail":Ljava/lang/String;
    .restart local v10    # "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v14    # "numOfHomeFolders":I
    .restart local v19    # "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    :cond_4
    const-string v20, "0"

    goto/16 :goto_3

    .line 673
    :cond_5
    const-string v20, "1"

    goto/16 :goto_4

    .line 677
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 681
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 691
    .end local v5    # "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    .end local v7    # "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    .end local v8    # "detail":Ljava/lang/String;
    .end local v10    # "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v14    # "numOfHomeFolders":I
    .end local v19    # "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v24, "com.sec.android.app.launcher.prefs.sa"

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 692
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 693
    .local v16, "prefEditor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_9
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 694
    .restart local v18    # "statusID":Ljava/lang/String;
    const/16 v20, 0x33

    move/from16 v0, v20

    if-ne v6, v0, :cond_a

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v15

    .line 696
    .local v15, "otherModeID":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 697
    .end local v15    # "otherModeID":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v25, "status_home"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v15

    .line 699
    .restart local v15    # "otherModeID":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 702
    .end local v15    # "otherModeID":Ljava/lang/String;
    .end local v18    # "statusID":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_7

    .line 705
    .end local v13    # "mode":C
    .end local v16    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    return-void
.end method
