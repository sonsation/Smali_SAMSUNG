.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MEDIA_STORE_LOCATION:Ljava/lang/String; = "mediaStore"

.field public static final MUSIC_PROVIDER_LOCATION:Ljava/lang/String; = "musicProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 689
    const-string v0, "content://com.sec.android.app.music"

    const-string v1, "content://com.sec.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "content://com.sec.android.app.music/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
