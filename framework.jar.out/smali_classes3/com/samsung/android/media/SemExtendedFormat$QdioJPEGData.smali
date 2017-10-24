.class public Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemExtendedFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QdioJPEGData"
.end annotation


# instance fields
.field public audio_count:I

.field public endOffset:Ljava/util/ArrayList;

.field public filename:Ljava/lang/String;

.field public startOffset:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    .line 3168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    .line 3169
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    .line 3170
    invoke-direct {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->resetQdioJpegData()V

    .line 3166
    return-void
.end method

.method private resetQdioJpegData()V
    .locals 1

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3107
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    .line 3109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->filename:Ljava/lang/String;

    .line 3105
    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .locals 1

    .prologue
    .line 3125
    iget v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 3149
    if-gez p1, :cond_0

    .line 3150
    return v1

    .line 3151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3152
    return v1

    .line 3154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public getStartOffset(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 3134
    if-gez p1, :cond_0

    .line 3135
    return v1

    .line 3136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3137
    return v1

    .line 3139
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
