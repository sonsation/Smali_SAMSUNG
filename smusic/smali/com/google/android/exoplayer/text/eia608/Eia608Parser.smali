.class public final Lcom/google/android/exoplayer/text/eia608/Eia608Parser;
.super Ljava/lang/Object;
.source "Eia608Parser.java"


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I


# instance fields
.field private final captions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/text/eia608/ClosedCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 38
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->BASIC_CHARACTER_SET:[I

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_CHARACTER_SET:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_PT_DE_CHARACTER_SET:[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    .line 86
    :array_2
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    .line 96
    :array_3
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method private addBufferedText()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;

    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private addCtrl(BB)V
    .locals 2
    .param p1, "ccData1"    # B
    .param p2, "ccData2"    # B

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->addBufferedText()V

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;-><init>(BB)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method private backspace()V
    .locals 2

    .prologue
    .line 239
    const/16 v0, 0x14

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->addCtrl(BB)V

    .line 240
    return-void
.end method

.method private static getChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 207
    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, v1, -0x20

    .line 208
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 217
    and-int/lit8 v0, p0, 0x1f

    .line 218
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 222
    and-int/lit8 v0, p0, 0x1f

    .line 223
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getSpecialChar(B)C
    .locals 2
    .param p0, "ccData"    # B

    .prologue
    .line 212
    and-int/lit8 v0, p0, 0xf

    .line 213
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method public static isSeiMessageEia608(IILcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 7
    .param p0, "payloadType"    # I
    .param p1, "payloadLength"    # I
    .param p2, "payload"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v5, 0x0

    .line 254
    const/4 v6, 0x4

    if-ne p0, v6, :cond_0

    const/16 v6, 0x8

    if-ge p1, v6, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v5

    .line 257
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 258
    .local v2, "startPosition":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 259
    .local v0, "countryCode":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 260
    .local v1, "providerCode":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 261
    .local v4, "userIdentifier":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 262
    .local v3, "userDataTypeCode":I
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 263
    const/16 v6, 0xb5

    if-ne v0, v6, :cond_0

    const/16 v6, 0x31

    if-ne v1, v6, :cond_0

    const v6, 0x47413934

    if-ne v4, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "application/eia-608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method parse(Lcom/google/android/exoplayer/SampleHolder;)Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;
    .locals 14
    .param p1, "sampleHolder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    const/16 v13, 0x12

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/16 v9, 0x20

    .line 120
    iget v7, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    .line 121
    const/4 v7, 0x0

    .line 203
    :goto_0
    return-object v7

    .line 124
    :cond_0
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v8, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([B)V

    .line 130
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x43

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 131
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 132
    .local v1, "ccCount":I
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 134
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_c

    .line 135
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 136
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 137
    .local v5, "ccValid":Z
    if-nez v5, :cond_2

    .line 138
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 134
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 141
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 142
    .local v4, "ccType":I
    if-eqz v4, :cond_3

    .line 143
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 147
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    int-to-byte v2, v7

    .line 148
    .local v2, "ccData1":B
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 149
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    int-to-byte v3, v7

    .line 152
    .local v3, "ccData2":B
    if-nez v2, :cond_4

    if-eqz v3, :cond_1

    .line 158
    :cond_4
    const/16 v7, 0x11

    if-eq v2, v7, :cond_5

    const/16 v7, 0x19

    if-ne v2, v7, :cond_6

    :cond_5
    and-int/lit8 v7, v3, 0x70

    const/16 v8, 0x30

    if-ne v7, v8, :cond_6

    .line 160
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->getSpecialChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 166
    :cond_6
    if-eq v2, v13, :cond_7

    const/16 v7, 0x1a

    if-ne v2, v7, :cond_8

    :cond_7
    and-int/lit8 v7, v3, 0x60

    if-ne v7, v9, :cond_8

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->backspace()V

    .line 169
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->getExtendedEsFrChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    :cond_8
    const/16 v7, 0x13

    if-eq v2, v7, :cond_9

    const/16 v7, 0x1b

    if-ne v2, v7, :cond_a

    :cond_9
    and-int/lit8 v7, v3, 0x60

    if-ne v7, v9, :cond_a

    .line 177
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->backspace()V

    .line 178
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->getExtendedPtDeChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 183
    :cond_a
    if-ge v2, v9, :cond_b

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->addCtrl(BB)V

    goto :goto_2

    .line 189
    :cond_b
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->getChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    if-lt v3, v9, :cond_1

    .line 191
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->getChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 195
    .end local v2    # "ccData1":B
    .end local v3    # "ccData2":B
    .end local v4    # "ccType":I
    .end local v5    # "ccValid":Z
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->addBufferedText()V

    .line 197
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 198
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 201
    :cond_d
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Lcom/google/android/exoplayer/text/eia608/ClosedCaption;

    .line 202
    .local v0, "captionArray":[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
    iget-object v7, p0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    new-instance v7, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    iget-wide v8, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer/SampleHolder;->isDecodeOnly()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;-><init>(JZ[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;)V

    goto/16 :goto_0
.end method
