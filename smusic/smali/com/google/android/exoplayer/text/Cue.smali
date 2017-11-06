.class public Lcom/google/android/exoplayer/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# instance fields
.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final positionAnchor:I

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x1

    .line 125
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    .line 131
    iput-object p2, p0, Lcom/google/android/exoplayer/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 132
    iput p3, p0, Lcom/google/android/exoplayer/text/Cue;->line:F

    .line 133
    iput p4, p0, Lcom/google/android/exoplayer/text/Cue;->lineType:I

    .line 134
    iput p5, p0, Lcom/google/android/exoplayer/text/Cue;->lineAnchor:I

    .line 135
    iput p6, p0, Lcom/google/android/exoplayer/text/Cue;->position:F

    .line 136
    iput p7, p0, Lcom/google/android/exoplayer/text/Cue;->positionAnchor:I

    .line 137
    iput p8, p0, Lcom/google/android/exoplayer/text/Cue;->size:F

    .line 138
    return-void
.end method
