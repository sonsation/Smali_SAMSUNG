.class Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/PlayableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayableListImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/SearchFragment$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;II)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 503
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->getPlayedItemAudioIds(II)[J

    move-result-object v0

    return-object v0
.end method

.method private getPlayedItemAudioIds(II)[J
    .locals 17
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 511
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v8, "ids":Ljava/util/List;, "Ljava/util/List<[J>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    .line 513
    .local v2, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v14}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 514
    .local v6, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 515
    .local v9, "length":I
    move/from16 v12, p1

    .local v12, "position":I
    :goto_0
    move/from16 v0, p2

    if-gt v12, v0, :cond_4

    .line 516
    invoke-virtual {v2, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    .line 517
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 518
    const-string v14, "SMUSIC-UiList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid item selected position "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {v2, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getAudioId(I)J

    move-result-wide v4

    .line 523
    .local v4, "audioId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v4, v14

    if-nez v14, :cond_2

    .line 524
    const-string v14, "SMUSIC-UiList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid audioId position "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 528
    :cond_2
    invoke-virtual {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getMatchedMimeType(Landroid/database/Cursor;)I

    move-result v11

    .line 529
    .local v11, "mimeType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v14, v6, v4, v5, v11}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$700(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/content/ContentResolver;JI)[J

    move-result-object v3

    .line 530
    .local v3, "audioIds":[J
    if-eqz v3, :cond_3

    array-length v14, v3

    :goto_2
    add-int/2addr v9, v14

    .line 531
    if-lez v9, :cond_0

    .line 532
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 530
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 535
    .end local v3    # "audioIds":[J
    .end local v4    # "audioId":J
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "mimeType":I
    :cond_4
    new-array v13, v9, [J

    .line 536
    .local v13, "resultList":[J
    const/4 v12, 0x0

    .line 537
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 538
    .local v10, "list":[J
    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v10, v15, v13, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    array-length v15, v10

    add-int/2addr v12, v15

    .line 540
    goto :goto_3

    .line 541
    .end local v10    # "list":[J
    :cond_5
    return-object v13
.end method


# virtual methods
.method public play(II)V
    .locals 2
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 507
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl$ItemIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    return-void
.end method
