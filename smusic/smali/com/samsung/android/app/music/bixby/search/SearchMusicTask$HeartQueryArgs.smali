.class final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
.source "SearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartQueryArgs"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "category_id"

    aput-object v0, v2, v3

    new-array v3, v3, [Ljava/lang/String;

    const-string v0, "favorite_name"

    aput-object v0, v3, v4

    new-instance v5, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;)V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
