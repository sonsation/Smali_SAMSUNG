.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckedMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;


# instance fields
.field public checksum:J

.field public payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    .line 178
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    if-nez v0, :cond_1

    .line 160
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->cachedSize:I

    .line 184
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 198
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    .line 199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    .line 201
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 211
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 215
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :sswitch_0
    return-object p0

    .line 221
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 191
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 192
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 193
    return-void
.end method
