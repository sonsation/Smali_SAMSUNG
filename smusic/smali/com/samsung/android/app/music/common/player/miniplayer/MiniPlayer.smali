.class public final Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "MiniPlayer.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/MiniPlayerViewable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;,
        Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-7f

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MINI_PLAYER_CLICK_EVENT_BLOCK_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAdPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

.field private mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

.field private final mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private mIsEmptyMedia:Z

.field private final mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

.field private final mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

.field private final mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPlayerLauncherListener:Landroid/view/View$OnClickListener;

.field private final mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

.field private final mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

.field private mTransitionViews:[Landroid/view/View;

.field private final mUiType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)V
    .locals 15
    .param p1, "builder"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getMiniPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 77
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getMiniPlayerAdLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAdPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/common/ServicePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/ServicePlayerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mIsEmptyMedia:Z

    .line 409
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLauncherListener:Landroid/view/View$OnClickListener;

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mUiType:I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 116
    .local v13, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120260

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " Failed to make mini player. Current layout does not have view with id attribute \'R.id.mini_player_root\'."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setParentWidth(Landroid/view/View;)V

    .line 123
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 124
    .local v5, "coreMediaChangeObservable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    invoke-interface {v5, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 125
    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {v0, v13, v2, v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->setAlbumClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    .line 146
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mUiType:I

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setTextClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 152
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 157
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mUiType:I

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPrevButton()Landroid/view/View;

    move-result-object v14

    .line 159
    .local v14, "prev":Landroid/view/View;
    if-eqz v14, :cond_2

    .line 160
    const v0, 0x7f1204a9

    invoke-virtual {v14, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 165
    .end local v14    # "prev":Landroid/view/View;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 166
    new-instance v6, Lcom/samsung/android/app/music/common/player/SeekController;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v10, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    const/4 v11, 0x1

    move-object v8, v2

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/common/player/SeekController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;ZLcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/common/player/TintColorsController;

    invoke-direct {v0, v13, v2, v5}, Lcom/samsung/android/app/music/common/player/TintColorsController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 177
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    .line 184
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 185
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    .line 192
    :goto_3
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getAlbumArtClicker()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->getArtistView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPrevButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getNextButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPlayButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController;->getCurrentTimeTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController;->getDurationTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->getButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->getButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addScaleAlphaAnimationView(Landroid/view/View;)V

    .line 211
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->makeTransitionView()V

    .line 213
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;->access$400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_6
    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->changeLayoutParams(Landroid/view/View;Z)V

    .line 214
    return-void

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLauncherListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    .line 173
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    goto/16 :goto_1

    .line 180
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    goto/16 :goto_2

    .line 188
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    goto/16 :goto_3

    .line 213
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->isMiniPlayerClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->getTransitionViews()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->isRadioActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mIsEmptyMedia:Z

    return v0
.end method

.method private changeLayoutParams(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasExtraButton"    # Z

    .prologue
    const/4 v3, 0x0

    .line 352
    const v2, 0x7f1204a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 354
    .local v1, "playerControl":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 355
    .local v0, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 356
    const v2, 0x7f1204ad

    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 357
    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 363
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    return-void

    .line 359
    :cond_0
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d032b

    .line 361
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 360
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0
.end method

.method private getTransitionViews()[Landroid/view/View;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mTransitionViews:[Landroid/view/View;

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->makeTransitionView()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mTransitionViews:[Landroid/view/View;

    return-object v0
.end method

.method private isMiniPlayerClickable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    .line 396
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->setEnabled(Z)V

    .line 406
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    sget-object v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isMiniPlayerClickable() return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->setEnabled(Z)V

    goto :goto_0
.end method

.method private static isRadioActivated()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 522
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 523
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, "activeQueue":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeTransitionView()V
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getAlbumView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPrevView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 368
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPlayView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getNextView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mTransitionViews:[Landroid/view/View;

    .line 369
    return-void
.end method

.method private realignComponents(Z)V
    .locals 7
    .param p1, "isRadio"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 324
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    if-nez v4, :cond_0

    .line 345
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->getTitleView()Landroid/view/View;

    move-result-object v2

    .line 329
    .local v2, "title":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->getArtistView()Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, "artist":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 333
    .local v3, "titleParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 334
    .local v1, "artistParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 335
    iput v6, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 336
    const v4, 0x7f120129

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 337
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 343
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 339
    :cond_1
    const v4, 0x7f1204a6

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 340
    iput v5, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 341
    iput v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_1
.end method

.method private varargs setComponentsVisibility(I[Landroid/view/View;)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 292
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 293
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setParentWidth(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 311
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 312
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 315
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void
.end method

.method private switchUi(I)V
    .locals 14
    .param p1, "queueType"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 258
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPrevButton()Landroid/view/View;

    move-result-object v4

    .line 259
    .local v4, "prev":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getNextButton()Landroid/view/View;

    move-result-object v3

    .line 260
    .local v3, "next":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniQueueButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    .line 261
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->getButton()Landroid/view/View;

    move-result-object v5

    .line 262
    .local v5, "queue":Landroid/view/View;
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    .line 263
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->getButton()Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "closeButton":Landroid/view/View;
    :goto_1
    const/4 v6, 0x0

    .line 266
    .local v6, "seekBar":Landroid/view/View;
    const/4 v1, 0x0

    .line 267
    .local v1, "currentTime":Landroid/view/View;
    const/4 v2, 0x0

    .line 268
    .local v2, "duration":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    if-eqz v7, :cond_0

    .line 269
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    .line 270
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController;->getCurrentTimeTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 271
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mSeekController:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController;->getDurationTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 274
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 283
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/view/View;

    aput-object v4, v7, v10

    aput-object v3, v7, v11

    aput-object v5, v7, v9

    aput-object v6, v7, v12

    aput-object v1, v7, v13

    const/4 v8, 0x5

    aput-object v2, v7, v8

    invoke-direct {p0, v10, v7}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setComponentsVisibility(I[Landroid/view/View;)V

    .line 285
    const/16 v7, 0x8

    new-array v8, v11, [Landroid/view/View;

    aput-object v0, v8, v10

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setComponentsVisibility(I[Landroid/view/View;)V

    .line 286
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->realignComponents(Z)V

    .line 289
    :goto_2
    return-void

    .line 261
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v1    # "currentTime":Landroid/view/View;
    .end local v2    # "duration":Landroid/view/View;
    .end local v5    # "queue":Landroid/view/View;
    .end local v6    # "seekBar":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 263
    .restart local v5    # "queue":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 276
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v1    # "currentTime":Landroid/view/View;
    .restart local v2    # "duration":Landroid/view/View;
    .restart local v6    # "seekBar":Landroid/view/View;
    :pswitch_0
    const/16 v7, 0x8

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/view/View;

    aput-object v4, v8, v10

    aput-object v3, v8, v11

    aput-object v5, v8, v9

    aput-object v6, v8, v12

    aput-object v1, v8, v13

    const/4 v9, 0x5

    aput-object v2, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setComponentsVisibility(I[Landroid/view/View;)V

    .line 278
    new-array v7, v11, [Landroid/view/View;

    aput-object v0, v7, v10

    invoke-direct {p0, v10, v7}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->setComponentsVisibility(I[Landroid/view/View;)V

    .line 279
    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->realignComponents(Z)V

    goto :goto_2

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 479
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 519
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityPaused(Landroid/app/Activity;)V

    .line 501
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->getTransitionViews()[Landroid/view/View;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 493
    .local v0, "view":Landroid/view/View;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityResumed(Landroid/app/Activity;)V

    .line 496
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 514
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityStarted(Landroid/app/Activity;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->setEnabled(Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mClickEventInterceptor:Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->setEnabled(Z)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->onActivityStopped(Landroid/app/Activity;)V

    .line 509
    return-void
.end method

.method public onBottomBarMenuCreated()Z
    .locals 3

    .prologue
    .line 452
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getPrivateView()Landroid/view/View;

    move-result-object v1

    .line 453
    .local v1, "privateView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 454
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->addAlphaAnimationView(Landroid/view/View;)V

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->getLoadingView()Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, "loadingView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 458
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->hide()V

    .line 461
    const/4 v2, 0x1

    return v2
.end method

.method public onBottomBarMenuDestroyed()Z
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniPlayerAnimator:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    new-instance v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$2;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->show(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 234
    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 236
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "queueType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 239
    .local v0, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 240
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 241
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 242
    new-instance v2, Lcom/samsung/android/app/music/common/RadioPlayerController;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/RadioPlayerController;-><init>()V

    .line 243
    .local v2, "radioController":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 244
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 253
    .end local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .end local v2    # "radioController":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->switchUi(I)V

    .line 255
    .end local v1    # "queueType":I
    :cond_0
    return-void

    .line 247
    .restart local v1    # "queueType":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 249
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 250
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 251
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAdPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAdPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 229
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mIsEmptyMedia:Z

    .line 230
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mMiniCloseButtonController:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    goto :goto_0
.end method

.method public setFullPlayerEnterEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mAlbumArt:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;->setAlbumClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mUiType:I

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mPlayingItemText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setTextClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 386
    goto :goto_0
.end method

.method public setMiniPlayerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120260

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    return-void

    .line 381
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
