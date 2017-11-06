.class final Lcom/google/android/exoplayer/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final line:F

.field public final position:F

.field public final width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;-><init>(FFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "line"    # F
    .param p3, "width"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->position:F

    .line 35
    iput p2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->line:F

    .line 36
    iput p3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->width:F

    .line 37
    return-void
.end method
