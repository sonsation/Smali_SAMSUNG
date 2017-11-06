.class public final Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"

# interfaces
.implements Lcom/google/android/exoplayer/TimeRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticTimeRange"
.end annotation


# instance fields
.field private final endTimeUs:J

.field private final startTimeUs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    .line 67
    iput-wide p3, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 107
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;

    .line 110
    .local v0, "other":Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;
    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCurrentBoundsUs([J)[J
    .locals 4
    .param p1, "out"    # [J

    .prologue
    const/4 v1, 0x2

    .line 85
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 86
    :cond_0
    new-array p1, v1, [J

    .line 88
    :cond_1
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    aput-wide v2, p1, v0

    .line 89
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    aput-wide v2, p1, v0

    .line 90
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x11

    .line 96
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->startTimeUs:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/TimeRange$StaticTimeRange;->endTimeUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 98
    return v0
.end method
