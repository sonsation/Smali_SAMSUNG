.class final Lcom/samsung/android/sdk/accessory/SASocket$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->b(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessory/SASocket;

.field private final synthetic b:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->b:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->d:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->c()J

    move-result-wide v4

    new-instance v6, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;)V

    new-instance v7, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;)V

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection accepted successfully. connection Id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to accept service connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$2;->a:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->a()I

    move-result v0

    invoke-static {v1, v9, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->a(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V

    goto :goto_0
.end method
