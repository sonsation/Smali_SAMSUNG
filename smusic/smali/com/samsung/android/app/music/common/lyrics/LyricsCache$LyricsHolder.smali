.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;
.super Ljava/lang/Object;
.source "LyricsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsHolder"
.end annotation


# instance fields
.field public final audioId:J

.field private final cpAttrs:I

.field public final l:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

.field public lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private final user:Ljava/lang/Object;


# direct methods
.method constructor <init>(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cpAttrs"    # I
    .param p2, "audioId"    # J
    .param p4, "l"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;
    .param p5, "user"    # Ljava/lang/Object;

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->cpAttrs:I

    .line 301
    iput-wide p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->audioId:J

    .line 302
    iput-object p4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->l:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    .line 303
    iput-object p5, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->user:Ljava/lang/Object;

    .line 304
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->user:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    .prologue
    .line 287
    iget v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->cpAttrs:I

    return v0
.end method
