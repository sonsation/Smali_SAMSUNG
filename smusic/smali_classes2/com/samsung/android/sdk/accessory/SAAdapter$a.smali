.class final Lcom/samsung/android/sdk/accessory/SAAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const-wide/16 v8, -0x1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v6

    monitor-enter v6

    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accessory service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity.Invalid response from Framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_3
    const-string v1, "fwk_version"

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/i;->d(I)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const-string v2, "clientId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;J)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->e(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to setup client Identity.Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "errorcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received Client ID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->e(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.PROCESS_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->d()I

    move-result v1

    const/16 v2, 0x4f

    if-lt v1, v2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->e(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running in SAP process, Updated my proxy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->f(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "com.samsung.accessory.adapter.extra.HEADER_LEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/i;->a(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.FOOTER_LEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/i;->c(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.MSG_HEADER_LEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/i;->b(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->g(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    monitor-exit v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to setup client Identity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Accessory service disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->h(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
