.class public final Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;
.super Ljava/lang/Object;
.source "LocalMusicContents.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method


# virtual methods
.method public convertToUriType(I)I
    .locals 1
    .param p1, "listType"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 38
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 34
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x10000b
        :pswitch_0
    .end packed-switch
.end method

.method public getMatchedArtworkUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "legacyType"    # I

    .prologue
    .line 53
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 43
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->syncFilesDirectly(Landroid/content/Context;[J)Z

    move-result v0

    return v0
.end method
