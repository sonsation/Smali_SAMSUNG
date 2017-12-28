.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;


# instance fields
.field public configure:Z

.field public icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

.field public label:Ljava/lang/String;

.field public minSpanX:I

.field public minSpanY:I

.field public preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    .line 1116
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 2

    .prologue
    .line 1082
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    if-nez v0, :cond_1

    .line 1083
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1085
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    if-nez v0, :cond_0

    .line 1086
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    .line 1088
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    return-object v0

    .line 1088
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1248
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1119
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    .line 1122
    iput-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1123
    iput-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1124
    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    .line 1125
    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    .line 1126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->cachedSize:I

    .line 1127
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1157
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1158
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1159
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1162
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    if-eqz v1, :cond_1

    .line 1165
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    .line 1166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-eqz v1, :cond_2

    .line 1169
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-eqz v1, :cond_3

    .line 1173
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    :cond_3
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    if-eq v1, v3, :cond_4

    .line 1177
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    .line 1178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_4
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    if-eq v1, v3, :cond_5

    .line 1181
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    .line 1182
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1193
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1197
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1198
    :sswitch_0
    return-object p0

    .line 1203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    goto :goto_0

    .line 1207
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    goto :goto_0

    .line 1211
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    goto :goto_0

    .line 1215
    :sswitch_4
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-nez v1, :cond_1

    .line 1216
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1222
    :sswitch_5
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-nez v1, :cond_2

    .line 1223
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1225
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1229
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    goto :goto_0

    .line 1233
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    goto :goto_0

    .line 1193
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1133
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1137
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    if-eqz v0, :cond_1

    .line 1138
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-eqz v0, :cond_2

    .line 1141
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    if-eqz v0, :cond_3

    .line 1144
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->preview:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1146
    :cond_3
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    if-eq v0, v2, :cond_4

    .line 1147
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1149
    :cond_4
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    if-eq v0, v2, :cond_5

    .line 1150
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1152
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1153
    return-void
.end method
