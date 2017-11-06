.class public Lcom/samsung/android/app/music/common/metaedit/MetaUtils;
.super Ljava/lang/Object;
.source "MetaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binToString(B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%8s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static binToString([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v5, p0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-byte v0, p0, v3

    .line 24
    .local v0, "b":B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%8s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-static {v0, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "s":Ljava/lang/String;
    const/16 v6, 0x20

    const/16 v7, 0x30

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "b":B
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBytesFromInt(II)[B
    .locals 3
    .param p0, "size"    # I
    .param p1, "byteLength"    # I

    .prologue
    .line 63
    new-array v0, p1, [B

    .line 64
    .local v0, "bytes":[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 65
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    shr-int/lit8 p0, p0, 0x8

    .line 64
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method

.method public static getIntFromBytes([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 57
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return v1
.end method

.method public static getIntFromSynchSafeBytes([B)I
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 33
    const/16 v2, 0x7f

    .line 34
    .local v2, "mask":B
    array-length v1, p0

    .line 35
    .local v1, "length":I
    const/4 v3, 0x0

    .line 36
    .local v3, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 37
    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0x7f

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_0
    return v3
.end method

.method public static getSynchSafeBytesFromInt(II)[B
    .locals 3
    .param p0, "size"    # I
    .param p1, "byteLength"    # I

    .prologue
    .line 44
    const v2, 0xfffffff

    and-int/2addr p0, v2

    .line 45
    new-array v0, p1, [B

    .line 46
    .local v0, "bytes":[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 47
    and-int/lit8 v2, p0, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 48
    shr-int/lit8 p0, p0, 0x7

    .line 46
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static hexToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x10

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 10
    .local v0, "b":B
    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
