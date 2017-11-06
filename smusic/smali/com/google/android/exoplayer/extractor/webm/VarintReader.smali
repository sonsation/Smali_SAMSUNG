.class final Lcom/google/android/exoplayer/extractor/webm/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    .line 34
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .locals 10
    .param p0, "varintBytes"    # [B
    .param p1, "varintLength"    # I
    .param p2, "removeLengthMask"    # Z

    .prologue
    const-wide/16 v8, 0xff

    .line 130
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long v2, v4, v8

    .line 131
    .local v2, "varint":J
    if-eqz p2, :cond_0

    .line 132
    sget-object v1, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, v1, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    .line 134
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 135
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p0, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long v2, v4, v6

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-wide v2
.end method

.method public static parseUnsignedVarintLength(I)I
    .locals 6
    .param p0, "firstByte"    # I

    .prologue
    .line 110
    const/4 v1, -0x1

    .line 111
    .local v1, "varIntLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    sget-object v2, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 113
    add-int/lit8 v1, v0, 0x1

    .line 117
    :cond_0
    return v1

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZI)J
    .locals 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .param p4, "maximumAllowedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    invoke-interface {p1, v1, v3, v4, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-wide/16 v2, -0x1

    .line 93
    :goto_0
    return-wide v2

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    aget-byte v1, v1, v3

    and-int/lit16 v0, v1, 0xff

    .line 75
    .local v0, "firstByte":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 76
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 82
    .end local v0    # "firstByte":I
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-le v1, p4, :cond_3

    .line 83
    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 84
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 87
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    if-eq v1, v4, :cond_4

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v1, v4, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 92
    :cond_4
    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->scratch:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    invoke-static {v1, v2, p3}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->state:I

    .line 41
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->length:I

    .line 42
    return-void
.end method
