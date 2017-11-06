.class Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;
.super Ljava/lang/Object;
.source "LocalLyricLoader.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 56
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->access$000(Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->access$000(Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    move-result-object v0

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;->onLyricLoad(JLjava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
