.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private bytearr:[B

.field private chararr:[C

.field private lineBuffer:[C

.field private readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/16 v1, 0x50

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->bytearr:[B

    .line 62
    new-array v0, v1, [C

    iput-object v0, p0, Ljava/io/DataInputStream;->chararr:[C

    .line 393
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    .line 54
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 14
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x80

    .line 586
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v9

    .line 587
    .local v9, "utflen":I
    const/4 v0, 0x0

    .line 588
    .local v0, "bytearr":[B
    const/4 v4, 0x0

    .line 589
    .local v4, "chararr":[C
    instance-of v10, p0, Ljava/io/DataInputStream;

    if-eqz v10, :cond_2

    move-object v8, p0

    .line 590
    check-cast v8, Ljava/io/DataInputStream;

    .line 591
    .local v8, "dis":Ljava/io/DataInputStream;
    iget-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    array-length v10, v10

    if-ge v10, v9, :cond_0

    .line 592
    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [B

    iput-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    .line 593
    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [C

    iput-object v10, v8, Ljava/io/DataInputStream;->chararr:[C

    .line 595
    :cond_0
    iget-object v4, v8, Ljava/io/DataInputStream;->chararr:[C

    .line 596
    .local v4, "chararr":[C
    iget-object v0, v8, Ljava/io/DataInputStream;->bytearr:[B

    .line 603
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .local v0, "bytearr":[B
    :goto_0
    const/4 v7, 0x0

    .line 604
    .local v7, "count":I
    const/4 v5, 0x0

    .line 606
    .local v5, "chararr_count":I
    invoke-interface {p0, v0, v13, v9}, Ljava/io/DataInput;->readFully([BII)V

    move v6, v5

    .line 608
    .end local v5    # "chararr_count":I
    .local v6, "chararr_count":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 609
    aget-byte v10, v0, v7

    and-int/lit16 v1, v10, 0xff

    .line 610
    .local v1, "c":I
    const/16 v10, 0x7f

    if-le v1, v10, :cond_3

    .line 615
    .end local v1    # "c":I
    :cond_1
    :goto_2
    if-ge v7, v9, :cond_9

    .line 616
    aget-byte v10, v0, v7

    and-int/lit16 v1, v10, 0xff

    .line 617
    .restart local v1    # "c":I
    shr-int/lit8 v10, v1, 0x4

    packed-switch v10, :pswitch_data_0

    .line 653
    :pswitch_0
    new-instance v10, Ljava/io/UTFDataFormatException;

    .line 654
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 653
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 598
    .end local v1    # "c":I
    .end local v6    # "chararr_count":I
    .end local v7    # "count":I
    .local v0, "bytearr":[B
    .local v4, "chararr":[C
    :cond_2
    new-array v0, v9, [B

    .line 599
    .local v0, "bytearr":[B
    new-array v4, v9, [C

    .local v4, "chararr":[C
    goto :goto_0

    .line 611
    .restart local v1    # "c":I
    .restart local v6    # "chararr_count":I
    .restart local v7    # "count":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 612
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    int-to-char v10, v1

    aput-char v10, v4, v6

    move v6, v5

    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    goto :goto_1

    .line 620
    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    .line 621
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    int-to-char v10, v1

    aput-char v10, v4, v6

    :goto_3
    move v6, v5

    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    goto :goto_2

    .line 625
    :pswitch_2
    add-int/lit8 v7, v7, 0x2

    .line 626
    if-le v7, v9, :cond_4

    .line 627
    new-instance v10, Ljava/io/UTFDataFormatException;

    .line 628
    const-string v11, "malformed input: partial character at end"

    .line 627
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 629
    :cond_4
    add-int/lit8 v10, v7, -0x1

    aget-byte v2, v0, v10

    .line 630
    .local v2, "char2":I
    and-int/lit16 v10, v2, 0xc0

    if-eq v10, v12, :cond_5

    .line 631
    new-instance v10, Ljava/io/UTFDataFormatException;

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 631
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 633
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    and-int/lit8 v10, v1, 0x1f

    shl-int/lit8 v10, v10, 0x6

    .line 634
    and-int/lit8 v11, v2, 0x3f

    .line 633
    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v4, v6

    goto :goto_3

    .line 638
    .end local v2    # "char2":I
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    :pswitch_3
    add-int/lit8 v7, v7, 0x3

    .line 639
    if-le v7, v9, :cond_6

    .line 640
    new-instance v10, Ljava/io/UTFDataFormatException;

    .line 641
    const-string v11, "malformed input: partial character at end"

    .line 640
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 642
    :cond_6
    add-int/lit8 v10, v7, -0x2

    aget-byte v2, v0, v10

    .line 643
    .restart local v2    # "char2":I
    add-int/lit8 v10, v7, -0x1

    aget-byte v3, v0, v10

    .line 644
    .local v3, "char3":I
    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v12, :cond_7

    and-int/lit16 v10, v3, 0xc0

    if-eq v10, v12, :cond_8

    .line 645
    :cond_7
    new-instance v10, Ljava/io/UTFDataFormatException;

    .line 646
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 645
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 647
    :cond_8
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0xc

    .line 648
    and-int/lit8 v11, v2, 0x3f

    shl-int/lit8 v11, v11, 0x6

    .line 647
    or-int/2addr v10, v11

    .line 649
    and-int/lit8 v11, v3, 0x3f

    shl-int/lit8 v11, v11, 0x0

    .line 647
    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v4, v6

    goto/16 :goto_3

    .line 658
    .end local v1    # "c":I
    .end local v2    # "char2":I
    .end local v3    # "char3":I
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    :cond_9
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4, v13, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v10

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 246
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 247
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 248
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 269
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 270
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 271
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 366
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 171
    return-void
.end method

.method public final readFully([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    if-gez p3, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 197
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 198
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 199
    .local v0, "count":I
    if-gez v0, :cond_1

    .line 200
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 201
    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 193
    .end local v0    # "count":I
    :cond_2
    return-void
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 390
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 499
    iget-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    .line 501
    .local v0, "buf":[C
    if-nez v0, :cond_0

    .line 502
    const/16 v6, 0x80

    new-array v0, v6, [C

    .end local v0    # "buf":[C
    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    .line 505
    .restart local v0    # "buf":[C
    :cond_0
    array-length v5, v0

    .line 506
    .local v5, "room":I
    const/4 v3, 0x0

    .line 510
    .local v3, "offset":I
    :goto_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    sparse-switch v1, :sswitch_data_0

    .line 526
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    .line 527
    add-int/lit16 v6, v3, 0x80

    new-array v0, v6, [C

    .line 528
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v5, v6, -0x1

    .line 529
    iget-object v6, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    invoke-static {v6, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 530
    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    .line 532
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    int-to-char v6, v1

    aput-char v6, v0, v3

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 516
    :sswitch_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 517
    .local v2, "c2":I
    const/16 v6, 0xa

    if-eq v2, v6, :cond_3

    if-eq v2, v9, :cond_3

    .line 518
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    instance-of v6, v6, Ljava/io/PushbackInputStream;

    if-nez v6, :cond_2

    .line 519
    new-instance v6, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .line 521
    :cond_2
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v6, Ljava/io/PushbackInputStream;

    invoke-virtual {v6, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 536
    .end local v2    # "c2":I
    :cond_3
    :sswitch_1
    if-ne v1, v9, :cond_4

    if-nez v3, :cond_4

    .line 537
    return-object v10

    .line 539
    :cond_4
    invoke-static {v0, v8, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 510
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 414
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    aget-byte v0, v0, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 415
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 414
    add-long/2addr v0, v2

    .line 416
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 414
    add-long/2addr v0, v2

    .line 417
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 414
    add-long/2addr v0, v2

    .line 418
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 414
    add-long/2addr v0, v2

    .line 419
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    .line 414
    add-long/2addr v0, v2

    .line 420
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    .line 414
    add-long/2addr v0, v2

    .line 421
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    .line 414
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 318
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 292
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 293
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 294
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 342
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "total":I
    const/4 v0, 0x0

    .line 223
    .local v0, "cur":I
    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v3, p1, v1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    if-lez v0, :cond_0

    .line 224
    add-int/2addr v1, v0

    goto :goto_0

    .line 227
    :cond_0
    return v1
.end method
