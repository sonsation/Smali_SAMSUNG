.class public final Lcom/samsung/android/sdk/accessory/SAAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAdapter$a;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$b;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/samsung/android/sdk/accessory/SAAdapter;


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/accessory/SAAdapter$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:J

.field private f:I

.field private g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

.field private h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

.field private i:Lcom/samsung/accessory/api/IDeathCallback;

.field private j:Landroid/os/ResultReceiver;

.field private k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter$a;-><init>(B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->i:Lcom/samsung/accessory/api/IDeathCallback;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object v0
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/os/RemoteException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->e()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->i:Lcom/samsung/accessory/api/IDeathCallback;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->k:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/accessory/SAAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    return-wide v0
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to tear framework connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic f(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->f()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;I[BZIIII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v5, p2

    move-object v4, p1

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v5, p2

    move-object v4, p1

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    int-to-long v5, p2

    move-object v4, p1

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed send data for connection:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v1, Lcom/samsung/android/sdk/accessory/c;

    const/16 v2, 0x800

    const-string/jumbo v3, "send: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method final a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    const/16 v8, 0x800

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const-wide/16 v4, -0x1

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "findPeerAgents:mServiceProxy is null"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to initiate peer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const-string v1, "findPeerAgents:Remote call failed"

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to reject service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "rejectServiceConnection:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to request peer authentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "authenticatePeeragent:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to request service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "requestServiceConnection:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;J[BZIII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v1 .. v12}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send messages "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "sendMessage: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, -0x705

    goto :goto_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to fetch localAgent ID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "getLocalAgentId:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/sdk/accessory/c;

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Failed to fetch localAgent ID"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    const-string v1, "agentId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to accept service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "acceptServiceConnection:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/accessory/c;

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Failed to accept connection request!"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    const-string v1, "connectionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v0
.end method

.method final declared-synchronized a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-wide v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "Unable to bind to Samsung Accessory Service!"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x901

    const-string v2, "Permission validation failed to bind to Samsung Accessory Service! Please re-install the application and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->d:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->h:Lcom/samsung/android/sdk/accessory/SAAdapter$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_4
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v3, "getDefaultAdapter: About start waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, -0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v1, Lcom/samsung/android/sdk/accessory/c;

    const-string v2, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(I)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "Is the Samsung Accessory Service Framework installed?!"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Application is now connected to Accessory Framework!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_6
    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x900

    const-string v2, "Permission denied to bind to Samsung Accessory Service! Please add permission and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to send message delivery status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final declared-synchronized a(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to register mex callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "registerMexCallback: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final declared-synchronized a([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$b;

    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$b;->c()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Service registration call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "registerServices:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to close service connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string v2, "closeServiceConnection:Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method final declared-synchronized b(Lcom/samsung/android/sdk/accessory/SAAdapter$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b([B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->j:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to cleanup agent details"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->g:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->e:J

    invoke-interface {v0, v2, v3, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->a:Ljava/lang/String;

    const-string v2, "Failed to unregister mex callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v1, 0x800

    const-string/jumbo v2, "unregisterMexCallback: Remote call failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method
