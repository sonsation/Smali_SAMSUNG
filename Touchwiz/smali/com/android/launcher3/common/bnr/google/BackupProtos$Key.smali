.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final FAVORITE:I = 0x1

.field public static final FAVORITE_HOMEONLY:I = 0x5

.field public static final ICON:I = 0x3

.field public static final SCREEN:I = 0x2

.field public static final SCREEN_HOMEONLY:I = 0x6

.field public static final WIDGET:I = 0x4

.field public static final WIDGET_HOMEONLY:I = 0x7

.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;


# instance fields
.field public checksum:J

.field public id:J

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 48
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    .line 53
    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    .line 54
    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->cachedSize:I

    .line 56
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 77
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 78
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_0
    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    .line 86
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_1
    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 89
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    .line 90
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 101
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 105
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    :sswitch_0
    return-object p0

    .line 111
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 112
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    goto :goto_0

    .line 126
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    goto :goto_0

    .line 130
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    goto :goto_0

    .line 134
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 69
    :cond_1
    iget-wide v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 72
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 73
    return-void
.end method
