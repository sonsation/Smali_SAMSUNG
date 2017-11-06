.class final Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;
.super Ljava/lang/Object;
.source "SynthesizePositioningAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumPositionData"
.end annotation


# instance fields
.field public nextPosition:I

.field public prevPosition:I

.field public selectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    .line 113
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    .line 115
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumDirection(IF)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "fraction"    # F

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    if-ne p1, v1, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    if-ne p1, v1, :cond_2

    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    if-ne p1, v1, :cond_0

    cmpg-float v1, p2, v2

    if-gez v1, :cond_0

    .line 151
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    .line 119
    add-int/lit8 v0, p1, -0x1

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    .line 120
    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SynthesizePositioningAudio : AlbumPositionData : initPosition() : selectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prevPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public isInnerPosition(IF)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "fraction"    # F

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, "ret":Z
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    if-ltz v1, :cond_3

    .line 130
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    if-ne p1, v1, :cond_5

    .line 134
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    if-eq p1, v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    if-ne p1, v1, :cond_1

    cmpl-float v1, p2, v2

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    if-ne p1, v1, :cond_4

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 141
    :cond_3
    :goto_0
    return v0

    .line 134
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    .line 158
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->prevPosition:I

    .line 159
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->nextPosition:I

    .line 160
    return-void
.end method
