.class final Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    if-eqz p2, :cond_1

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "inside onServiceConnected mFTServiceConn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;-><init>(Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;)V

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileUpdateReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b()Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Z)V

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b()Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v2, "onServiceConnected: File Transfer service connected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "onServiceConnected: File Transfer service not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "onServiceDisconnected: File Transfer service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b()Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b()Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->b()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    move-result-object v1

    iget v6, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    iget-object v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->c:Ljava/lang/String;

    const/16 v7, 0x800

    invoke-virtual {v1, v6, v0, v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V

    goto :goto_2
.end method
