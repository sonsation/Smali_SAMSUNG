.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;
.super Ljava/lang/Object;
.source "LyricsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricLineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;
    }
.end annotation


# instance fields
.field private final mLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;->mLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;->mLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)I
    .locals 1
    .param p1, "another"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;->compareTo(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$1;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;->mLyricLine:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
