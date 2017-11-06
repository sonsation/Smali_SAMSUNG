.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;
.super Ljava/lang/Object;
.source "DlnaManager.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractSeed(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, "seedStr":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/allshare/extension/ItemExtractor;->extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v0

    .line 521
    .local v0, "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSeedString()Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_0
    return-object v1
.end method

.method private onUpdateDlnaDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v11, "SV-Dlna"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onUpdateDlnaDB() - start - mItemList.size(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v13}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v10, "valueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v6

    .line 535
    .local v6, "len":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 537
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Item;

    .line 538
    .local v3, "audioItem":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v8

    .line 539
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 540
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v9, "value":Landroid/content/ContentValues;
    const-string v11, "provider_id"

    move-object/from16 v0, p2

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v11, "provider_name"

    move-object/from16 v0, p1

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v11, "artist"

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getArtist()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v11, "album"

    .line 545
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getAlbumTitle()Ljava/lang/String;

    move-result-object v12

    .line 544
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v11, "album_id"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string/jumbo v11, "title"

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v11, "_data"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v2

    .line 552
    .local v2, "albumArtUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 553
    const-string v11, "album_art"

    .line 554
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 553
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    const-string v11, "mime_type"

    .line 557
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v12

    .line 556
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v11, "duration"

    .line 559
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getDuration()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 558
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    const-string v11, "_size"

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getFileSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 561
    const-string v11, "extension"

    .line 562
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getExtension()Ljava/lang/String;

    move-result-object v12

    .line 561
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v11, "genre_name"

    .line 564
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getGenre()Ljava/lang/String;

    move-result-object v12

    .line 563
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->extractSeed(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "seed":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 567
    const-string/jumbo v11, "seed"

    invoke-virtual {v9, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_1
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v2    # "albumArtUri":Landroid/net/Uri;
    .end local v7    # "seed":Ljava/lang/String;
    .end local v9    # "value":Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 571
    :cond_2
    const-string v11, "SV-Dlna"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " item has null uri."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->remove(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v5, v5, -0x1

    .line 575
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v6

    goto :goto_1

    .line 579
    .end local v3    # "audioItem":Lcom/samsung/android/allshare/Item;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object v13

    .line 580
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/ContentValues;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/ContentValues;

    .line 579
    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    .line 582
    .local v4, "count":I
    const-string v11, "SV-Dlna"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onUpdateDlnaDB() - insert - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " items is updated to DB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->size()I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1602(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I

    .line 585
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 513
    const-string v0, "SV-Dlna"

    const-string v1, "mFlatBrowseResponseListener - onCancel()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 515
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 516
    return-void
.end method

.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 5
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 476
    const-string v2, "SV-Dlna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFlatBrowseResponseListener - onError()? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, "errInt":I
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    const/4 v0, 0x1

    .line 500
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.dlna.flat.searching.error"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.music.dlna.flat.searching.extra.error"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v2, "com.sec.android.app.music.dlna.extra.deviceId"

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    return-void

    .line 483
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 485
    :cond_3
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 486
    const/4 v0, 0x3

    goto :goto_0

    .line 487
    :cond_4
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    .line 488
    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 489
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 490
    :cond_6
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 491
    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    .line 492
    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 493
    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 494
    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 495
    :cond_8
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const/4 v0, 0x6

    goto/16 :goto_0
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 463
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener - onFinish() - deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 464
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 466
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    return-void
.end method

.method public onProgress(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener - onProgress() - items count? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 446
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->onUpdateDlnaDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 453
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 422
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlatBrowseResponseListener - onStart() - deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 423
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 430
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v0, v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "provider_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 433
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 431
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->clear()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    new-instance v1, Lcom/samsung/android/allshare/extension/UniqueItemArray;

    invoke-direct {v1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/extension/UniqueItemArray;)Lcom/samsung/android/allshare/extension/UniqueItemArray;

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1602(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I

    .line 440
    return-void
.end method
