.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceProfileData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;


# instance fields
.field public cols:I

.field public colsHomeOnly:I

.field public homeIndex:I

.field public homeIndexHomeOnly:I

.field public rows:I

.field public rowsHomeOnly:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 281
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v0, :cond_1

    .line 251
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    .line 285
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    .line 286
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    .line 287
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    .line 288
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    .line 289
    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cachedSize:I

    .line 291
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 309
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    .line 310
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    .line 312
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    .line 314
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    .line 316
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    .line 318
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    .line 320
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 330
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 334
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    :sswitch_0
    return-object p0

    .line 340
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    goto :goto_0

    .line 344
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    goto :goto_0

    .line 348
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    goto :goto_0

    .line 352
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    goto :goto_0

    .line 356
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    goto :goto_0

    .line 360
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 298
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 299
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 300
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 301
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 302
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 303
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 304
    return-void
.end method
