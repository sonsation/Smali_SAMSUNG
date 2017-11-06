.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 6
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .prologue
    const/4 v3, 0x0

    .line 96
    array-length v5, p2

    move v4, v3

    move v1, p1

    .end local p1    # "pos":I
    .local v1, "pos":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, p2, v4

    .line 97
    .local v0, "bit":I
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p0, v1

    .line 96
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, p1

    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    move v2, v3

    .line 97
    goto :goto_1

    .line 99
    .end local v0    # "bit":I
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    const/16 v2, 0x9

    return v2
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 6
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "maxWeight"    # I

    .prologue
    .line 103
    const/4 v3, 0x1

    .line 104
    .local v3, "weight":I
    const/4 v2, 0x0

    .line 106
    .local v2, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 107
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 108
    .local v1, "indexInString":I
    mul-int v4, v1, v3

    add-int/2addr v2, v4

    .line 109
    add-int/lit8 v3, v3, 0x1

    if-le v3, p1, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 106
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v1    # "indexInString":I
    :cond_1
    rem-int/lit8 v4, v2, 0x2f

    return v4
.end method

.method private static toIntArray(I[I)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .prologue
    const/4 v3, 0x1

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    .line 90
    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p0, v2

    .line 91
    .local v1, "temp":I
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput v2, p1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 91
    goto :goto_1

    .line 93
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 35
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_93, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x2f

    const/4 v10, 0x1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 44
    .local v4, "length":I
    const/16 v8, 0x50

    if-le v4, v8, :cond_0

    .line 45
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 49
    :cond_0
    const/16 v8, 0x9

    new-array v7, v8, [I

    .line 52
    .local v7, "widths":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x9

    add-int/lit8 v8, v8, 0x1

    .line 54
    new-array v6, v8, [Z

    .line 57
    .local v6, "result":[Z
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v11

    invoke-static {v8, v7}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 58
    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v10}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 60
    .local v5, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 61
    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 62
    .local v3, "indexInString":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v3

    invoke-static {v8, v7}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 63
    invoke-static {v6, v5, v7, v10}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "indexInString":I
    :cond_1
    const/16 v8, 0x14

    invoke-static {p1, v8}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "check1":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v0

    invoke-static {v8, v7}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 69
    invoke-static {v6, v5, v7, v10}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    const/16 v9, 0xf

    invoke-static {v8, v9}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "check2":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v1

    invoke-static {v8, v7}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 76
    invoke-static {v6, v5, v7, v10}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 79
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v11

    invoke-static {v8, v7}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 80
    invoke-static {v6, v5, v7, v10}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 83
    aput-boolean v10, v6, v5

    .line 85
    return-object v6
.end method
