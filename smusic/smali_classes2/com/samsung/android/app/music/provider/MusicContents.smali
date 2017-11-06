.class public final Lcom/samsung/android/app/music/provider/MusicContents;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.source "MusicContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;
    }
.end annotation


# static fields
.field public static final MUSIC_AUTHORITY:Ljava/lang/String; = "com.sec.android.app.music"

.field private static final TAG:Ljava/lang/String; = "MusicContents"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;-><init>()V

    .line 40
    return-void
.end method

.method public static getMatchedAudioCol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 73
    .local v0, "playListId":J
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    const-string v2, "_id"

    .line 77
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "audio_id"

    goto :goto_0
.end method

.method public static getMatchedUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "listType"    # I

    .prologue
    .line 55
    sparse-switch p0, :sswitch_data_0

    .line 64
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 67
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    const-string v1, "MusicContents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMatchedUri() Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v0

    .line 58
    .end local v0    # "uri":Landroid/net/Uri;
    :sswitch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContentsExtra;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 61
    .end local v0    # "uri":Landroid/net/Uri;
    :sswitch_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x10000b -> :sswitch_1
        0x10000f -> :sswitch_0
    .end sparse-switch
.end method
