.class final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerQueryArgs;
.super Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComposerQueryArgs"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v1, v3

    const-string v0, "composer"

    aput-object v0, v1, v2

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "composer"

    aput-object v0, v2, v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;

    new-instance v0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerNameQueryArgs;

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerNameQueryArgs;-><init>(Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    invoke-direct {v4, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;)V

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$ComposerQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
