.class Lcom/android/server/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverServiceManager;
    .param p2, "val$type"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iput p2, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 179
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected : name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get6(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap3(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    .line 183
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap4(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 187
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;

    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V

    .line 191
    .restart local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bound:cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverServiceManager;->-wrap8(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get2(Lcom/android/server/cover/CoverServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get3(Lcom/android/server/cover/CoverServiceManager;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 195
    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    .line 196
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get4(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 178
    return-void

    .line 189
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    goto :goto_0

    .line 181
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 201
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected : name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get6(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap3(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    .line 205
    .local v0, "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 207
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->-wrap7(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbound:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap8(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get0()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onServiceDisconnected : retry to connect led cover service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/server/cover/CoverServiceManager;->-wrap6(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 200
    return-void

    .line 214
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onServiceDisconnected : give up to connect led cover service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "info":Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
