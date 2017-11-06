.class final Lcom/samsung/accessory/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/accessory/a/a/d$a;->a:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/accessory/a/a/d$a;->f:I

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->c:I

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/a/a/d$a;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/samsung/accessory/a/a/d$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/a/a/d$a;->f()V

    sget v0, Lcom/samsung/accessory/a/a/d$a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/accessory/a/a/d$a;->a:I

    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d()F
    .locals 4

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/a/a/d;->c()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/accessory/a/a/d$a;->c:I

    int-to-float v2, v2

    sget v3, Lcom/samsung/accessory/a/a/d$a;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->d:I

    iget-object v0, p0, Lcom/samsung/accessory/a/a/d$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/accessory/a/a/d$a;->e:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->d:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    :goto_0
    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/accessory/a/a/d$a;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/accessory/a/a/d$a;->e:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/a/a/d$a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
