.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;
.super Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
.source "MilkServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceResult(IIILandroid/content/Intent;)V
    .locals 12
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "object"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, "MilkServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceResult() onServiceResult : reqID - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reqType - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", rspType - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "reason - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$000(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$200(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/content/Intent;)V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 78
    .local v3, "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    if-eqz v3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    :cond_0
    const-string/jumbo v1, "responseData"

    .line 83
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .line 84
    .local v7, "resultData":Landroid/os/Parcelable;
    const-string/jumbo v1, "responseExtData"

    .line 85
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 87
    .local v8, "extras":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v0, p4

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->checkBroadcastCallback(IILandroid/content/Intent;)Z

    move-result v9

    .line 89
    .local v9, "existBroadcast":Z
    const-string v1, "MilkServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceResult() broadcast - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", callback - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reqMapSize - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 91
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reqMap - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 92
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v3, :cond_2

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->access$300(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/os/Handler;

    move-result-object v11

    new-instance v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;IIILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    if-eqz v9, :cond_1

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-object/from16 v0, p4

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->broadcastCallback(IIILandroid/content/Intent;)V

    .line 112
    .end local v3    # "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .end local v7    # "resultData":Landroid/os/Parcelable;
    .end local v8    # "extras":[Ljava/lang/Object;
    .end local v9    # "existBroadcast":Z
    :cond_1
    :goto_0
    monitor-exit v10

    .line 113
    return-void

    .line 106
    .restart local v3    # "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .restart local v7    # "resultData":Landroid/os/Parcelable;
    .restart local v8    # "extras":[Ljava/lang/Object;
    .restart local v9    # "existBroadcast":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->broadcastCallback(IIILandroid/content/Intent;)V

    goto :goto_0

    .line 112
    .end local v3    # "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .end local v7    # "resultData":Landroid/os/Parcelable;
    .end local v8    # "extras":[Ljava/lang/Object;
    .end local v9    # "existBroadcast":Z
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_3
    :try_start_1
    const-string v1, "MilkServiceHelper"

    const-string v2, "onServiceResult() onServiceResult : context or reqmap is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
