.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
.super Ljava/lang/Object;
.source "Lyrics.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    }
.end annotation


# static fields
.field public static final EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field public static final UNDEFINED_TIME_STAMP:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract putExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract size()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract trim()V
.end method
