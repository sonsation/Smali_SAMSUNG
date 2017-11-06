.class public Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "MusicEdgePanelProvider.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceCommandAction;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final ACTION_LAUNCH_PERMISSION_REQUEST:Ljava/lang/String; = "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "EdgePanel"

.field private static final META_INTENT_WITHIN_TIME:I = 0x3e8


# instance fields
.field private mLastOnMetaChangedTime:J

.field private final mPlaylistsRemoveObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    .line 179
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mPlaylistsRemoveObserver:Landroid/database/ContentObserver;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    .line 179
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$1;-><init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mPlaylistsRemoveObserver:Landroid/database/ContentObserver;

    .line 77
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setContext(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mLastOnMetaChangedTime:J

    return-wide v0
.end method

.method private hasPermissionWithAction(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "requiredPermissions":[Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_2

    .line 204
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isPermissionGranted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isLegalInformationGranted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    :cond_0
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startMainActivity(Landroid/content/Context;Z)V

    move v1, v2

    .line 213
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->startPermissionActivity(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDisabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mPlaylistsRemoveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->release()V

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slookCocktailBar"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 108
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDroped()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    .line 111
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mLastOnMetaChangedTime:J

    .line 160
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 161
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 165
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 166
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v2, "EdgePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_EDGE_PANEL:Z

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setContext(Landroid/content/Context;)V

    .line 125
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    :cond_2
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    .line 146
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_4
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->hasPermissionWithAction(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    goto :goto_1

    .line 134
    :cond_5
    const-string v2, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->isPermissionGranted()Z

    move-result v1

    .line 137
    .local v1, "presentPermission":Z
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getPrePermission()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setPrePermission(Z)V

    .line 142
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->tryRegisterOnStateChangeListener(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 94
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUpdate() cocktailIds\'s length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->setContext(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->tryRegisterOnStateChangeListener(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->mPlaylistsRemoveObserver:Landroid/database/ContentObserver;

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 152
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->getInstance()Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updatePlayStatus(Z)V

    .line 155
    return-void
.end method
