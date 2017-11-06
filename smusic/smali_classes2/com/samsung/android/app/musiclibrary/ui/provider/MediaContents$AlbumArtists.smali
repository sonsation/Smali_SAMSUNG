.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArtists"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->CONTENT_URI:Landroid/net/Uri;

    .line 680
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "artist_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "artist"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 674
    const-string v0, "content://com.sec.android.app.music/audio/media/music_albumartist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
