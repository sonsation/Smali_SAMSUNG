.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartDeleteable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/HeartFragment$1;

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    return-void
.end method

.method private removeShortcuts()V
    .locals 11

    .prologue
    .line 1427
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1429
    .local v1, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 1430
    .local v7, "sp":Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 1432
    .local v6, "size":I
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .line 1434
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 1435
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1436
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 1437
    .local v5, "position":I
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1438
    .local v4, "listType":I
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    .line 1439
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText2(I)Ljava/lang/String;

    move-result-object v9

    .line 1440
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getSubCategory(I)I

    move-result v8

    .line 1442
    .local v8, "subCategoryType":I
    invoke-static {v1, v4, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v10

    .line 1441
    invoke-static {v1, v10, v3, v9, v8}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->uninstallShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1434
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v4    # "listType":I
    .end local v5    # "position":I
    .end local v8    # "subCategoryType":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1430
    .end local v0    # "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .end local v2    # "i":I
    .end local v6    # "size":I
    :cond_1
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    goto :goto_0

    .line 1446
    .restart local v0    # "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 20

    .prologue
    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "HTIT"

    const-string v7, "Delete"

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->removeShortcuts()V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCheckedItemIds(I)[J

    move-result-object v11

    .line 1455
    .local v11, "ids":[J
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_4

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 1457
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 1458
    .local v9, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    .line 1459
    .local v8, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 1460
    .local v18, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    .local v4, "albumIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v5, "artisIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .local v6, "milkMagazineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 1465
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1468
    .local v16, "listType":I
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v15

    .line 1469
    .local v15, "keyword":Ljava/lang/String;
    const/16 v2, 0x55

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 1470
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    .end local v15    # "keyword":Ljava/lang/String;
    .end local v16    # "listType":I
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1471
    .restart local v15    # "keyword":Ljava/lang/String;
    .restart local v16    # "listType":I
    :cond_1
    const/16 v2, 0x54

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1472
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1473
    :cond_2
    const/16 v2, 0x56

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 1474
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1479
    .end local v15    # "keyword":Ljava/lang/String;
    .end local v16    # "listType":I
    :cond_3
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 1480
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1483
    .end local v4    # "albumIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "artisIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "milkMagazineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .end local v9    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v10    # "i":I
    .end local v18    # "size":I
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v2, " _id IN("

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v17, "sb":Ljava/lang/StringBuilder;
    array-length v3, v11

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    aget-wide v12, v11, v2

    .line 1485
    .local v12, "id":J
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1487
    .end local v12    # "id":J
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 1489
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    .line 1490
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    .line 1489
    move-object/from16 v0, v19

    invoke-static {v2, v3, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v14

    .line 1493
    .local v14, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v2, v14, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v2, :cond_6

    .line 1494
    check-cast v14, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v14    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v14}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 1496
    :cond_6
    return-void
.end method
