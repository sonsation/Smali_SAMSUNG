.class Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V

    .line 365
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 19
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 370
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v9, "ids":Ljava/util/List;, "Ljava/util/List<[J>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    .line 372
    .local v2, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 373
    .local v6, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 374
    .local v15, "size":I
    const/4 v10, 0x0

    .line 375
    .local v10, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_4

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 377
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 378
    .local v13, "position":I
    invoke-virtual {v2, v13}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    .line 379
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 380
    const-string v16, "SMUSIC-UiList"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid item selected position "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v13    # "position":I
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 384
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "position":I
    :cond_1
    invoke-virtual {v2, v13}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getAudioId(I)J

    move-result-wide v4

    .line 385
    .local v4, "audioId":J
    const-wide/16 v16, -0x1

    cmp-long v16, v4, v16

    if-nez v16, :cond_2

    .line 386
    const-string v16, "SMUSIC-UiList"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid audioId position "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v12

    .line 391
    .local v12, "mimeType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v4, v5, v12}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$700(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/content/ContentResolver;JI)[J

    move-result-object v3

    .line 392
    .local v3, "audioIds":[J
    if-eqz v3, :cond_3

    array-length v0, v3

    move/from16 v16, v0

    :goto_2
    add-int v10, v10, v16

    .line 393
    if-lez v10, :cond_0

    .line 394
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 398
    .end local v3    # "audioIds":[J
    .end local v4    # "audioId":J
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v12    # "mimeType":I
    .end local v13    # "position":I
    :cond_4
    new-array v14, v10, [J

    .line 399
    .local v14, "resultList":[J
    const/4 v13, 0x0

    .line 400
    .restart local v13    # "position":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 401
    .local v11, "list":[J
    const/16 v17, 0x0

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    array-length v0, v11

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 403
    goto :goto_3

    .line 404
    .end local v11    # "list":[J
    :cond_5
    return-object v14
.end method
