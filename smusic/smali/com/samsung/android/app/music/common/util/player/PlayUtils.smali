.class public final Lcom/samsung/android/app/music/common/util/player/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static playVia(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v2, "extra_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "type":Ljava/lang/String;
    const-string v2, "extra_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "search":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/common/util/player/PlayUtils;->playVia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static playVia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "search"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "PlayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playVia() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v0, "album"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    const-string v0, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/ArtistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_3
    const-string/jumbo v0, "playlist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0
.end method
