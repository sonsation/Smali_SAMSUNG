.class public final Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
.super Ljava/lang/Object;
.source "DexPlayerInputController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDexPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

.field private final mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dexVolumeController"    # Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .param p4, "dexPlayerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mContext:Landroid/content/Context;

    .line 29
    move-object v0, p2

    .line 30
    .local v0, "baseView":Landroid/view/View;
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 33
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 67
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method private isDexVolumeKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 95
    const/16 v0, 0x89

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processOtherKeyEvent(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "handled":Z
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method private processVolumeKeyEvent(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/16 v1, 0x8a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->volumeDownOnDex()Z

    move-result v0

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    const/16 v1, 0x8b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->volumeUpOnDex()Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_4
    const/16 v1, 0x89

    if-ne p1, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->mDexVolumeController:Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->toggleMuteOnDex()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "handled":Z
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->isDexVolumeKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->processVolumeKeyEvent(I)Z

    move-result v0

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->processOtherKeyEvent(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->isDexVolumeKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method
