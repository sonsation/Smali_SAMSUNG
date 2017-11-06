.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
.super Ljava/lang/Object;
.source "LyricsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;
    }
.end annotation


# instance fields
.field private mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field private mStringLyrics:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    .line 23
    if-nez p1, :cond_0

    .line 24
    const-string p1, ""

    .line 26
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->buildLinesInternal(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private buildLinesInternal(Ljava/lang/String;)V
    .locals 7
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 34
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .local v2, "scanner":Ljava/util/Scanner;
    const/4 v4, 0x0

    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "lineText":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 34
    .end local v0    # "lineText":Ljava/lang/String;
    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v3

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 42
    .end local v2    # "scanner":Ljava/util/Scanner;
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    .line 43
    return-void

    .line 40
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    .line 49
    .local v0, "impl":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 51
    .end local v0    # "impl":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    return-object v0
.end method

.method public trim()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    .line 77
    .local v1, "oldLyrics":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "newLyrics":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->buildLinesInternal(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
