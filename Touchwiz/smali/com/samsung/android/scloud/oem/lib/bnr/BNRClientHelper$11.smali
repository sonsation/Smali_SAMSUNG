.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 428
    const-string v4, "is_success"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 429
    .local v2, "isSuccess":Z
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RESTORE_COMPLETE, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v3, "result":Landroid/os/Bundle;
    const-string v4, "is_success"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    if-eqz v2, :cond_a

    .line 434
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1102(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;

    .line 436
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RESTORE_COMPLETE, restoredKeyList size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ltz v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v5, p1, v4}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreComplete(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RESTORE_COMPLETE, restoreComplete() return false "

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$700(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    const-string v4, "is_success"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    :cond_1
    :goto_0
    return-object v3

    .line 444
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 447
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    .line 448
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/RestoreFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/RestoreFileList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1202(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;

    .line 449
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 450
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, "downloadFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 453
    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearPreRestoredData() delete, name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 457
    .end local v0    # "downloadFile":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    .line 458
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/DownloadFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/DownloadFileList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1302(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;

    .line 459
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 460
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    .restart local v0    # "downloadFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v1    # "file":Ljava/io/File;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 463
    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearPreRestoredData() delete, name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 465
    .end local v0    # "downloadFile":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 468
    :cond_a
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-static {v4, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$700(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    const-string v4, "is_success"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
