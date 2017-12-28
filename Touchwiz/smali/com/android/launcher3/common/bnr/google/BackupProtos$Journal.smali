.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Journal"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;


# instance fields
.field public appVersion:I

.field public backupVersion:I

.field public bytes:J

.field public key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

.field public profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

.field public rows:I

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .line 419
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    if-nez v0, :cond_1

    .line 386
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .line 391
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    return-object v0

    .line 391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    .line 423
    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    .line 424
    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    .line 425
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    .line 426
    invoke-static {}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 427
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->cachedSize:I

    .line 430
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 463
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    .line 464
    .local v2, "size":I
    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    .line 465
    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 466
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    .line 467
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 468
    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 469
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    .line 470
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 472
    :cond_0
    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    if-eqz v3, :cond_1

    .line 473
    const/4 v3, 0x4

    iget v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    .line 474
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    aget-object v0, v3, v1

    .line 479
    .local v0, "element":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    if-eqz v0, :cond_2

    .line 480
    const/4 v3, 0x5

    .line 481
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 477
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "element":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    if-eq v3, v8, :cond_4

    .line 486
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    .line 487
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 489
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v3, :cond_5

    .line 490
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 491
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 493
    :cond_5
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 501
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 502
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 506
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    :sswitch_0
    return-object p0

    .line 512
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    goto :goto_0

    .line 516
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    goto :goto_0

    .line 520
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    goto :goto_0

    .line 524
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    goto :goto_0

    .line 528
    :sswitch_5
    const/16 v5, 0x2a

    .line 529
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 530
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-nez v5, :cond_2

    move v1, v4

    .line 531
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 533
    .local v2, "newArray":[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    if-eqz v1, :cond_1

    .line 534
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 537
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    aput-object v5, v2, v1

    .line 538
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 539
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v1, v5

    goto :goto_1

    .line 542
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_3
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    aput-object v5, v2, v1

    .line 543
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 544
    iput-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    goto :goto_0

    .line 548
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    goto :goto_0

    .line 552
    :sswitch_7
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v5, :cond_4

    .line 553
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 555
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 436
    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 437
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 438
    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 439
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->bytes:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 441
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    if-eqz v2, :cond_1

    .line 442
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->rows:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    aget-object v0, v2, v1

    .line 447
    .local v0, "element":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    if-eqz v0, :cond_2

    .line 448
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 445
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "element":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    if-eq v2, v6, :cond_4

    .line 453
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 455
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v2, :cond_5

    .line 456
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 458
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 459
    return-void
.end method
