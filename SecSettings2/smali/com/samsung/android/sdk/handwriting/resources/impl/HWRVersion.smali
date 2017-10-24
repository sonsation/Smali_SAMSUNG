.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;
.super Ljava/lang/Object;
.source "HWRVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFields:[I

.field private final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 51
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "versionStr"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v7, ""

    .line 17
    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    .line 18
    new-array v7, v10, [I

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    .line 19
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    .line 23
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "offset":I
    const/4 v2, -0x2

    .line 26
    .local v2, "index":I
    new-array v6, v4, [I

    .local v6, "tab":[I
    const/4 v1, 0x0

    .line 29
    .local v1, "i":I
    :goto_0
    if-ne v2, v9, :cond_2

    .line 44
    :goto_1
    new-array v7, v1, [I

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    const/4 v3, 0x0

    .line 46
    .local v3, "j":I
    :goto_2
    if-lt v3, v1, :cond_4

    .line 48
    return-void

    .line 30
    .end local v3    # "j":I
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 32
    if-eq v2, v9, :cond_3

    .line 35
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1

    .line 41
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 42
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 33
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 40
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Number version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is corrupted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    aput v10, v6, v1

    goto :goto_1

    .line 47
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "j":I
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v8, v6, v3

    aput v8, v7, v3

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I
    .locals 8
    .param p1, "other"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 72
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v1, v3

    .line 76
    .local v1, "sizeVersion1":I
    iget-object v3, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v2, v3

    .local v2, "sizeVersion2":I
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 89
    return v5

    .line 73
    .end local v0    # "i":I
    .end local v1    # "sizeVersion1":I
    .end local v2    # "sizeVersion2":I
    :cond_0
    return v5

    .line 79
    .restart local v0    # "i":I
    .restart local v1    # "sizeVersion1":I
    .restart local v2    # "sizeVersion2":I
    :cond_1
    if-eq v1, v0, :cond_2

    .line 81
    if-eq v2, v0, :cond_3

    .line 83
    iget-object v3, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v4, v4, v0

    if-gt v3, v4, :cond_4

    .line 85
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v4, v4, v0

    if-gt v3, v4, :cond_5

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    return v6

    .line 82
    :cond_3
    return v7

    .line 84
    :cond_4
    return v6

    .line 86
    :cond_5
    return v7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 103
    instance-of v1, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    return-object v0
.end method
