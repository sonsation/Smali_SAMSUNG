.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;
.super Ljava/lang/Object;
.source "LyricsJournal.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricsInfo"
.end annotation


# instance fields
.field public lastUpdated:J

.field public lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# direct methods
.method constructor <init>(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 1
    .param p1, "lastUpdated"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;->lastUpdated:J

    .line 172
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 173
    return-void
.end method

.method static obtain(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;
    .locals 2
    .param p0, "lastUpdated"    # J
    .param p2, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;-><init>(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-object v0
.end method
