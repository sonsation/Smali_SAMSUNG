.class public Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;
.super Ljava/lang/Object;
.source "MilkArtistPlayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static play(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "artistId"    # J

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Artist;->getSourceId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "sourceArtistId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils;->play(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceArtistId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/util/player/MilkArtistPlayUtils$1;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    return v0
.end method
