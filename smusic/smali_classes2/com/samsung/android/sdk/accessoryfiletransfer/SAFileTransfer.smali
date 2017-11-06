.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$a;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;
    }
.end annotation


# static fields
.field public static final ACTION_SAP_FILE_TRANSFER_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.ftconnection"

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field private static b:Ljava/util/Random;

.field private static c:I


# instance fields
.field a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

.field private d:Landroid/os/HandlerThread;

.field private e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

.field private f:Ljava/lang/Object;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private j:J

.field private k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

.field private l:Z

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->j:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileEventCallback parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Agent already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->c()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->d()Landroid/os/Handler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->j:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileEventCallback parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Agent already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->c()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->d()Landroid/os/Handler;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTransferCompleted() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_FILE_IO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_5
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_6
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_7
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_8
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_9
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_a
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onTransferCompleted() -> ERROR_FATAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_6
        0x5 -> :sswitch_2
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xb -> :sswitch_9
        0x800 -> :sswitch_a
    .end sparse-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :goto_0
    const-string/jumbo v0, "transId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    const-string v0, "agentClass"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AccessoryPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "peerId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class now:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Target agent was cleared. Re-registering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Calling agent was cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class name not matched with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "AgentInfo is NULL! Re-Registering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c()Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;->a()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callback is not registered for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "filePath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[SA_SDK]SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Informing app of incoming file transfer request on registered callback-tid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessoryfiletransfer/a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "[SA_SDK]SAFileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPathPermission calling pkg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file Path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string/jumbo v2, "transactionId already exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "checkReceiveParams return false, internal path"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "given path is a directory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_4
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "No extension provided"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_6

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "extension length is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "[SA_SDK]SAFileTransfer"

    const-string v3, "Directory does not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "getParentFile() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File successfully renamed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "File rename failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File successfully renamed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "File rename failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object v0
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    return-void
.end method

.method static synthetic b(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCancelAllCompleted() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/data/data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FileTransferHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$a;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$a;-><init>(B)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "FileTransferHandlerThread started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/a;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->o:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.accessory.ftconnection.internal"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->k:Lcom/samsung/android/sdk/accessoryfiletransfer/a;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/a;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v4, "android.support.v4.content.FileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authority:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_1
.end method

.method private e()I
    .locals 4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->j:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->j:J

    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b:Ljava/util/Random;

    invoke-virtual {v2, v0, v1}, Ljava/util/Random;->setSeed(J)V

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong transaction id used for cancel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer. Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    const-string v1, "AccessoryPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Your service was not found. Please re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public close()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot close as File Transfer is in progress!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-eqz v0, :cond_3

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopFileTransferService() called by : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    :goto_1
    return-void

    :cond_2
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Could not unregister receiver. Calling context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public receive(ILjava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    if-eq p1, v1, :cond_3

    :cond_2
    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransactionId: Given["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Current ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->l:Z

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong filepath or transaction id used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    invoke-direct {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;-><init>()V

    iput p1, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    iput-object p2, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    if-nez p2, :cond_6

    :try_start_1
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "File path is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "Cannot create the content URI !"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "[SA_SDK]SAFileTransfer"

    const-string/jumbo v3, "temp file deleted successfully "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    if-nez v1, :cond_b

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content URI needs to be implemented for receiving to internal folders. Please refer to sdk documentation for more details"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_2
    const-string v2, "[SA_SDK]SAFileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_temp_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v5, "[SA_SDK]SAFileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Temporary File Created for content URI : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-static {v5, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v3, "[SA_SDK]SAFileTransfer"

    const-string v4, "Cannot create the content URI !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "[SA_SDK]SAFileTransfer"

    const-string/jumbo v4, "temp file deleted successfully "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :cond_7
    const-string v3, "[SA_SDK]SAFileTransfer"

    const-string/jumbo v4, "temp file could not be deleted "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    :catch_3
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "Cannot create the content URI !!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_3

    :cond_8
    :try_start_4
    iput-object p2, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v1

    :goto_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "Cannot create the File !"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_3

    :cond_9
    const-string v2, "[SA_SDK]SAFileTransfer"

    const-string/jumbo v3, "temp file could not be deleted "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "Accessory Framework doesn\'t support content URI !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v0

    goto :goto_5
.end method

.method public reject(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:I

    if-eq v0, p1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong transaction id used in reject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;-><init>()V

    iput p1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->i:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Using invalid instance of SAFileTransfer(). Please re-register."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v8

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeerAgent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "File has a valid extentsion: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "URI scheme is SCHEME_FILE  File Path : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File doesnot exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong file..does not have extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "[SA_SDK]SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI ContentResolver is SCHEME_CONTENT File Path : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is a directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File length is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "File is valid !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->n:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    if-nez p2, :cond_c

    :try_start_3
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "File path is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the content URI !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_4
    if-nez v0, :cond_f

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content uri needs to be implemented for sending from internal folders.Please check file-transfer sdk documentation for more details"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_3

    :cond_c
    :try_start_4
    const-string v2, "[SA_SDK]SAFileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "Cannot create the content URI !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the content URI !! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_4

    :cond_d
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :cond_e
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "FTCore version doesnot support content uri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_f
    new-instance v9, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;

    invoke-direct {v9}, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;-><init>()V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_6 .. :try_end_6} :catch_5

    move-result v0

    :goto_6
    const-string v1, "[SA_SDK]SAFileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "received tx from FTCore"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v9, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    iput-object p2, v9, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v8, v7

    goto/16 :goto_0

    :cond_10
    move-object v5, v3

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v8

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->printStackTrace()V

    move v0, v8

    goto :goto_6

    :cond_11
    iput v6, v9, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->a:I

    iput-object p2, v9, Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "returning temporary transaction id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_12
    move-object v0, p2

    goto/16 :goto_2

    :cond_13
    move-object v0, p2

    goto/16 :goto_1
.end method
