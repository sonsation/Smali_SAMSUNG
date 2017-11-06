.class public Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
.super Ljava/lang/Object;
.source "VolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

.field private final mActivity:Landroid/app/Activity;

.field private mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

.field private final mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private final mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field private final mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

.field private final mView:Landroid/view/View;

.field private mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p4, "lifeCycleAdapter"    # Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .param p5, "normalLook"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .param p6, "dmrLook"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .param p7, "callback"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mActivity:Landroid/app/Activity;

    .line 386
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mView:Landroid/view/View;

    .line 387
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 388
    iput-object p4, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    .line 389
    iput-object p5, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 390
    iput-object p6, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 391
    iput-object p7, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mNormalLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mDmrLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/BackgroundWorker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/common/player/volume/VolumeController;
    .locals 2

    .prologue
    .line 413
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;)V

    return-object v0
.end method

.method public setBackgroundWorker(Lcom/samsung/android/app/music/common/player/BackgroundWorker;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    .locals 0
    .param p1, "worker"    # Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .line 396
    return-object p0
.end method

.method public setSeekBarColors(III)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    .locals 5
    .param p1, "thumbId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "progressId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "backgroundId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 403
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;-><init>(III)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    .line 404
    return-object p0
.end method

.method public setVolumeLogger(Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;)Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;
    .locals 0
    .param p1, "volumeLogger"    # Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$Builder;->mVolumeLogger:Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    .line 409
    return-object p0
.end method
