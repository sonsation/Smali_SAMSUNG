.class public final Lcom/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 410
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 413
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 419
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 420
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    .line 421
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 422
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 418
    return-void
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 496
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 497
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 498
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 500
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 501
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 495
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 514
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 512
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 480
    if-gez p1, :cond_0

    .line 481
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 483
    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v1

    .line 484
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 485
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 486
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 488
    :cond_1
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 492
    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readMessage(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 4
    .param p1, "msg"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 216
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 599
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 339
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 340
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 341
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 342
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    .line 343
    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 342
    or-int/2addr v4, v5

    .line 344
    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 342
    or-int/2addr v4, v5

    .line 345
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 342
    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 351
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 352
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 353
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 354
    .local v3, "b4":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 355
    .local v4, "b5":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 356
    .local v5, "b6":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 357
    .local v6, "b7":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    .line 358
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    .line 359
    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 360
    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 361
    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 362
    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 363
    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 364
    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 365
    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 289
    .local v2, "tmp":B
    if-ltz v2, :cond_0

    .line 290
    return v2

    .line 292
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    .line 293
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 294
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    .line 318
    :cond_1
    :goto_0
    return v1

    .line 296
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 298
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 300
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 302
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 304
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 305
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 306
    if-gez v2, :cond_1

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_5

    .line 310
    return v1

    .line 308
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_6
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 325
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 327
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 328
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 329
    return-wide v2

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 333
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 190
    .local v1, "size":I
    if-gez v1, :cond_0

    .line 191
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 193
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 194
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 198
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 199
    return-object v0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 73
    return v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public rewindToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 581
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    if-gez p1, :cond_1

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 580
    return-void
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 109
    return v2

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    .line 112
    return v2

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 115
    return v2

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 119
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 120
    const/4 v1, 0x4

    .line 119
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 121
    return v2

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    .line 126
    return v2

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    if-gez p1, :cond_0

    .line 641
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 644
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 646
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 648
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 651
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 653
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 639
    return-void

    .line 655
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
