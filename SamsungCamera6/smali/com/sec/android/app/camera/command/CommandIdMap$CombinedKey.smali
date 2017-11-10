.class Lcom/sec/android/app/camera/command/CommandIdMap$CombinedKey;
.super Ljava/lang/Object;
.source "CommandIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/command/CommandIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedKey"
.end annotation


# static fields
.field private static final MENUID_MASK:I = 0x7fff

.field private static final MODEID_MASK:I = 0xffff

.field private static final NO_VALUE:I = -0x1

.field private static final SHIFT_MOVE:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(II)I
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMenuId(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getModeId(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
