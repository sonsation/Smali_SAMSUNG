.class public final Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/google/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorite"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;


# instance fields
.field public appWidgetId:I

.field public appWidgetProvider:Ljava/lang/String;

.field public cellX:I

.field public cellY:I

.field public container:I

.field public icon:[B

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public iconType:I

.field public id:J

.field public intent:Ljava/lang/String;

.field public itemType:I

.field public rank:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    .line 644
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 2

    .prologue
    .line 580
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    if-nez v0, :cond_1

    .line 581
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 583
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    sput-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    .line 586
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->_emptyArray:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 880
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 647
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    .line 648
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 650
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    .line 651
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    .line 652
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    .line 653
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    .line 654
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    .line 655
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    .line 656
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 659
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 661
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 662
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    .line 663
    iput v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cachedSize:I

    .line 665
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 723
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 724
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    .line 725
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    .line 727
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 730
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 732
    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    if-eqz v1, :cond_1

    .line 733
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    .line 734
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 736
    :cond_1
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    if-eqz v1, :cond_2

    .line 737
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    .line 738
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_2
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    if-eqz v1, :cond_3

    .line 741
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    .line 742
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_3
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    if-eqz v1, :cond_4

    .line 745
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    .line 746
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 748
    :cond_4
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    if-eqz v1, :cond_5

    .line 749
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    .line 750
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    :cond_5
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    if-eqz v1, :cond_6

    .line 753
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    .line 754
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_6
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v1, :cond_7

    .line 757
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    .line 758
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 761
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 762
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 765
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    .line 766
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_9
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-eqz v1, :cond_a

    .line 769
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    .line 770
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 773
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 774
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 777
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 778
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 780
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    .line 781
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    .line 782
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 784
    :cond_d
    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    if-eqz v1, :cond_e

    .line 785
    const/16 v1, 0x11

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    .line 786
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 788
    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 797
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 801
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    :sswitch_0
    return-object p0

    .line 807
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    goto :goto_0

    .line 811
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    goto :goto_0

    .line 815
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    goto :goto_0

    .line 819
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    goto :goto_0

    .line 823
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    goto :goto_0

    .line 827
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    goto :goto_0

    .line 831
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    goto :goto_0

    .line 835
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    goto :goto_0

    .line 839
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    goto :goto_0

    .line 843
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    goto :goto_0

    .line 847
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    goto :goto_0

    .line 851
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    goto :goto_0

    .line 855
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    goto :goto_0

    .line 859
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    goto :goto_0

    .line 863
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    goto :goto_0

    .line 867
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    goto :goto_0

    .line 871
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    goto/16 :goto_0

    .line 797
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
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
    .line 574
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

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
    .line 671
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 672
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 673
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 676
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    if-eqz v0, :cond_1

    .line 677
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 679
    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    if-eqz v0, :cond_2

    .line 680
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 682
    :cond_2
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    if-eqz v0, :cond_3

    .line 683
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 685
    :cond_3
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    if-eqz v0, :cond_4

    .line 686
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 688
    :cond_4
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    if-eqz v0, :cond_5

    .line 689
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 691
    :cond_5
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    if-eqz v0, :cond_6

    .line 692
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 694
    :cond_6
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    if-eqz v0, :cond_7

    .line 695
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 697
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 698
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 700
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 701
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 703
    :cond_9
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-eqz v0, :cond_a

    .line 704
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 706
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 707
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 709
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 710
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 712
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    .line 713
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 715
    :cond_d
    iget v0, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    if-eqz v0, :cond_e

    .line 716
    const/16 v0, 0x11

    iget v1, p0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 718
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 719
    return-void
.end method
