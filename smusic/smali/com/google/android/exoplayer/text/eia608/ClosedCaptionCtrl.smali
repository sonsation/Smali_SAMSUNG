.class final Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
.super Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
.source "ClosedCaptionCtrl.java"


# instance fields
.field public final cc1:B

.field public final cc2:B


# direct methods
.method protected constructor <init>(BB)V
    .locals 1
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;-><init>(I)V

    .line 77
    iput-byte p1, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    .line 78
    iput-byte p2, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    .line 79
    return-void
.end method


# virtual methods
.method public isMiscCode()Z
    .locals 2

    .prologue
    .line 86
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreambleAddressCode()Z
    .locals 2

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    .line 98
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
