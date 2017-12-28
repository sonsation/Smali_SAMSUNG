.class public Lcom/android/launcher3/widget/folder/WidgetFolderController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "WidgetFolderController.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;
    }
.end annotation


# static fields
.field private static final RUNTIME_WIDGETFOLDER_CURRENT_SCREEN:Ljava/lang/String; = "RUNTIME_WIDGETFOLDER_CURRENT_SCREEN"

.field private static final TAG:Ljava/lang/String; = "WidgetFolderController"


# instance fields
.field private mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

.field private mBgBlurAmount:F

.field private mBgDarkenAlpha:F

.field private mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

.field private mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

.field private mFromHomeSetting:Z

.field private mIsFinishOnTouchOutSide:Z

.field private mIsOnStage:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

.field private mWhiteWallpaper:Z

.field private mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

.field private mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

.field private final mWidgetStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/widget/controller/WidgetState$State;",
            "Lcom/android/launcher3/widget/controller/WidgetState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetStateMap:Ljava/util/HashMap;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsOnStage:Z

    .line 67
    new-instance v0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;-><init>(Lcom/android/launcher3/widget/folder/WidgetFolderController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/folder/WidgetFolderController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/folder/WidgetFolderController;
    .param p1, "x1"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/folder/WidgetFolderController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/folder/WidgetFolderController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/widget/folder/WidgetFolderController;Lcom/android/launcher3/widget/controller/WidgetDragController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/folder/WidgetFolderController;
    .param p1, "x1"    # Lcom/android/launcher3/widget/controller/WidgetDragController;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/folder/WidgetFolderController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/folder/WidgetFolderController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWhiteWallpaper:Z

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->changeColorForBg(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWhiteWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->changeColorForBg(Z)V

    .line 245
    return-void
.end method

.method private changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "animate"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 249
    .local v1, "oldWidgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v2

    .line 251
    .local v2, "toWidgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    const/4 v0, 0x0

    .line 252
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    if-eqz p2, :cond_0

    .line 253
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    .restart local v0    # "animSet":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    .line 257
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    .line 259
    iput-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 260
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 263
    :cond_1
    return-void
.end method

.method private getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/controller/WidgetState;

    .line 267
    .local v0, "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 272
    .end local v0    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    .local v1, "widgetState":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 269
    .end local v1    # "widgetState":Ljava/lang/Object;
    .restart local v0    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;

    .end local v0    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/widget/folder/WidgetFolderController$WidgetStateFolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    .restart local v0    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/controller/WidgetState;->setActionListener(Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;)V

    .line 271
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 272
    .restart local v1    # "widgetState":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public finishOnTouchOutSide()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsFinishOnTouchOutSide:Z

    .line 322
    return v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mBgBlurAmount:F

    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 311
    iget v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mBgDarkenAlpha:F

    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    return-object v0
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->ordinal()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    return-object v0
.end method

.method public initStageView()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 103
    iget-boolean v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mViewInitiated:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mBgBlurAmount:F

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mBgDarkenAlpha:F

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetFolder;

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    const v1, 0x7f110105

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPagedView;

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V

    .line 111
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 112
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    goto :goto_0
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteWallpaper()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWhiteWallpaper:Z

    return v0
.end method

.method protected keepInstance()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 223
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 224
    .local v0, "entry":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_WIDGET_FROM_SETTING"

    iget-boolean v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFromHomeSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsOnStage:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->changeColorForBg(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 1
    .param p1, "changedOrientation"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->onConfigurationChangedIfNeeded()V

    .line 333
    return-void
.end method

.method public onDestroyActivity()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onPagedViewFocusUp()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onPauseActivity()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onPause()V

    .line 123
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 127
    return-void
.end method

.method public onResumeActivity()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onResume()V

    .line 118
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v0, "RUNTIME_WIDGETFOLDER_CURRENT_SCREEN"

    iget-object v1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public onSearchResult(Z)V
    .locals 0
    .param p1, "found"    # Z

    .prologue
    .line 287
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 4
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsOnStage:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsFinishOnTouchOutSide:Z

    .line 156
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->changeColorForBg(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    if-nez v2, :cond_0

    .line 158
    const-string v2, "KEY_WIDGET_FOLDER_MANAGER"

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    iput-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->getAnchorView()Lcom/android/launcher3/widget/view/WidgetItemView;

    move-result-object v0

    .line 161
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFromHomeSetting:Z

    .line 162
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 163
    .local v1, "animate":Z
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->open(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;

    move-result-object v2

    return-object v2

    .line 160
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "animate":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 6
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 168
    iput-boolean v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsOnStage:Z

    .line 169
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v3, v5, :cond_3

    .line 170
    iget-boolean v3, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mIsFinishOnTouchOutSide:Z

    if-eqz v3, :cond_2

    .line 171
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetFolderLog(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    iget-boolean v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v3, :cond_4

    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v3, v5, :cond_4

    .line 182
    .local v1, "animate":Z
    :goto_1
    const/4 v0, 0x0

    .line 183
    .local v0, "anchorView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mFolderManager:Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->getAnchorView()Lcom/android/launcher3/widget/view/WidgetItemView;

    move-result-object v0

    .line 186
    :cond_1
    const-string v2, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetFolder:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->close(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;

    move-result-object v2

    return-object v2

    .line 173
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "animate":Z
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetFolderLog(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v3, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 177
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetFolderLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 181
    goto :goto_1
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemClick(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "isOnTop"    # Z

    .prologue
    const/4 v2, -0x1

    .line 136
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 137
    const-string v1, "RUNTIME_WIDGETFOLDER_CURRENT_SCREEN"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "restorePage":I
    if-eq v0, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setRestorePage(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public searchBarHasFocus()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method
