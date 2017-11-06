.class public final Lcom/google/android/exoplayer/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static final CHANNEL_OUT_7POINT1_SURROUND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3fc

    :goto_0
    sput v0, Lcom/google/android/exoplayer/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    return-void

    :cond_0
    const/16 v0, 0x18fc

    goto :goto_0
.end method
