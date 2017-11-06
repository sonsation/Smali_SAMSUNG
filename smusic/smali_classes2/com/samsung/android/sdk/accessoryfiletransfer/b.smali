.class public final Lcom/samsung/android/sdk/accessoryfiletransfer/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z


# instance fields
.field private b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

.field private c:Landroid/content/Context;

.field private f:Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    const-class v1, Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iput-object p0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v3, 0x800

    const-string v4, "Package name is null!"

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->h:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_4
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v3, "SAFTAdapter: About start waiting"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    :goto_1
    :try_start_5
    sget-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->g:Z

    if-eqz v0, :cond_4

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v3, "getInstance: Woken up , FTService Connected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    if-nez p1, :cond_6

    :try_start_6
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "Calling agent was cleared from record. Please re-register your service."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :try_start_7
    sget-object v3, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/16 v3, 0x800

    const-string v4, "Timed out trying to bind to FT Service!"

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v3, "getInstance: FTService Connection Failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_9
    const-string v0, "[SA_SDK]SAFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is using FTService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v1

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/b;Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->f:Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/a;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->g:Z

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->g:Z

    return v0
.end method

.method static b(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/a;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessoryfiletransfer/b;)Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->f:Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    return-object v0
.end method

.method static synthetic b()Lcom/samsung/android/sdk/accessoryfiletransfer/b;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static c(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->g:Z

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "File transfer service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "Other applications are still using this FT binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "FT already unbound for this package. Please check whether the calling agent was registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v2, "AccessoryPreferences"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v2, "[SA_SDK]SAFileTransferManager"

    const-string v3, "Agent id was not found in prefs! Fetching from framework.."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ""

    :cond_0
    if-eqz p5, :cond_1

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/accessory/safiletransfer/a/k;

    const-string v5, ""

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, p6

    move-object/from16 v13, p5

    move-object/from16 v15, p2

    invoke-direct/range {v3 .. v15}, Lcom/samsung/accessory/safiletransfer/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v4, 0x4

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/a/k;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/a/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    move-object v4, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_4

    const-string v2, "STATUS"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ID"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    :goto_2
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "[SA_SDK]SAFileTransferManager"

    const-string v4, "File Pushed and Callback registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v2, v17

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/samsung/accessory/safiletransfer/a/j;

    const-string v5, ""

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p6

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/accessory/safiletransfer/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v2, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/a/j;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v2, v17

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v4, v16

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    move-object/from16 v4, v16

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_3

    :cond_4
    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto :goto_2
.end method

.method final a(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/a/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/accessory/safiletransfer/a/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    const-string/jumbo v1, "receiveStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "File Transfer Daemon could not queue request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method final a(I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/a/b;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/a/b;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "Could not register file event callback. Declining transfer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_2

    :try_start_1
    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/i;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/samsung/accessory/safiletransfer/a/i;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v1, "receiveStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "[SA_SDK]SAFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receiveStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/h;

    invoke-direct {v1, p2, p3, p5}, Lcom/samsung/accessory/safiletransfer/a/h;-><init>(ILjava/lang/String;Z)V

    new-instance v0, Lcom/samsung/accessory/safiletransfer/a/c;

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/h;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/accessory/safiletransfer/a/c;-><init>(ILorg/json/JSONObject;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "[SA_SDK]SAFileTransferManager"

    const-string v1, "File Transfer Daemon could not queue request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method final a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b:Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/b$a;->a()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->f:Lcom/samsung/android/sdk/accessoryfiletransfer/b$b;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;)V

    invoke-interface {v1, p2, v2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
