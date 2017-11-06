.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;
.super Ljava/lang/Object;
.source "ServicePlayUtils.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-PlayUtils"

.field private static final TAG:Ljava/lang/String; = "PlayUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static enqueueContents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object v0

    .line 57
    .local v0, "list":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 58
    :cond_0
    const-string v1, "PlayUtils"

    const-string v2, "Failed to enqueue because the given list is null or size 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->enqueue([J)V

    goto :goto_0
.end method

.method private static getAudioIds(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)[J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "uriString":Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getMatchedUriType(Landroid/net/Uri;)I

    move-result v1

    .line 74
    .local v1, "uriType":I
    if-eqz v1, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J

    move-result-object v2

    goto :goto_0
.end method

.method private static getExtraListFromIntent(Landroid/content/Context;Landroid/content/Intent;Z)[J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isMediaProvider"    # Z

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v3, "list"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 103
    .local v1, "sourceIds":[J
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 116
    .end local v1    # "sourceIds":[J
    :cond_1
    :goto_0
    return-object v1

    .line 108
    .restart local v1    # "sourceIds":[J
    :cond_2
    if-eqz p2, :cond_1

    .line 110
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/MediaIdConverter;->convertToMusicProviderIds(Landroid/content/Context;[J)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "convertedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v1, v2

    .line 112
    goto :goto_0

    .line 114
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getIdsInArray(Ljava/util/List;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private static getIdsInArray(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 123
    .local v2, "length":I
    new-array v1, v2, [J

    .line 124
    .local v1, "ids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 125
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method

.method private static getMatchedUriType(Landroid/net/Uri;)I
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "uriString":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/4 v1, 0x3

    goto :goto_0

    .line 90
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->pause()V

    .line 153
    return-void
.end method

.method public static play()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->play()V

    .line 149
    return-void
.end method

.method public static play(Ljava/lang/String;[JI)V
    .locals 2
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "list"    # [J
    .param p2, "position"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JILjava/lang/String;Z)V

    .line 132
    return-void
.end method

.method private static play(Ljava/lang/String;[JILjava/lang/String;Z)V
    .locals 6
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "list"    # [J
    .param p2, "position"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "isMaintainSeekPosition"    # Z

    .prologue
    .line 141
    const-string v0, "PlayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 144
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openList(Ljava/lang/String;[JILjava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public static play(Ljava/lang/String;[JIZ)V
    .locals 1
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "list"    # [J
    .param p2, "position"    # I
    .param p3, "isMaintainSeekPosition"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JILjava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public static playContents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v3, "base_uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 43
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->getAudioIds(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)[J

    move-result-object v0

    .line 44
    .local v0, "list":[J
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 46
    :cond_0
    const-string v3, "PlayUtils"

    const-string v4, "play() can\'t get id from Music Provider. Please check provider."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v3, "listPosition"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, "position":I
    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    goto :goto_0
.end method

.method public static playContentsFromMediaBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "base_uri"

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public static playNext()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->playNext()V

    .line 161
    return-void
.end method

.method public static playPrevious()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->playPrevious()V

    .line 157
    return-void
.end method

.method public static startCommand(Ljava/lang/String;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static startCommand(Ljava/lang/String;I)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "tag"    # I

    .prologue
    .line 168
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;I)V

    .line 169
    return-void
.end method
