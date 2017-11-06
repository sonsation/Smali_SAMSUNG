.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 726
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 727
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 22
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 732
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 733
    :cond_0
    const/4 v12, 0x0

    .line 767
    :cond_1
    return-object v12

    .line 735
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v17, "idsGroup":Ljava/util/List;, "Ljava/util/List<[J>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 738
    .local v14, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v20

    .line 739
    .local v20, "size":I
    const/4 v11, 0x0

    .line 744
    .local v11, "audioIdCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    .line 745
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "keyword":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$700(Lcom/samsung/android/app/music/list/local/PlaylistFragment;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v19, v3

    .line 748
    .local v19, "projection":[Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v5, "unknown"

    .line 750
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 751
    .local v2, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v6, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v8, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v9, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v10, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v5, v14

    move-object/from16 v7, v19

    .line 752
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 751
    .local v13, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 754
    :try_start_0
    invoke-static {v13}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v12

    .line 755
    .local v12, "audioIds":[J
    array-length v3, v12

    add-int/2addr v11, v3

    .line 756
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 757
    if-eqz v13, :cond_3

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 744
    .end local v2    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v4    # "keyword":Ljava/lang/String;
    .end local v12    # "audioIds":[J
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v19    # "projection":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 757
    .restart local v2    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v4    # "keyword":Ljava/lang/String;
    .restart local v12    # "audioIds":[J
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v19    # "projection":[Ljava/lang/String;
    :catch_0
    move-exception v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 751
    .end local v12    # "audioIds":[J
    :catch_1
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    :catchall_0
    move-exception v5

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    throw v3

    :catch_2
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 761
    .end local v2    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v4    # "keyword":Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v19    # "projection":[Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    .line 762
    .local v18, "index":I
    new-array v12, v11, [J

    .line 763
    .restart local v12    # "audioIds":[J
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    .line 764
    .local v16, "ids":[J
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v5, v12, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    move-object/from16 v0, v16

    array-length v5, v0

    add-int v18, v18, v5

    .line 766
    goto :goto_4

    .line 757
    .end local v12    # "audioIds":[J
    .end local v16    # "ids":[J
    .end local v18    # "index":I
    .restart local v2    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v4    # "keyword":Ljava/lang/String;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v19    # "projection":[Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_2
.end method
