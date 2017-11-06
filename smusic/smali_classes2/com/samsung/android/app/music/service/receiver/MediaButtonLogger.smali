.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;
.super Ljava/lang/Object;
.source "MediaButtonLogger.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    }
.end annotation


# instance fields
.field private final mNextId:Ljava/lang/String;

.field private final mPauseId:Ljava/lang/String;

.field private final mPlayId:Ljava/lang/String;

.field private final mPrevId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->access$000(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mNextId:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->access$100(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mPrevId:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->access$200(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mPlayId:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->access$300(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mPauseId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public favorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public next()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mPlayId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->mPlayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prev()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public repeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 61
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public shuffle(I)V
    .locals 0
    .param p1, "shuffle"    # I

    .prologue
    .line 57
    return-void
.end method

.method public toggleQueue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "openState"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    return-void
.end method
