.class public final Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final blockFlag:Z

.field public final mapping:I

.field public final transformType:I

.field public final windowType:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0
    .param p1, "blockFlag"    # Z
    .param p2, "windowType"    # I
    .param p3, "transformType"    # I
    .param p4, "mapping"    # I

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-boolean p1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    .line 482
    iput p2, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;->windowType:I

    .line 483
    iput p3, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;->transformType:I

    .line 484
    iput p4, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisUtil$Mode;->mapping:I

    .line 485
    return-void
.end method
