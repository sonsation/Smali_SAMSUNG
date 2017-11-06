.class Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;
.super Ljava/lang/Object;
.source "FavoriteTrackImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    return-object v0
.end method


# virtual methods
.method public isFavorite(Landroid/content/Context;JZ)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioId"    # J
    .param p4, "makeIfNotExist"    # Z

    .prologue
    .line 21
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavorite(Landroid/content/Context;JZ)Z

    move-result v0

    return v0
.end method
