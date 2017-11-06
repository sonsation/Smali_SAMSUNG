.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
.super Ljava/lang/Object;
.source "QueueMode.java"


# static fields
.field private static final BIT_MASK:I = 0xff

.field private static final PART_BITS:I = 0x8

.field private static final REPEAT_PART:I = 0x1

.field private static final SHUFFLE_PART:I = 0x0

.field private static final UNION_PART:I = 0x2

.field private static final UNKNOWN_QUEUE_MODE:I = -0x1


# instance fields
.field private mQueueMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    .line 59
    return-void
.end method

.method public static create()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    .locals 1
    .param p0, "union"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;-><init>()V

    .line 32
    .local v0, "w":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setUnion(I)V

    .line 33
    return-object v0
.end method

.method public static create(II)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    .locals 1
    .param p0, "repeat"    # I
    .param p1, "shuffle"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;-><init>()V

    .line 25
    .local v0, "w":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setRepeat(I)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->setShuffle(I)V

    .line 27
    return-object v0
.end method

.method public static create(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    .locals 2
    .param p0, "w"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;-><init>()V

    .line 38
    .local v0, "q":Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    .line 39
    return-object v0
.end method

.method private static get(II)I
    .locals 2
    .param p0, "org"    # I
    .param p1, "part"    # I

    .prologue
    .line 47
    mul-int/lit8 v0, p1, 0x8

    .line 48
    .local v0, "partShift":I
    ushr-int v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method private static set(III)I
    .locals 4
    .param p0, "org"    # I
    .param p1, "part"    # I
    .param p2, "value"    # I

    .prologue
    .line 52
    mul-int/lit8 v1, p1, 0x8

    .line 53
    .local v1, "partShift":I
    const/16 v3, 0xff

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int v0, p0, v3

    .line 54
    .local v0, "orgValue":I
    and-int/lit16 v3, p2, 0xff

    shl-int v2, v3, v1

    .line 55
    .local v2, "partValue":I
    or-int v3, v0, v2

    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 63
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeat()I
    .locals 3

    .prologue
    .line 85
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->get(II)I

    move-result v0

    .line 86
    .local v0, "repeat":I
    return v0
.end method

.method public getShuffle()I
    .locals 3

    .prologue
    .line 91
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->get(II)I

    move-result v0

    .line 92
    .local v0, "shuffle":I
    return v0
.end method

.method public getUnion()I
    .locals 3

    .prologue
    .line 97
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->get(II)I

    move-result v0

    .line 98
    .local v0, "union":I
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    return v0
.end method

.method public setRepeat(I)V
    .locals 2
    .param p1, "repeat"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->set(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    .line 73
    return-void
.end method

.method public setShuffle(I)V
    .locals 2
    .param p1, "shuffle"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->set(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    .line 77
    return-void
.end method

.method public setUnion(I)V
    .locals 2
    .param p1, "union"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->set(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->mQueueMode:I

    .line 81
    return-void
.end method
