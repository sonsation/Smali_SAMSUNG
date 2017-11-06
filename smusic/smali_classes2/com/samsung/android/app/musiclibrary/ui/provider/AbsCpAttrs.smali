.class public abstract Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;
.super Ljava/lang/Object;
.source "AbsCpAttrs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs$StorageLocation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildCpAttrs([I)I
    .locals 4
    .param p0, "attrs"    # [I

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "cpAttrs":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 25
    .local v0, "attr":I
    or-int/2addr v1, v0

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "attr":I
    :cond_0
    return v1
.end method

.method public static getStorageLocation(I)I
    .locals 1
    .param p0, "attrs"    # I

    .prologue
    .line 11
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static isLocal(I)Z
    .locals 2
    .param p0, "attrs"    # I

    .prologue
    const/4 v0, 0x1

    .line 15
    and-int/lit8 v1, p0, 0xf

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline(I)Z
    .locals 2
    .param p0, "attrs"    # I

    .prologue
    .line 19
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
