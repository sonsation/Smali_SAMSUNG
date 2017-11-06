.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;
.super Ljava/lang/Object;
.source "MDefaultArtworkUtils.java"


# static fields
.field public static final DEFAULT_ALBUM_ART:I

.field public static final DEFAULT_ARTWORK_URI:Landroid/net/Uri;

.field public static final DLNA_ARTWORK_URI:Landroid/net/Uri;

.field public static final USE_M_ARTWORK_CACHE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_player_default_cover:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    .line 20
    const-string v0, "content://com.sec.android.app.music/dlna_album_art"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
