.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDataParser"
.end annotation


# instance fields
.field private mCommandID:S

.field private mEnableTlv:Z

.field private mKeyType:I

.field private mRawData:[B

.field private mServiceName:Ljava/lang/String;

.field private mTlvTag:I

.field private mTlvValue:[B

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 654
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 657
    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 658
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 659
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 661
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    .line 662
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 663
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 654
    return-void
.end method

.method private ByteArrayToInt([B)I
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 801
    array-length v1, p1

    if-ge v1, v3, :cond_0

    .line 802
    return v2

    .line 804
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 805
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 806
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 807
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method private ByteArrayToShort([B)S
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 790
    array-length v1, p1

    if-ge v1, v3, :cond_0

    .line 791
    return v2

    .line 793
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 794
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 796
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method


# virtual methods
.method public ParserData([B)Z
    .locals 12
    .param p1, "in"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 708
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 709
    .local v1, "shortTemp":[B
    new-array v0, v9, [B

    .line 712
    .local v0, "intTemp":[B
    array-length v4, p1

    if-ge v4, v10, :cond_0

    .line 713
    return v7

    .line 716
    :cond_0
    aget-byte v4, p1, v7

    iput-byte v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 719
    const/4 v4, 0x2

    invoke-static {p1, v8, v1, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 720
    invoke-direct {p0, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToShort([B)S

    move-result v4

    iput-short v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 722
    const-string v4, "DeviceRootKeyServiceSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CommandID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-short v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    packed-switch v4, :pswitch_data_0

    .line 784
    return v7

    .line 729
    :pswitch_0
    invoke-static {p1, v11, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 730
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 731
    return v8

    .line 735
    :pswitch_1
    const/4 v4, 0x7

    aget-byte v4, p1, v4

    if-ne v4, v8, :cond_1

    .line 736
    iput-boolean v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 741
    :goto_0
    invoke-static {p1, v11, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 742
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 745
    const/16 v4, 0x8

    invoke-static {p1, v4, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 746
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 749
    .local v2, "strSize":I
    new-array v3, v2, [B

    .line 750
    .local v3, "stringTemp":[B
    invoke-static {p1, v10, v3, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 751
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    .line 752
    return v8

    .line 738
    .end local v2    # "strSize":I
    .end local v3    # "stringTemp":[B
    :cond_1
    iput-boolean v7, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    goto :goto_0

    .line 757
    :pswitch_2
    return v8

    .line 761
    :pswitch_3
    invoke-static {p1, v11, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 762
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 765
    const/16 v4, 0x8

    invoke-static {p1, v4, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 766
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 769
    .restart local v2    # "strSize":I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 770
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    invoke-static {p1, v10, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 771
    return v8

    .line 775
    .end local v2    # "strSize":I
    :pswitch_4
    const/16 v4, 0x8

    invoke-static {p1, v4, v0, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 776
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 779
    .restart local v2    # "strSize":I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 780
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    invoke-static {p1, v10, v4, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 781
    return v8

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCommandId()S
    .locals 1

    .prologue
    .line 673
    iget-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    return v0
.end method

.method public getEnableTlv()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTlvTag()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    return v0
.end method

.method public getTlvValue()[B
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 668
    iget-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    return v0
.end method
