.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$4;
.super Ljava/lang/Object;
.source "LyricsCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$4;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    .line 282
    .local v0, "h":Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;
    iget-object v1, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->l:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    iget-wide v2, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->audioId:J

    iget-object v4, v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->access$600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 283
    const/4 v1, 0x1

    return v1
.end method
