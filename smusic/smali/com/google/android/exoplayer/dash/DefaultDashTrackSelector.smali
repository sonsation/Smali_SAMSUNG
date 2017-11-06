.class public final Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
.super Ljava/lang/Object;
.source "DefaultDashTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashTrackSelector;


# instance fields
.field private final adaptationSetType:I

.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .locals 0
    .param p1, "adaptationSetType"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filterVideoRepresentations"    # Z
    .param p4, "filterProtectedHdContent"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    .line 67
    iput-boolean p3, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    .line 68
    iput-boolean p4, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    .line 69
    return-void
.end method

.method public static newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterVideoRepresentations"    # Z
    .param p2, "filterProtectedHdContent"    # Z

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashTrackSelector$Output;)V
    .locals 11
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "periodIndex"    # I
    .param p3, "output"    # Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 74
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v3

    .line 75
    .local v3, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, v3, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 76
    iget-object v6, v3, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 77
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget v8, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-ne v6, v8, :cond_4

    .line 78
    iget v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-nez v6, :cond_3

    .line 80
    iget-boolean v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    if-eqz v6, :cond_2

    .line 81
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-static {v8, v9, v10, v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v5

    .line 87
    .local v5, "representations":[I
    :goto_2
    array-length v4, v5

    .line 88
    .local v4, "representationCount":I
    if-le v4, v7, :cond_0

    .line 89
    invoke-interface {p3, p1, p2, v1, v5}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V

    .line 91
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 92
    aget v6, v5, v2

    invoke-interface {p3, p1, p2, v1, v6}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 81
    .end local v2    # "j":I
    .end local v4    # "representationCount":I
    .end local v5    # "representations":[I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 85
    :cond_2
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v5

    .restart local v5    # "representations":[I
    goto :goto_2

    .line 95
    .end local v5    # "representations":[I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 96
    invoke-interface {p3, p1, p2, v1, v2}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    :cond_5
    return-void
.end method
