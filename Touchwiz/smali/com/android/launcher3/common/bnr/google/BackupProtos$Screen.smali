.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Screen"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;


# instance fields
.field public id:J

.field public rank:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 914
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    .line 915
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 2

    .prologue
    .line 896
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    if-nez v0, :cond_1

    .line 897
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    if-nez v0, :cond_0

    .line 900
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    .line 902
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    return-object v0

    .line 902
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 2

    .prologue
    .line 918
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    .line 920
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->cachedSize:I

    .line 921
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 936
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 937
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    .line 938
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    if-eqz v1, :cond_0

    .line 940
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    .line 941
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 952
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 956
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    :sswitch_0
    return-object p0

    .line 962
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    goto :goto_0

    .line 966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    goto :goto_0

    .line 952
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 890
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

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
    .line 927
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 928
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 931
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 932
    return-void
.end method
