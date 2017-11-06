.class final Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "NormalVolumeControlImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;,
        Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;
    }
.end annotation


# static fields
.field private static final SET_FINEVOLUME:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

.field private mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

.field private final mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mContext:Landroid/content/Context;

.field private mInternalVolumeIcon:Landroid/view/View;

.field private mIsApplyingFineVolume:Z

.field private final mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

.field private final mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private mPanel:Landroid/widget/PopupWindow;

.field private mProgressChangedEnabled:Z

.field private final mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

.field private mVolumeChangedFromUser:Z

.field private mVolumeControlType:Ljava/lang/String;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private mVolumeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/BackgroundWorker;Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "look"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .param p3, "worker"    # Lcom/samsung/android/app/music/common/player/BackgroundWorker;
    .param p4, "seekBarColor"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;
    .param p5, "actionCallback"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;
    .param p6, "listener"    # Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mProgressChangedEnabled:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeChangedFromUser:Z

    .line 69
    const-string v0, "1000"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeControlType:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 77
    iput-object p4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    .line 78
    iput-object p5, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    .line 79
    iput-object p6, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 82
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;-><init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeControlType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeControlType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mIsApplyingFineVolume:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mProgressChangedEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->setFineVolumeAsync(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateIconInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->showPanelInternal(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateVolumeText(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeChangedFromUser:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isNotWorkingFineVolume()Z

    move-result v0

    return v0
.end method

.method private adjustVolumeInternal(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updatePanel()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateIcon()V

    .line 128
    return-void
.end method

.method private isNotWorkingFineVolume()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mIsApplyingFineVolume:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    .line 369
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isUpdatingVolumeLevel()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "isUpdatingVolumeLevel":Z
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeChangedFromUser:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    .line 349
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    :cond_0
    const-string v2, "UiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isUpdatingVolumeLevel() - mVolumeChangedFromUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeChangedFromUser:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAdjustVolumeThreadHandler.hasMessages(SET_FINEVOLUME) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    .line 355
    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    .line 358
    :cond_2
    return v0
.end method

.method private requestFocusToVolumeSeekBar()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 344
    :cond_0
    return-void
.end method

.method private setFineVolumeAsync(I)V
    .locals 4
    .param p1, "fineVolume"    # I

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    const/4 v2, -0x1

    .line 364
    invoke-virtual {v1, v3, p1, v2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method

.method private setUpVolumeIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    const v0, 0x7f120057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$3;-><init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    :cond_0
    return-void
.end method

.method private showPanelInternal(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAllSoundOff(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const/4 v3, 0x3

    .line 221
    invoke-virtual {v1, v3, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->adjustStreamVolume(III)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->ensurePanel()V

    .line 226
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;->onShow(Landroid/widget/PopupWindow;)V

    .line 227
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    invoke-interface {v3, v1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;->onPanelVisibilityChanged(Z)V

    .line 229
    const/4 v0, -0x1

    .line 230
    .local v0, "earProtectLimitIndex":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isSafeMediaVolumeDeviceOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getEarProtectLimitIndex()I

    move-result v0

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V

    .line 235
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 238
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mIsApplyingFineVolume:Z

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 242
    if-lez p1, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateIconInternal(Z)V

    .line 243
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateVolumeText(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 242
    goto :goto_1
.end method

.method private updateIconInternal(Z)V
    .locals 1
    .param p1, "isOutput"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;->onVolumeStateChanged(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method private updateVolumeText(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumeNumber(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustVolume(ZI)Z
    .locals 3
    .param p1, "fromDpad"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isShowingPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    if-ne p2, v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->adjustVolumeInternal(I)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->requestFocusToVolumeSeekBar()V

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->adjustVolumeInternal(I)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->requestFocusToVolumeSeekBar()V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_3
    const-string v1, "1000"

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeControlType:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->adjustVolumeInternal(I)V

    goto :goto_0
.end method

.method public ensurePanel()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;->onCreate(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;-><init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 153
    const v1, 0x7f1201fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    iget v2, v2, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->thumbColor:I

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    iget v2, v2, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->progressColor:I

    .line 167
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mSeekBarColor:Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;

    iget v2, v2, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->backgroundColor:I

    .line 169
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;-><init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 207
    const v1, 0x7f1201fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mVolumeText:Landroid/widget/TextView;

    .line 208
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->setUpVolumeIcon(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public hidePanel()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 252
    :cond_0
    return-void
.end method

.method public isShowingPanel()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isShowingPanel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->isVolumeKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->hidePanel()V

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    .line 305
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->adjustVolume(ZI)Z

    move-result v0

    goto :goto_0

    .line 306
    :cond_2
    const/16 v2, 0x13

    if-ne p1, v2, :cond_3

    .line 307
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->adjustVolume(ZI)Z

    move-result v0

    goto :goto_0

    .line 310
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeMute(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->toggleMute()V

    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mProgressChangedEnabled:Z

    .line 90
    return-void
.end method

.method public onStopCalled()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAdjustVolumeThreadHandler:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mProgressChangedEnabled:Z

    .line 98
    return-void
.end method

.method public setContentDescription(Landroid/view/View;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0205

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 295
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumePercent()I

    move-result v2

    .line 294
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonPercentDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public showPanel()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->showPanelInternal(I)V

    .line 214
    return-void
.end method

.method public toggleMute()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->toggleMute()V

    .line 133
    return-void
.end method

.method public updateIcon()V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isShowingPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->updateIconInternal(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updatePanel()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isUpdatingVolumeLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isShowingPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->showPanel()V

    goto :goto_0
.end method
