.class final Lcom/samsung/android/sdk/accessory/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/samsung/accessory/a/a/a;

.field private b:I

.field private c:I

.field private d:Lcom/samsung/android/sdk/accessory/d;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/accessory/g$a;->b:I

    iput p2, p0, Lcom/samsung/android/sdk/accessory/g$a;->c:I

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/g$a;->e:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/accessory/d;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/d;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->d:Lcom/samsung/android/sdk/accessory/d;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/g$a;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method private b(I[BII)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/accessory/a/a/a;->a([BII)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/g$a;->e:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : payload received ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v2}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->d:Lcom/samsung/android/sdk/accessory/d;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/d;->c()I
    :try_end_0
    .catch Lcom/samsung/accessory/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BufferException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/c;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final a(I[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x3

    const/4 v2, 0x2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v1}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->b:I

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    iput-object v3, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/a;->a()Lcom/samsung/android/sdk/accessory/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/accessory/a;->b(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/g$a;->b(I[BII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received a non-fragment in <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/g$a;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> while blob receive in progress...!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->d:Lcom/samsung/android/sdk/accessory/d;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result v1

    if-ne p1, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->b:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    iput-object v3, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! Clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/accessory/a;->a()Lcom/samsung/android/sdk/accessory/a;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->c:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/a;->b(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/g$a;->b(I[BII)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->d:Lcom/samsung/android/sdk/accessory/d;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/d;->b()I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/g$a;->d:Lcom/samsung/android/sdk/accessory/d;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/d;->c()I

    move-result v1

    if-ne p1, v1, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/g$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reassembling failed, received invalid fragment!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/g$a;->b(I[BII)I

    move-result v0

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid fragment index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received in <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/g$a;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
