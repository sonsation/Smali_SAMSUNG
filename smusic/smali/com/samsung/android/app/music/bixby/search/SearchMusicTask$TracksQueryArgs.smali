.class Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TracksQueryArgs"
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;)V
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "searchColumns"    # [Ljava/lang/String;
    .param p3, "keywords"    # [Ljava/lang/String;
    .param p4, "resultAssembler"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;

    .prologue
    .line 202
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 205
    sget-object v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;
    .param p5, "x4"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;)V

    return-void
.end method
