.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$PlaylistType;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$UpSyncState;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$UniqueColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final FAVORITE_LIST_NAME:Ljava/lang/String; = "FavoriteList#328795!432@1341"

.field public static final NOWPLAYING_LIST_NAME:Ljava/lang/String; = "now playing list 0123456789"

.field public static final NOW_PLAYLIST_QUEUE_UNIQUE_URI:Landroid/net/Uri;

.field public static final NOW_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

.field public static final PLAYLIST_TYPE:Ljava/lang/String; = "playlist_type"

.field private static SEC_FILTER:Ljava/lang/String; = null

.field public static final UNIQUE_DEFAULT_ORDER:Ljava/lang/String; = "recent_order DESC"

.field private static VALUE_INCLUDE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 818
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 824
    const-string/jumbo v0, "secFilter"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->SEC_FILTER:Ljava/lang/String;

    .line 826
    const-string v0, "include"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->VALUE_INCLUDE:Ljava/lang/String;

    .line 832
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 833
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->SEC_FILTER:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->VALUE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    .line 835
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "name_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 848
    const-string v0, "content://com.sec.android.app.music/audio/playlists/now_playing_queue"

    .line 849
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->NOW_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

    .line 851
    const-string v0, "content://com.sec.android.app.music/audio/playlists/now_playing_queue_unique"

    .line 852
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->NOW_PLAYLIST_QUEUE_UNIQUE_URI:Landroid/net/Uri;

    .line 851
    return-void

    .line 835
    :cond_0
    const-string v0, "name"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 815
    const-string v0, "content://com.sec.android.app.music/audio/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistIdFromUri(Landroid/net/Uri;)J
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
