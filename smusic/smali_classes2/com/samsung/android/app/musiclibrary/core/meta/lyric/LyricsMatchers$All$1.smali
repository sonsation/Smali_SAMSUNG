.class final enum Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All$1;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
.source "LyricsMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$All;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers$1;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "songPath"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->DCF:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->MP3:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
