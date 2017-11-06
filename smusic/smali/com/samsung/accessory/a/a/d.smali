.class final Lcom/samsung/accessory/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/a/a/d$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static final h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/accessory/a/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Lcom/samsung/accessory/a/a/a;
    .locals 2

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/accessory/a/a/d;->c(I)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Lcom/samsung/accessory/a/a/a;
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    sget v1, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v4, v0

    sub-int/2addr v1, v4

    sput v1, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-static {v3}, Lcom/samsung/accessory/a/a/d$a;->a(Lcom/samsung/accessory/a/a/d$a;)V

    new-instance v1, Lcom/samsung/accessory/a/a/a;

    invoke-direct {v1, v0, p1}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    move-object v0, v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(ILjava/lang/String;)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/samsung/accessory/a/a/e;)V
    .locals 6

    const v4, 0x10400

    const/16 v2, 0x18

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "BufferPool already initialised!"

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/samsung/accessory/a/a/d;->e:I

    iget v0, p0, Lcom/samsung/accessory/a/a/e;->c:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/accessory/a/a/e;->b:I

    iget v1, p0, Lcom/samsung/accessory/a/a/e;->c:I

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialise the Bufferpool! [Cache size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/accessory/a/a/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Max chunk size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/a/a/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/a/a/e;->a:Ljava/lang/String;

    sput-object v0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/accessory/a/a/e;->b:I

    sput v0, Lcom/samsung/accessory/a/a/d;->a:I

    iget v0, p0, Lcom/samsung/accessory/a/a/e;->c:I

    sput v0, Lcom/samsung/accessory/a/a/d;->b:I

    if-gt v0, v4, :cond_7

    sget v0, Lcom/samsung/accessory/a/a/d;->b:I

    move v3, v0

    :goto_1
    sget v0, Lcom/samsung/accessory/a/a/d;->a:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/samsung/accessory/a/a/d;->c:I

    sget v0, Lcom/samsung/accessory/a/a/d;->a:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/samsung/accessory/a/a/d;->d:I

    const/16 v0, 0x24

    move v1, v2

    :goto_2
    if-le v1, v3, :cond_3

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->e()V

    sget v0, Lcom/samsung/accessory/a/a/d;->b:I

    if-le v0, v4, :cond_6

    sget v0, Lcom/samsung/accessory/a/a/d;->b:I

    invoke-static {v0}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/a/a/d;->f:Z

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BufferPool[v1.0.2] initialised with capacity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/accessory/a/a/d;->a:I

    const/high16 v3, 0x100000

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v5

    goto/16 :goto_0

    :cond_3
    if-gt v1, v3, :cond_4

    invoke-static {v1}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    :cond_4
    if-eq v1, v2, :cond_5

    if-gt v0, v3, :cond_5

    invoke-static {v0}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    :cond_5
    shl-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lcom/samsung/accessory/a/a/d;->e(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    sget-object v1, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/samsung/accessory/a/a/d;->f:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v2, "isLowMemoryDevice(): ActivityManager is null!"

    invoke-static {v0, v2}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v2, 0x80

    if-ge v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Z
    .locals 8

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to recycle buffer - Bufferpool not initialised!"

    invoke-static {v1, v0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Cannot recycle null buffer!"

    invoke-static {v1, v0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    array-length v1, p0

    sget-object v3, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v3

    const/16 v0, 0x18

    if-lt v1, v0, :cond_2

    :try_start_0
    sget v0, Lcom/samsung/accessory/a/a/d;->b:I

    if-le v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot recycle buffer \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\', Non-matcing size!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    move v0, v2

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    sget-object v3, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {v0}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/samsung/accessory/a/a/d$a;->a()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/accessory/a/a/d$a;->e()Z

    move-result v6

    if-nez v6, :cond_5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_5
    :try_start_3
    sget v6, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr v6, v1

    sget v7, Lcom/samsung/accessory/a/a/d;->a:I

    if-le v6, v7, :cond_7

    invoke-virtual {v4}, Lcom/samsung/accessory/a/a/d$a;->d()F

    move-result v4

    float-to-int v4, v4

    div-int/2addr v4, v0

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lt v6, v4, :cond_6

    const/4 v1, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot recycle buffer \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\', Buffer chunk count("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") exceeded the limit"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/accessory/a/a/d;->d()I

    sget v4, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr v4, v1

    sget v6, Lcom/samsung/accessory/a/a/d;->a:I

    if-le v4, v6, :cond_7

    const/4 v1, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot recycle buffer \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    move v0, v2

    goto/16 :goto_0

    :cond_7
    if-ne v0, v1, :cond_8

    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_2
    sget v0, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/accessory/a/a/d;->e:I

    monitor-exit v3

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(I)Z
    .locals 7

    const/4 v2, 0x5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Failed to clear cache - Bufferpool not initialised!"

    invoke-static {v2, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v3

    sparse-switch p0, :sswitch_data_0

    :try_start_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_0
    :try_start_1
    sget v1, Lcom/samsung/accessory/a/a/d;->c:I

    move v2, v1

    :goto_1
    const/4 v1, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClearCache["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : Cache Size BEFORE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    sget v1, Lcom/samsung/accessory/a/a/d;->e:I

    if-gt v1, v2, :cond_1

    const/4 v1, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/samsung/accessory/a/a/d;->d:I

    move v2, v1

    goto :goto_1

    :sswitch_2
    move v2, v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_3

    :cond_2
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClearCache : Cache Size AFTER = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/a/a/d$a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/samsung/accessory/a/a/d;->e:I

    if-gt v0, v2, :cond_5

    :cond_4
    sget v0, Lcom/samsung/accessory/a/a/d;->e:I

    if-le v0, v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget v6, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v0, v0

    sub-int v0, v6, v0

    sput v0, Lcom/samsung/accessory/a/a/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0x28 -> :sswitch_0
        0x3c -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/samsung/accessory/a/a/d;->a:I

    return v0
.end method

.method private static c(I)Lcom/samsung/accessory/a/a/a;
    .locals 6

    sget-object v4, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v0, Lcom/samsung/accessory/a/a/d;->b:I

    if-le p0, v0, :cond_0

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/accessory/a/a/a;

    new-array v1, p0, [B

    invoke-direct {v0, v1, p0}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    monitor-exit v4

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v3, p0

    :goto_1
    invoke-static {v3, p0}, Lcom/samsung/accessory/a/a/d;->a(II)Lcom/samsung/accessory/a/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v3

    :goto_2
    if-nez v1, :cond_1

    const/4 v5, 0x3

    if-le v2, v5, :cond_4

    :cond_1
    if-nez v1, :cond_6

    new-instance v0, Lcom/samsung/accessory/a/a/a;

    new-array v1, v3, [B

    invoke-direct {v0, v1, p0}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    invoke-static {v3}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/samsung/accessory/a/a/d$a;->a(Lcom/samsung/accessory/a/a/d$a;)V

    :cond_2
    :goto_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    const v0, 0x7fffffff

    :goto_4
    const/16 v5, 0x18

    if-lt v0, v5, :cond_1

    const v5, 0x10400

    if-gt v0, v5, :cond_1

    sget v5, Lcom/samsung/accessory/a/a/d;->b:I

    if-gt v0, v5, :cond_1

    invoke-static {v0, p0}, Lcom/samsung/accessory/a/a/d;->a(II)Lcom/samsung/accessory/a/a/a;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private static d()I
    .locals 10

    const/4 v1, 0x0

    sget-object v4, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v5, Lcom/samsung/accessory/a/a/d;->e:I

    sget-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v1

    :goto_0
    if-lt v3, v6, :cond_0

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pool Stabilized; Cache size reduced from  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    sget v0, Lcom/samsung/accessory/a/a/d;->e:I

    sub-int v0, v5, v0

    monitor-exit v4

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/a/a/d$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/d$a;->d()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/d$a;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    float-to-int v7, v2

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v8

    if-nez v8, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    :cond_1
    :goto_2
    if-gt v2, v7, :cond_4

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget v9, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v0, v0

    sub-int v0, v9, v0

    sput v0, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(I)Lcom/samsung/accessory/a/a/d$a;
    .locals 2

    sget-object v1, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/a/a/d$a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e()V
    .locals 5

    const/4 v4, 0x4

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    :try_start_0
    monitor-exit v2

    return-void

    :cond_0
    aget v3, v1, v0

    invoke-static {v3}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static e(I)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/samsung/accessory/a/a/d;->b:I

    if-gt p0, v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v0, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/accessory/a/a/d$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/a/a/d$a;-><init>(IB)V

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
