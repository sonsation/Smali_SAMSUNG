.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .locals 5
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;
    .param p2, "coefficients"    # [I

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v2, p2

    if-eqz v2, :cond_1

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    array-length v0, p2

    .local v0, "coefficientsLength":I
    const/4 v2, 0x1

    .line 48
    if-gt v0, v2, :cond_2

    .line 65
    :cond_0
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 67
    :goto_0
    return-void

    .line 44
    .end local v0    # "coefficientsLength":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 48
    .restart local v0    # "coefficientsLength":I
    :cond_2
    aget v2, p2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 51
    .local v1, "firstNonZero":I
    :goto_1
    if-lt v1, v0, :cond_4

    .line 54
    :cond_3
    if-eq v1, v0, :cond_5

    .line 57
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 58
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 51
    :cond_4
    aget v2, p2, v1

    if-nez v2, :cond_3

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_0
.end method


# virtual methods
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 9
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .prologue
    const/4 v8, 0x0

    .line 119
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v7, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-nez v6, :cond_2

    .line 129
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 130
    .local v3, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 131
    .local v1, "largerCoefficients":[I
    array-length v6, v3

    array-length v7, v1

    if-gt v6, v7, :cond_3

    .line 136
    :goto_0
    array-length v6, v1

    new-array v4, v6, [I

    .line 137
    .local v4, "sumDiff":[I
    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    .line 139
    .local v2, "lengthDiff":I
    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v0, v2

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-lt v0, v6, :cond_4

    .line 145
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v6

    .line 120
    .end local v0    # "i":I
    .end local v1    # "largerCoefficients":[I
    .end local v2    # "lengthDiff":I
    .end local v3    # "smallerCoefficients":[I
    .end local v4    # "sumDiff":[I
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_1
    return-object p1

    .line 126
    :cond_2
    return-object p0

    .line 132
    .restart local v1    # "largerCoefficients":[I
    .restart local v3    # "smallerCoefficients":[I
    :cond_3
    move-object v5, v3

    .line 133
    .local v5, "temp":[I
    move-object v3, v1

    .line 134
    move-object v1, v5

    goto :goto_0

    .line 142
    .end local v5    # "temp":[I
    .restart local v0    # "i":I
    .restart local v2    # "lengthDiff":I
    .restart local v4    # "sumDiff":[I
    :cond_4
    sub-int v6, v0, v2

    aget v6, v3, v6

    aget v7, v1, v0

    invoke-static {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v6

    aput v6, v4, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 11
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .prologue
    const/4 v10, 0x0

    .line 201
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_2

    .line 208
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    .line 209
    .local v4, "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v5, p0

    .line 211
    .local v5, "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v1

    .line 212
    .local v1, "denominatorLeadingTerm":I
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v2

    .line 214
    .local v2, "inverseDenominatorLeadingTerm":I
    :goto_0
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    if-ge v8, v9, :cond_3

    :cond_0
    const/4 v8, 0x2

    .line 223
    new-array v8, v8, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    aput-object v4, v8, v10

    const/4 v9, 0x1

    aput-object v5, v8, v9

    return-object v8

    .line 202
    .end local v1    # "denominatorLeadingTerm":I
    .end local v2    # "inverseDenominatorLeadingTerm":I
    .end local v4    # "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v5    # "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 205
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Divide by 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 214
    .restart local v1    # "denominatorLeadingTerm":I
    .restart local v2    # "inverseDenominatorLeadingTerm":I
    .restart local v4    # "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v5    # "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_3
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_0

    .line 215
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    sub-int v0, v8, v9

    .line 216
    .local v0, "degreeDifference":I
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    .line 217
    .local v6, "scale":I
    invoke-virtual {p1, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 218
    .local v7, "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    .line 219
    .local v3, "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    .line 220
    invoke-virtual {v5, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    goto :goto_0
.end method

.method getCoefficient(I)I
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 12
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .prologue
    .line 149
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 153
    :cond_0
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    return-object v8

    .line 150
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 156
    .local v1, "aCoefficients":[I
    array-length v2, v1

    .line 157
    .local v2, "aLength":I
    iget-object v3, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 158
    .local v3, "bCoefficients":[I
    array-length v4, v3

    .line 159
    .local v4, "bLength":I
    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    .local v7, "product":[I
    const/4 v5, 0x0

    .line 160
    .local v5, "i":I
    :goto_0
    if-lt v5, v2, :cond_3

    .line 167
    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v8

    .line 161
    :cond_3
    aget v0, v1, v5

    .local v0, "aCoeff":I
    const/4 v6, 0x0

    .line 162
    .local v6, "j":I
    :goto_1
    if-lt v6, v4, :cond_4

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    :cond_4
    add-int v8, v5, v6

    add-int v9, v5, v6

    aget v9, v7, v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v11, v3, v6

    invoke-virtual {v10, v0, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v9

    aput v9, v7, v8

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 5
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .prologue
    .line 186
    if-ltz p1, :cond_0

    .line 189
    if-eqz p2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v3

    .line 193
    .local v2, "size":I
    add-int v3, v2, p1

    new-array v1, v3, [I

    .local v1, "product":[I
    const/4 v0, 0x0

    .line 194
    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 197
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v3

    .line 187
    .end local v0    # "i":I
    .end local v1    # "product":[I
    .end local v2    # "size":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    return-object v3

    .line 195
    .restart local v0    # "i":I
    .restart local v1    # "product":[I
    .restart local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    .local v2, "degree":I
    :goto_0
    if-gez v2, :cond_0

    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 230
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v1

    .line 231
    .local v1, "coefficient":I
    if-nez v1, :cond_2

    .line 229
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 232
    :cond_2
    if-ltz v1, :cond_4

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 240
    :goto_2
    if-nez v2, :cond_6

    .line 241
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v0

    .line 242
    .local v0, "alphaPower":I
    if-eqz v0, :cond_7

    .line 244
    if-eq v0, v5, :cond_8

    const-string/jumbo v4, "a^"

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .end local v0    # "alphaPower":I
    :goto_3
    if-eqz v2, :cond_1

    .line 252
    if-eq v2, v5, :cond_9

    const-string/jumbo v4, "x^"

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, " - "

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    neg-int v1, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v4, " + "

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    :cond_6
    if-ne v1, v5, :cond_3

    goto :goto_3

    .line 243
    .restart local v0    # "alphaPower":I
    :cond_7
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 245
    :cond_8
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 253
    .end local v0    # "alphaPower":I
    :cond_9
    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
