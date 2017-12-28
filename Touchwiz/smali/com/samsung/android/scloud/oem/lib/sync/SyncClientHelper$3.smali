.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$3;
.super Ljava/lang/Object;
.source "SyncClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 513
    const-string v2, "SCloudClientHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PREPARE To Sync : "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v2, "sync_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, "syncKey":[Ljava/lang/String;
    const-string v2, "timestamp"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 521
    .local v5, "timestampList":[J
    const-string v2, "tag"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "tagList":[Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "accountName":Ljava/lang/String;
    const-string v2, "account_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, "accountType":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->prepareToSync(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 535
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;>;"
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v14, "result":Landroid/os/Bundle;
    if-eqz v12, :cond_1

    .line 539
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .line 541
    .local v15, "size":I
    new-array v13, v15, [Ljava/lang/String;

    .line 543
    .local v13, "localIdArr":[Ljava/lang/String;
    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 545
    .local v16, "syncKeyArr":[Ljava/lang/String;
    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 547
    .local v17, "tagArr":[Ljava/lang/String;
    new-array v0, v15, [J

    move-object/from16 v18, v0

    .line 549
    .local v18, "timestampArr":[J
    new-array v9, v15, [Z

    .line 553
    .local v9, "deletedArr":[Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v15, :cond_0

    .line 555
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    .line 557
    .local v11, "item":Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;
    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getLocalId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v10

    .line 559
    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v10

    .line 561
    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getTimestamp()J

    move-result-wide v2

    aput-wide v2, v18, v10

    .line 563
    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->isDeleted()Z

    move-result v2

    aput-boolean v2, v9, v10

    .line 565
    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;->getTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v17, v10

    .line 553
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 571
    .end local v11    # "item":Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;
    :cond_0
    const-string v2, "is_success"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 573
    const-string v2, "local_id"

    invoke-virtual {v14, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 575
    const-string v2, "sync_key"

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 577
    const-string v2, "timestamp"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 579
    const-string v2, "deleted"

    invoke-virtual {v14, v2, v9}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 581
    const-string v2, "tag"

    move-object/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 585
    .end local v9    # "deletedArr":[Z
    .end local v10    # "i":I
    .end local v13    # "localIdArr":[Ljava/lang/String;
    .end local v15    # "size":I
    .end local v16    # "syncKeyArr":[Ljava/lang/String;
    .end local v17    # "tagArr":[Ljava/lang/String;
    .end local v18    # "timestampArr":[J
    :cond_1
    return-object v14
.end method
