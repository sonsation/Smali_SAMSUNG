.class public final Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
.super Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.source "PlayedInfoTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;,
        Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;
    }
.end annotation


# static fields
.field private static final THIRTY_SEC_IN_MILLIS:J = 0x7530L

.field private static final THREE_SEC_IN_MILLIS:J = 0xbb8L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMostPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final mRecentlyPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mRecentlyPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mMostPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/content/ContentValues;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->updateDb(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private isSupportMostRecently(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 55
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 56
    .local v0, "cpAttrs":I
    const v1, 0x20004

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDb(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioId"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-static {p1, v0, p4, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->isSupportMostRecently(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-wide/16 v0, 0xbb8

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mRecentlyPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 50
    const-wide/16 v0, 0x7530

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->mMostPlayed:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 52
    :cond_0
    return-void
.end method
