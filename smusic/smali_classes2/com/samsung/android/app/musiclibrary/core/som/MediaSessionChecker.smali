.class final Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;
.super Ljava/lang/Object;
.source "MediaSessionChecker.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mMediaControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->LOG_TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 32
    new-instance v0, Landroid/content/ComponentName;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v1, "media_session"

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 36
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaControllers:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaControllers:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method hasPlayingSession()Z
    .locals 8

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "base":J
    const/4 v3, 0x0

    .line 52
    .local v3, "hasPlayingSession":Z
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 53
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    .line 54
    .local v4, "state":Landroid/media/session/PlaybackState;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 55
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasPlayingSession() - A playing active session\'s package name :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 57
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v3, 0x1

    .line 62
    .end local v2    # "controller":Landroid/media/session/MediaController;
    .end local v4    # "state":Landroid/media/session/PlaybackState;
    :cond_1
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasPlayingSession() - hasPlayingSession : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v3
.end method

.method release()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/MediaSessionChecker;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 44
    return-void
.end method
