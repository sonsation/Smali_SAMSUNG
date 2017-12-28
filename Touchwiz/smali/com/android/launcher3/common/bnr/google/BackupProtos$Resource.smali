.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;


# instance fields
.field public data:[B

.field public dpi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1010
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 2

    .prologue
    .line 991
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-nez v0, :cond_1

    .line 992
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 997
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    return-object v0

    .line 997
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1072
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    .line 1014
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    .line 1015
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->cachedSize:I

    .line 1016
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1029
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1030
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    .line 1031
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1032
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    .line 1033
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1034
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1043
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1047
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    :sswitch_0
    return-object p0

    .line 1053
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    goto :goto_0

    .line 1057
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    goto :goto_0

    .line 1043
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 985
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

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
    .line 1022
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1023
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1024
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1025
    return-void
.end method
