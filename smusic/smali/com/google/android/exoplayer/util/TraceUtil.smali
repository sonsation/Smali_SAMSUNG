.class public final Lcom/google/android/exoplayer/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 35
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 36
    invoke-static {p0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .locals 0
    .param p0, "sectionName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static endSection()V
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 47
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSectionV18()V

    .line 49
    :cond_0
    return-void
.end method

.method private static endSectionV18()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    return-void
.end method
