.class Lorg/simpleframework/xml/core/Template;
.super Ljava/lang/Object;
.source "Template.java"


# instance fields
.field protected buf:[C

.field protected cache:Ljava/lang/String;

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Template;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    .line 67
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 79
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    .line 80
    iget-object v0, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/Template;->count:I

    aput-char p1, v0, v1

    .line 81
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v3, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 95
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    .line 96
    return-void
.end method

.method public append(Lorg/simpleframework/xml/core/Template;)V
    .locals 3
    .param p1, "text"    # Lorg/simpleframework/xml/core/Template;

    .prologue
    .line 108
    iget-object v0, p1, Lorg/simpleframework/xml/core/Template;->buf:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/simpleframework/xml/core/Template;->append([CII)V

    .line 109
    return-void
.end method

.method public append([CII)V
    .locals 2
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 123
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    .line 126
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Template;->cache:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    .line 187
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 6
    .param p1, "min"    # I

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v3, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    array-length v3, v3

    if-ge v3, p1, :cond_0

    .line 170
    iget-object v3, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 171
    .local v1, "size":I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 172
    .local v0, "max":I
    new-array v2, v0, [C

    .line 173
    .local v2, "temp":[C
    iget-object v3, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v4, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v2, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    .line 176
    .end local v0    # "max":I
    .end local v1    # "size":I
    .end local v2    # "temp":[C
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/simpleframework/xml/core/Template;->count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Template;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
