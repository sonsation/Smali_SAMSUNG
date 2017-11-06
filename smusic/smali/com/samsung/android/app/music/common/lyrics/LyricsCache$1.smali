.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$1;
.super Landroid/util/LruCache;
.source "LyricsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p2, "x0"    # I

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Long;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;
    .param p2, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 41
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$1;->sizeOf(Ljava/lang/Long;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)I

    move-result v0

    return v0
.end method
