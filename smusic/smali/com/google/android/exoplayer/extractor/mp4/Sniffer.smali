.class final Lcom/google/android/exoplayer/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso3"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso4"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iso5"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iso6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avc1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hvc1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hev1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mp41"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp42"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3g2a"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3g2b"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3gr6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3gs6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3ge6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3gg6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4V "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "M4A "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f4v "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "kddi"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M4VP"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "qt  "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MSNV"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 7
    .param p0, "brand"    # I

    .prologue
    const/4 v4, 0x1

    .line 174
    ushr-int/lit8 v5, p0, 0x8

    const-string v6, "3gp"

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v4

    .line 177
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 178
    .local v1, "compatibleBrand":I
    if-eq v1, p0, :cond_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "compatibleBrand":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z
    .locals 22
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    .line 94
    .local v16, "inputLength":J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x1000

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    :cond_0
    const-wide/16 v16, 0x1000

    .end local v16    # "inputLength":J
    :cond_1
    move-wide/from16 v0, v16

    long-to-int v11, v0

    .line 97
    .local v11, "bytesToSearch":I
    new-instance v9, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 98
    .local v9, "buffer":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v10, 0x0

    .line 99
    .local v10, "bytesSearched":I
    const/4 v12, 0x0

    .line 100
    .local v12, "foundGoodFileType":Z
    const/4 v15, 0x0

    .line 101
    .local v15, "isFragmented":Z
    :cond_2
    :goto_0
    if-ge v10, v11, :cond_6

    .line 103
    const/16 v13, 0x8

    .line 104
    .local v13, "headerSize":I
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 106
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 107
    .local v6, "atomSize":J
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 108
    .local v5, "atomType":I
    const-wide/16 v18, 0x1

    cmp-long v18, v6, v18

    if-nez v18, :cond_3

    .line 109
    const/16 v13, 0x10

    .line 110
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 114
    :cond_3
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_4

    .line 116
    const/16 v18, 0x0

    .line 166
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :goto_1
    return v18

    .line 118
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v13    # "headerSize":I
    :cond_4
    add-int/2addr v10, v13

    .line 120
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 125
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    .line 127
    :cond_5
    const/4 v15, 0x1

    .line 166
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :cond_6
    if-eqz v12, :cond_e

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    const/16 v18, 0x1

    goto :goto_1

    .line 131
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v13    # "headerSize":I
    :cond_7
    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    int-to-long v0, v13

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    int-to-long v0, v11

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 136
    int-to-long v0, v13

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 137
    .local v4, "atomDataSize":I
    add-int/2addr v10, v4

    .line 138
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    .line 140
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v4, v0, :cond_8

    .line 141
    const/16 v18, 0x0

    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v4, :cond_9

    .line 144
    new-array v0, v4, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 146
    :cond_9
    iget-object v0, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 147
    div-int/lit8 v8, v4, 0x4

    .line 148
    .local v8, "brandsCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v8, :cond_c

    .line 149
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 151
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 148
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 152
    :cond_b
    invoke-virtual {v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 153
    const/4 v12, 0x1

    .line 157
    :cond_c
    if-nez v12, :cond_2

    .line 159
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 161
    .end local v8    # "brandsCount":I
    .end local v14    # "i":I
    :cond_d
    if-eqz v4, :cond_2

    .line 163
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto/16 :goto_0

    .line 166
    .end local v4    # "atomDataSize":I
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v13    # "headerSize":I
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
