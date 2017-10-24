.class public Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemExtendedFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioJPEGData"
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
    .line 3085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    .line 3087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    .line 3088
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    .line 3089
    invoke-direct {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->resetAudioJpegData()V

    .line 3085
    return-void
.end method

.method private resetAudioJpegData()V
    .locals 1

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3026
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3027
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    .line 3028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->filename:Ljava/lang/String;

    .line 3024
    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .locals 1

    .prologue
    .line 3044
    iget v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 3068
    if-gez p1, :cond_0

    .line 3069
    return v1

    .line 3070
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3071
    return v1

    .line 3073
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

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

    .line 3053
    if-gez p1, :cond_0

    .line 3054
    return v1

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3056
    return v1

    .line 3058
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
