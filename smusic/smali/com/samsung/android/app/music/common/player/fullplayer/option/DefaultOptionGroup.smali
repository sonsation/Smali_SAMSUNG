.class public final Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;
.implements Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;
    }
.end annotation


# instance fields
.field private final mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

.field private final mContext:Landroid/content/Context;

.field private final mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

.field private final mListButtonController:Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;

.field private mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/PlayerControllable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerControllable"    # Lcom/samsung/android/app/music/common/player/PlayerControllable;
    .param p4, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p5, "lifeCycleAdapter"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p6, "playerLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .param p7, "listener"    # Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->inflateView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;Lcom/samsung/android/app/music/common/player/PlayerControllable;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mListButtonController:Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/music/common/player/BackgroundWorker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 70
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setFavoriteMaximumReachedCallback(Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0, p6}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$3;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setOnFavoriteIconClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->createVolumeController(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;)Lcom/samsung/android/app/music/common/player/FavoriteController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    return-object v0
.end method

.method private createVolumeController(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p4, "lifeCycleAdapter"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p5, "listener"    # Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;

    .prologue
    .line 99
    const v11, 0x7f0d0154

    .line 100
    .local v11, "widthId":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v10, 0x7f0d0152

    .line 103
    .local v10, "heightId":I
    :goto_0
    const v9, 0x7f020112

    .line 105
    .local v9, "backgroundId":I
    new-instance v6, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    const v2, 0x7f04008e

    invoke-direct {v6, v2, v11, v10, v9}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;-><init>(IIII)V

    .line 108
    .local v6, "normalLook":Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    new-instance v7, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    const v2, 0x7f04008f

    const v3, 0x7f0d014e

    invoke-direct {v7, v2, v11, v3, v9}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;-><init>(IIII)V

    .line 112
    .local v7, "dmrLook":Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    new-instance v8, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    invoke-direct {v8, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;)V

    .line 115
    .local v1, "builder":Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->setBackgroundWorker(Lcom/samsung/android/app/music/common/player/BackgroundWorker;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    move-result-object v2

    const v3, 0x7f1100da

    const v4, 0x7f1100d8

    const v5, 0x7f1100d7

    .line 116
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->setSeekBarColors(III)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    move-result-object v2

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getFullPlayerVolumeLogger()Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->setVolumeLogger(Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->build()Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .line 121
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->setOnPanelVisibilityChangedListener(Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V

    .line 122
    return-void

    .line 100
    .end local v1    # "builder":Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    .end local v6    # "normalLook":Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .end local v7    # "dmrLook":Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .end local v9    # "backgroundId":I
    .end local v10    # "heightId":I
    :cond_0
    const v10, 0x7f0d001a

    goto :goto_0
.end method


# virtual methods
.method public getDexVolumeController()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    return-object v0
.end method

.method public hideVolumePanel()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->hideVolumePanel()V

    .line 175
    return-void
.end method

.method public inflateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    return-void
.end method

.method public onGetTintInfo(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 2
    .param p1, "tintInfo"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setPrimaryColor(I)V

    .line 155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->release()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->quit()V

    .line 133
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mListButtonController:Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->setFocusable(Z)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setFocusable(Z)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->setFocusable(Z)V

    .line 140
    return-void
.end method

.method public toggleFavorite(Z)Z
    .locals 1
    .param p1, "isFavorite"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->isFavorite()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->toggleFavorite()V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVolumeUi()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;->mVolumeController:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->updateVolumeUi()V

    .line 170
    return-void
.end method
