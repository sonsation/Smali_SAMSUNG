.class Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;
.super Ljava/lang/Object;
.source "SeslPositionMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    .line 47
    if-nez p1, :cond_0

    .line 48
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 49
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    .line 55
    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 56
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealIntArraySize(I)I

    move-result p1

    .line 52
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 53
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 150
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 151
    .local v2, "n":I
    const/4 v3, 0x0

    .line 152
    .local v3, "o":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 153
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    .line 155
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 156
    aget-object v4, v5, v0

    .line 158
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 159
    if-eq v0, v3, :cond_0

    .line 160
    aget v6, v1, v0

    aput v6, v1, v3

    .line 161
    aput-object v4, v5, v3

    .line 162
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 165
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    .line 170
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 173
    return-void
.end method

.method static idealBooleanArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 405
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 397
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 398
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 399
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 401
    .end local p0    # "need":I
    :cond_0
    return p0

    .line 397
    .restart local p0    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static idealCharArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 413
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 421
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 417
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 429
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static idealObjectArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 425
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealShortArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 409
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 334
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->put(ILjava/lang/Object;)V

    .line 361
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 343
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 344
    .local v3, "pos":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 345
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealIntArraySize(I)I

    move-result v0

    .line 347
    .local v0, "n":I
    new-array v1, v0, [I

    .line 348
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 351
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 355
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    .line 358
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    aput p1, v4, v3

    .line 359
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 360
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    const/4 v4, 0x0

    .line 318
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 319
    .local v1, "n":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    .line 321
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 322
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    .line 326
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    .line 327
    return-void
.end method

.method public clone()Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    const/4 v1, 0x0

    .line 63
    .local v1, "clone":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;

    move-object v1, v0

    .line 64
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 65
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->clone()Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 101
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    .line 107
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 88
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 91
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 285
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 307
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    if-ge v0, v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 311
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 307
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insertKeyRange(II)V
    .locals 0
    .param p1, "keyStart"    # I
    .param p2, "count"    # I

    .prologue
    .line 141
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    return-void
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 245
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 181
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    invoke-static {v4, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 183
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 184
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 225
    :goto_0
    return-void

    .line 186
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 188
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 189
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    aput p1, v4, v0

    .line 190
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 194
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 198
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    invoke-static {v4, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 201
    :cond_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 202
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->idealIntArraySize(I)I

    move-result v1

    .line 204
    .local v1, "n":I
    new-array v2, v1, [I

    .line 205
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 208
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    .line 212
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    .line 215
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 217
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mKeys:[I

    aput p1, v4, v0

    .line 222
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 223
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 113
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->delete(I)V

    .line 114
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 120
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    .line 124
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 133
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->removeAt(I)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public removeKeyRange(Ljava/util/ArrayList;II)V
    .locals 0
    .param p2, "keyStart"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p1, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 277
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 236
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 372
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 373
    const-string/jumbo v4, "{}"

    .line 393
    :goto_0
    return-object v4

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mSize:I

    if-ge v1, v4, :cond_3

    .line 379
    if-lez v1, :cond_1

    .line 380
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->keyAt(I)I

    move-result v2

    .line 383
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 386
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 387
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 392
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;, "Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap<TE;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->gc()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
