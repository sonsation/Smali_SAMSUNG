.class final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AllTrackQueryArgs;
.super Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllTrackQueryArgs"
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 6
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    new-array v1, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v1, v3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v0, "title"

    aput-object v0, v2, v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 217
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$AllTrackQueryArgs;-><init>([Ljava/lang/String;)V

    return-void
.end method
