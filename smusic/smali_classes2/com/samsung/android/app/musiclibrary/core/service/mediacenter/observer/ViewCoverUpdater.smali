.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;
.super Ljava/lang/Object;
.source "ViewCoverUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;
    }
.end annotation


# static fields
.field private static final EXTRA_COVER_VIEW_REMOTE:Ljava/lang/String; = "remote"

.field private static final EXTRA_COVER_VIEW_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_COVER_VIEW_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final EXTRA_MUSIC_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final VALUE_COVER_VIEW_TYPE_MUSIC_CONTROLLER:Ljava/lang/String; = "music_controller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastUpdatedIsPlaying:Z

.field private mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

.field private final mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private final mSupportControllerService:Z

.field private mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private mWasShowCover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "abstractionFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;
    .param p4, "supportControllerService"    # Z

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 76
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    .line 77
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object v0

    .line 78
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    .line 79
    return-void
.end method

.method private buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5
    .param p1, "musicMetadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 146
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "title":Ljava/lang/String;
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "artist":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 152
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " buildMetadata : Title - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Artist - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .param p2, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 162
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hideViewCover(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_0
.end method

.method private isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v0, 0x1

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needRemoteViewUpdate()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 194
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->bindService(Landroid/content/Context;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->getCoverType()I

    move-result v0

    .line 200
    .local v0, "coverType":I
    const-string v1, "SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoverType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "isPlaying"    # Z
    .param p4, "visibility"    # Z

    .prologue
    .line 174
    const-string v1, "SMUSIC-SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateViewCover : visibility - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "type"

    const-string v2, "music_controller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v1, "isPlaying"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    if-eqz p4, :cond_0

    .line 182
    const-string/jumbo v1, "remote"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->needRemoteViewUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string v0, "SV-MediaCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onExtraChanged() action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWasShowCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 7
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 86
    .local v2, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 87
    .local v0, "size":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz v3, :cond_1

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 91
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_0
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
    .line 115
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->unbindService(Landroid/content/Context;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    .line 139
    return-void
.end method
