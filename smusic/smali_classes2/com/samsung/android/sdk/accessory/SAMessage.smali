.class public abstract Lcom/samsung/android/sdk/accessory/SAMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAMessage$a;,
        Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSORY_MESSAGE_DISABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_DISABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_ENABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_ENABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_RECEIVED"

.field public static final ERROR_PEER_AGENT_NOT_SUPPORTED:I = 0x703

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x702

.field public static final ERROR_PEER_AGENT_UNREACHABLE:I = 0x701

.field public static final ERROR_PEER_SERVICE_NOT_SUPPORTED:I = 0x704

.field public static final ERROR_SERVICE_NOT_SUPPORTED:I = 0x705

.field public static final ERROR_UNKNOWN:I = 0x706

.field public static final EXTRA_PEER_ACCESSORY:Ljava/lang/String; = "com.samsung.accessory.device.extra.SAPeerAccessory"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private c:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v1, "SAMessage() - empty agent instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message creation failed! - invalid agent instance supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->c:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    iget-object v0, p1, Lcom/samsung/android/sdk/accessory/SAAgent;->a:Lcom/samsung/android/sdk/accessory/SAAgent$b;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->a(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create SAMessage instance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v3, "Send: peerAgent null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Send Message Failed! - Peer Agent is invalid!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v3, "Send: data null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid data to send!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v3, "Send: invalid data length 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid data length 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    array-length v2, v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v3

    if-le v2, v3, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send: Data too big:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data Too long..! Data size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Max allowed Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .Please check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v3, "Send: agentId not retrieved!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to send message - Agent info empty!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->h()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x705

    :goto_0
    const/16 v3, 0x700

    if-eq v2, v3, :cond_6

    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->a()I

    move-result v2

    goto :goto_0

    :cond_6
    const/16 v13, -0x709

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz p3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->d()I

    move-result v6

    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/accessory/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v14}, Lcom/samsung/android/sdk/accessory/e;-><init>(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->b()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->c()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->c()I

    move-result v5

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/e;->a(IIII[B)V

    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/e;->a()Lcom/samsung/android/sdk/accessory/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    if-nez v15, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/e;->d()V

    move v2, v13

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->d()[B

    move-result-object v8

    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->e()I

    move-result v10

    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->f()I

    move-result v11

    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->g()I

    move-result v12

    move/from16 v9, p3

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Ljava/lang/String;J[BZIII)I

    move-result v13

    if-lez v13, :cond_9

    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-> msg<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/e;->b()Lcom/samsung/android/sdk/accessory/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/d;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/e;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->h()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Send Message Failed! <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/e;->d()V

    throw v3

    :cond_9
    packed-switch v13, :pswitch_data_0

    :try_start_4
    const-string v3, "Send Message Failed - internal error!"

    :goto_4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v3

    :try_start_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Send Message Failed"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v15}, Lcom/samsung/android/sdk/accessory/d;->h()V

    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :pswitch_0
    :try_start_7
    const-string v3, "Send Message Failed - Peer Agent is invalid!"

    goto :goto_4

    :pswitch_1
    const-string v3, "Send Message Failed - Message timed out!"
    :try_end_7
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch -0x708
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(JII)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ack failed! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Send Failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 13

    const/4 v8, -0x1

    const/16 v7, 0x706

    const/4 v12, 0x2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v1, "onMessageReceived(): Agent info empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.samsung.accessory.adapter.extra.READ_BYTES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "fragmentIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "peerAgent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string/jumbo v0, "transactionId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    const-string v1, "onMessageReceived(): PeerAgent is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-static {v0, v10, v11, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->a()I

    move-result v1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;II[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_6

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->a(Ljava/lang/Object;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v7

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    if-lez v1, :cond_4

    :try_start_2
    invoke-direct {p0, v10, v11, v9, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(JII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eq v2, v12, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0x700

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v2, v1, :cond_a

    move v1, v7

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in onRead! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    const/16 v1, 0x706

    :try_start_5
    invoke-direct {p0, v10, v11, v9, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(JII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v8, v12, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send message status! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v8, v12, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eq v8, v12, :cond_7

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    :cond_7
    throw v1

    :catchall_1
    move-exception v1

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->b([B)V

    if-eq v8, v12, :cond_8

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    :cond_8
    throw v1

    :catch_2
    move-exception v1

    :try_start_7
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send message status! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eq v2, v12, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    if-eq v2, v12, :cond_9

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/g;->b(Ljava/lang/Object;)V

    :cond_9
    throw v1

    :catchall_3
    move-exception v1

    move v8, v2

    goto :goto_3

    :catch_3
    move-exception v1

    move v8, v2

    goto/16 :goto_2

    :cond_a
    move v1, v8

    goto/16 :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "peerAgent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string/jumbo v1, "transactionId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errorcode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x700

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$a;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to un-register Mex callback! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$a;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->d(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->c:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    return-void
.end method

.method protected abstract onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V
.end method

.method protected abstract onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
.end method

.method protected abstract onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end method

.method public secureSend(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZ)I

    move-result v0

    return v0
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZ)I

    move-result v0

    return v0
.end method
