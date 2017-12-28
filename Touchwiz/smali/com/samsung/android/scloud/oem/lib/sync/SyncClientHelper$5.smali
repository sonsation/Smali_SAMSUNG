.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$5;
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
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 681
    const-string v1, "data_version"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 683
    .local v3, "dataVersion":I
    const-string v1, "SCloudClientHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPLOAD : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", v : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v1, "local_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "localId":Ljava/lang/String;
    const-string v1, "upload_file_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 695
    .local v5, "toUploadAttFile":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 699
    .local v6, "fdList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->getLocalChange(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, "content":Ljava/lang/String;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 707
    .local v12, "result":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 713
    .local v10, "fw":Ljava/io/FileWriter;
    if-eqz v7, :cond_1

    .line 721
    :try_start_0
    const-string v1, "content_sync_file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 725
    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v11, Ljava/io/FileWriter;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .end local v10    # "fw":Ljava/io/FileWriter;
    .local v11, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v11, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 729
    const-string v1, "SCloudClientHelper"

    const-string v2, "write content Str : content.sync"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    .line 737
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    :goto_0
    :try_start_2
    const-string v1, "is_success"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    const-string v1, "upload_file_list"

    invoke-virtual {v12, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    if-eqz v10, :cond_0

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 767
    :cond_0
    :goto_1
    return-object v12

    .line 733
    :cond_1
    :try_start_4
    const-string v1, "SCloudClientHelper"

    const-string v2, "content is null : content.sync"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v8

    .line 745
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v1, "SCloudClientHelper"

    const-string v2, "getLocalChange err "

    invoke-static {v1, v2, v8}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    const-string v1, "is_success"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 753
    if-eqz v10, :cond_0

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 755
    :catch_1
    move-exception v8

    .line 757
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 755
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 757
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 751
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 753
    :goto_3
    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 759
    :cond_2
    :goto_4
    throw v1

    .line 755
    :catch_3
    move-exception v8

    .line 757
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 751
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 743
    .end local v10    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v8

    move-object v10, v11

    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v10    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method
