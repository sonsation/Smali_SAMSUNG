.class final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreNameQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenreNameQueryArgs"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 301
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "genre_name"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$GenreNameQueryArgs;-><init>()V

    return-void
.end method
