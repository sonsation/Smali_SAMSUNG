.class public Lcom/android/launcher3/allapps/AppsTransitionAnimation;
.super Ljava/lang/Object;
.source "AppsTransitionAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsTransitionAnimation"


# instance fields
.field private final mAppsContentView:Landroid/view/ViewGroup;

.field private final mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private final mAppsPageIndicatorView:Landroid/view/View;

.field private final mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mFolderBgGrowFactor:F

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p3, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 98
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    .line 99
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 109
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 110
    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPageIndicatorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    .line 116
    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/AppsTransitionAnimation;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    return-void
.end method

.method private cancelStageAnimation()V
    .locals 4

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 977
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 979
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 980
    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 985
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 987
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 988
    return-void
.end method

.method private changeCellLayoutBackground(IZ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "enter"    # Z

    .prologue
    const/4 v6, 0x0

    .line 991
    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    .line 992
    .local v0, "appsPagedView":Lcom/android/launcher3/allapps/view/AppsPagedView;
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 993
    .local v1, "backgroundAlpha":F
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 994
    .local v2, "childCount":I
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    .line 996
    .local v4, "currentPage":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 997
    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 998
    .local v3, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p2, :cond_1

    .line 999
    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1004
    :goto_2
    if-ne v5, v4, :cond_2

    .line 1005
    invoke-virtual {v3, v6}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 996
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "backgroundAlpha":F
    .end local v2    # "childCount":I
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v4    # "currentPage":I
    .end local v5    # "i":I
    :cond_0
    move v1, v6

    .line 992
    goto :goto_0

    .line 1001
    .restart local v1    # "backgroundAlpha":F
    .restart local v2    # "childCount":I
    .restart local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .restart local v4    # "currentPage":I
    .restart local v5    # "i":I
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_2

    .line 1007
    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1010
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_3
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V
    .locals 11
    .param p1, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;
    .param p2, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "duration"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 1014
    if-eqz p3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1015
    .local v0, "backgroundAlpha":F
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 1016
    .local v2, "childCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    .line 1018
    .local v4, "currentPage":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_7

    .line 1019
    invoke-virtual {p1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1020
    .local v3, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p2, :cond_5

    .line 1021
    if-eqz p3, :cond_4

    .line 1022
    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1023
    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    .line 1024
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 1033
    :cond_0
    :goto_2
    if-eq v5, v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_2

    .line 1034
    :cond_1
    const-string v6, "backgroundAlpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    .line 1035
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getBackgroundAlpha()F

    move-result v8

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v0, v7, v8

    .line 1034
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1036
    .local v1, "bgAnim":Landroid/animation/ValueAnimator;
    int-to-long v6, p4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1037
    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;

    invoke-direct {v6, p0, p3, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/allapps/view/AppsViewCellLayout;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1045
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1018
    .end local v1    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1014
    .end local v0    # "backgroundAlpha":F
    .end local v2    # "childCount":I
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v4    # "currentPage":I
    .end local v5    # "i":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1027
    .restart local v0    # "backgroundAlpha":F
    .restart local v2    # "childCount":I
    .restart local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .restart local v4    # "currentPage":I
    .restart local v5    # "i":I
    :cond_4
    if-eq v5, v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    if-eq v5, v6, :cond_0

    .line 1028
    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1029
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    .line 1048
    :cond_5
    if-eqz p3, :cond_6

    .line 1049
    invoke-virtual {v3, v10}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 1053
    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1051
    :cond_6
    invoke-virtual {v3, v9}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    goto :goto_4

    .line 1056
    .end local v3    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_7
    return-void
.end method

.method private getGridShrinkFactor()F
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getStageAnimationDuration(II)I
    .locals 6
    .param p1, "fromStage"    # I
    .param p2, "toStage"    # I

    .prologue
    const v5, 0x7f0b0029

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 308
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    .local v0, "res":Landroid/content/res/Resources;
    if-ne p1, v2, :cond_1

    .line 311
    if-ne p2, v4, :cond_0

    .line 312
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 313
    :cond_0
    if-ne p2, v3, :cond_3

    .line 314
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 316
    :cond_1
    if-ne p1, v3, :cond_2

    .line 317
    if-ne p2, v2, :cond_3

    .line 318
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 320
    :cond_2
    if-ne p1, v4, :cond_3

    .line 321
    if-ne p2, v2, :cond_3

    .line 322
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 326
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2
    .param p1, "toState"    # I

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 344
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 345
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 358
    :goto_0
    return v1

    .line 346
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 347
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 348
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 349
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 350
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 351
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 352
    :cond_3
    if-nez p1, :cond_4

    .line 353
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 354
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 355
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 358
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSwipeAnimationDuration(ZF)I
    .locals 3
    .param p1, "enter"    # Z
    .param p2, "movingDistance"    # F

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 330
    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v0

    .line 332
    .local v0, "duration":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-nez v1, :cond_1

    .line 338
    .end local v0    # "duration":I
    :goto_1
    return v0

    .line 331
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v0

    goto :goto_0

    .line 335
    .restart local v0    # "duration":I
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 336
    const/4 v0, 0x0

    goto :goto_1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p2, v0}, Lcom/android/launcher3/common/tray/TrayManager;->calculateDuration(FI)I

    move-result v0

    goto :goto_1
.end method

.method private getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;)V
    .locals 20
    .param p2, "duration"    # I
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;
    .param p4, "animationEndRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v13

    if-nez v13, :cond_1

    .line 699
    :cond_0
    const-string v13, "AppsTransitionAnimation"

    const-string v14, "mStateAnimator is null. It must be created before using ViewAnimator"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 703
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v4, "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    .line 705
    .local v5, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v6, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v6, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 708
    .local v6, "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v13

    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 709
    new-instance v13, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v1, v2, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 729
    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 730
    .local v7, "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v7, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v13

    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v12

    .line 733
    .local v12, "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v13

    if-ge v9, v13, :cond_3

    .line 734
    invoke-virtual {v5, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 735
    .local v8, "iconView":Landroid/view/View;
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 737
    .local v10, "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 738
    invoke-virtual {v15}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f666666    # 0.9f

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 739
    invoke-virtual {v15}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f666666    # 0.9f

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 737
    invoke-virtual {v10, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 740
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v11

    .line 741
    .local v11, "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 742
    invoke-virtual {v15}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 743
    invoke-virtual {v15}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 741
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 746
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 747
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 733
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 751
    .end local v8    # "iconView":Landroid/view/View;
    .end local v10    # "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    .end local v11    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 752
    .restart local v8    # "iconView":Landroid/view/View;
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v11

    .line 754
    .restart local v11    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const v14, 0x3f666666    # 0.9f

    invoke-virtual {v8, v14}, Landroid/view/View;->setScaleX(F)V

    .line 755
    const v14, 0x3f666666    # 0.9f

    invoke-virtual {v8, v14}, Landroid/view/View;->setScaleY(F)V

    .line 756
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 757
    invoke-virtual/range {v16 .. v16}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 758
    invoke-virtual/range {v16 .. v16}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    .line 756
    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 761
    .end local v8    # "iconView":Landroid/view/View;
    .end local v11    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method


# virtual methods
.method public getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 25
    .param p1, "animated"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 363
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    .line 365
    .local v10, "duration":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 366
    if-eqz p1, :cond_6

    .line 367
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 368
    const/4 v4, 0x0

    .line 369
    .local v4, "addedListener":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v5, "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareViewsForReposition()Ljava/util/ArrayList;

    move-result-object v17

    .line 371
    .local v17, "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v14

    .line 372
    .local v14, "pageCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v9

    .line 373
    .local v9, "currentPage":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_7

    .line 374
    if-eq v11, v9, :cond_0

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    .line 375
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 376
    .local v6, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v7, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v7, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 379
    .local v7, "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 380
    new-instance v8, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v8, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 381
    .local v8, "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 382
    if-nez v4, :cond_2

    .line 383
    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 409
    .local v12, "iconView":Landroid/view/View;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    .line 411
    .local v16, "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 412
    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 413
    invoke-virtual/range {v21 .. v21}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    .line 411
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 416
    .end local v12    # "iconView":Landroid/view/View;
    .end local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_1
    new-instance v18, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    const/4 v4, 0x1

    .line 434
    :cond_2
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    .line 435
    invoke-virtual {v6, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 436
    .restart local v12    # "iconView":Landroid/view/View;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v15

    .line 438
    .local v15, "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 439
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 440
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f666666    # 0.9f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    .line 438
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 441
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    .line 442
    .restart local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 443
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 444
    invoke-virtual/range {v20 .. v20}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    .line 442
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 447
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 448
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 434
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 451
    .end local v12    # "iconView":Landroid/view/View;
    .end local v15    # "scaleDownAnimSet":Landroid/animation/AnimatorSet;
    .end local v16    # "scaleUpAnimSet":Landroid/animation/AnimatorSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 373
    .end local v6    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v7    # "cellLayoutAlphaToHide":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v8    # "cellLayoutAlphaToShow":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v13    # "index":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 456
    .end local v4    # "addedListener":Z
    .end local v5    # "animateViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "currentPage":I
    .end local v11    # "i":I
    .end local v14    # "pageCount":I
    .end local v17    # "viewsTobeShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    .line 460
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    return-object v18
.end method

.method public getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "withSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .line 779
    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v1

    .line 780
    .local v1, "duration":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 781
    .local v2, "searchBarAlphaValue":F
    :goto_0
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 782
    .local v0, "accessibilityEnabled":Z
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v3

    .line 783
    .local v3, "searchBarContainerView":Landroid/view/View;
    if-eqz p4, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v6

    .line 784
    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    .line 786
    .local v5, "topLayout":Landroid/view/View;
    :goto_1
    invoke-direct {p0, v7, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    .line 788
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 789
    if-eqz p1, :cond_3

    .line 790
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 792
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v6, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v6, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 795
    invoke-virtual {v6, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    .line 796
    .local v4, "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v6, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v6, v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 797
    if-eqz p3, :cond_2

    .line 798
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 802
    :goto_2
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 803
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 804
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;

    invoke-direct {v7, p0, v5, p3, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$10;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;ZF)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    .end local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 780
    .end local v0    # "accessibilityEnabled":Z
    .end local v2    # "searchBarAlphaValue":F
    .end local v3    # "searchBarContainerView":Landroid/view/View;
    .end local v5    # "topLayout":Landroid/view/View;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .restart local v0    # "accessibilityEnabled":Z
    .restart local v2    # "searchBarAlphaValue":F
    .restart local v3    # "searchBarContainerView":Landroid/view/View;
    :cond_1
    move-object v5, v3

    .line 784
    goto :goto_1

    .line 800
    .restart local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v5    # "topLayout":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 817
    .end local v4    # "topBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 818
    if-eqz p3, :cond_4

    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .param p1, "animated"    # Z
    .param p3, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 152
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 153
    if-eqz p1, :cond_2

    .line 154
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 155
    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 157
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 160
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_1

    .line 161
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 162
    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    .line 163
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 164
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 170
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 171
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 173
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 174
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 175
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 178
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 179
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 180
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 184
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 185
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 188
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$1;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 167
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 168
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 209
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 210
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 173
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 10
    .param p1, "animated"    # Z
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 120
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 122
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 123
    if-eqz p1, :cond_4

    .line 124
    if-nez p2, :cond_2

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "movingDistance":F
    const/4 v4, 0x0

    .line 127
    .local v4, "range":I
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v4

    .line 129
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingDistance()F

    move-result v3

    .line 131
    :cond_0
    if-eqz v4, :cond_1

    cmpl-float v6, v3, v5

    if-nez v6, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0, v7, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSwipeAnimationDuration(ZF)I

    move-result v2

    .line 134
    .local v2, "duration":I
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 135
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 136
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 137
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 145
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "movingDistance":F
    .end local v4    # "range":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    .line 131
    .restart local v3    # "movingDistance":F
    .restart local v4    # "range":I
    :cond_3
    int-to-float v5, v4

    div-float v5, v3, v5

    .line 132
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v9, v5

    goto :goto_0

    .line 141
    .end local v3    # "movingDistance":F
    .end local v4    # "range":I
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 142
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 897
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 899
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 900
    if-eqz p1, :cond_0

    .line 901
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 902
    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 904
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 907
    .local v1, "alphaAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 908
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 909
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 910
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 912
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 933
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 929
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 930
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 931
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .param p1, "animated"    # Z
    .param p3, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 251
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 252
    if-eqz p1, :cond_1

    .line 253
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 254
    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 256
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 259
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 266
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 268
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 269
    .local v1, "alphaAnim":Landroid/animation/Animator;
    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 270
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 273
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 274
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 275
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 278
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 279
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 280
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 283
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$2;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 262
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 263
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 300
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 301
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v6, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 10
    .param p1, "animated"    # Z
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 217
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 219
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 220
    if-eqz p1, :cond_4

    .line 221
    if-nez p2, :cond_2

    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "movingDistance":F
    const/4 v4, 0x0

    .line 224
    .local v4, "range":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v4

    .line 226
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingDistance()F

    move-result v3

    .line 228
    :cond_0
    if-eqz v4, :cond_1

    cmpl-float v5, v3, v6

    if-nez v5, :cond_3

    :cond_1
    move v5, v6

    :goto_0
    invoke-direct {p0, v9, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSwipeAnimationDuration(ZF)I

    move-result v2

    .line 231
    .local v2, "duration":I
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 232
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [F

    aput v6, v8, v9

    invoke-static {v5, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 233
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 234
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 245
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "movingDistance":F
    .end local v4    # "range":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    .line 228
    .restart local v3    # "movingDistance":F
    .restart local v4    # "range":I
    :cond_3
    int-to-float v5, v4

    div-float v5, v3, v5

    .line 229
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_0

    .line 238
    .end local v3    # "movingDistance":F
    .end local v4    # "range":I
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 239
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 240
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 242
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 937
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 939
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStageAnimation()V

    .line 940
    if-eqz p1, :cond_0

    .line 941
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 942
    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 944
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 947
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 948
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 949
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 951
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$13;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 971
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v3

    .line 968
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 969
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsContentView:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getRepositionEnterAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    .line 467
    .local v0, "duration":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 470
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;)V

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;
    .locals 34
    .param p1, "animated"    # Z
    .param p3, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .param p4, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            "Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v8

    .line 485
    .local v8, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 486
    .local v29, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v12

    .line 487
    .local v12, "appsPagedView":Lcom/android/launcher3/allapps/view/AppsPagedView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v6

    .line 488
    .local v6, "searchBarContainerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v9

    .line 489
    .local v9, "appsScreengridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v16

    .line 490
    .local v16, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v4

    .line 491
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v11

    .line 492
    .local v11, "appsScreenGridTopContainer":Landroid/view/View;
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v24

    .line 494
    .local v24, "duration":I
    if-eqz p4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getGridShrinkFactor()F

    move-result v13

    .line 495
    .local v13, "appsPagedViewShrinkFactor":F
    :goto_0
    const v4, 0x7f0a0020

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a00f8

    .line 496
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v20, v0

    .line 497
    .local v20, "appsPagedViewTranslationScreengridY":F
    if-eqz p4, :cond_4

    move/from16 v0, v20

    neg-float v15, v0

    .line 500
    .local v15, "appsPagedViewTranslationY":F
    :goto_1
    if-eqz p4, :cond_5

    const/4 v7, 0x0

    .line 501
    .local v7, "searchBarAlphaValue":F
    :goto_2
    if-eqz p4, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    .line 502
    .local v10, "screengridAlphaValue":F
    :goto_3
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v23

    .line 503
    .local v23, "currentPage":I
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v26

    .line 504
    .local v26, "pageCount":I
    if-nez v26, :cond_7

    const/16 v19, 0x0

    .line 506
    .local v19, "appsPagedViewOffsetX":I
    :goto_4
    const v4, 0x7f0a001f

    .line 507
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 508
    .local v27, "pageIndicatorMarginBottomScreenGrid":I
    if-eqz p4, :cond_9

    move/from16 v0, v27

    neg-int v4, v0

    int-to-float v0, v4

    move/from16 v17, v0

    .line 511
    .local v17, "pageIndicatorTranslationY":F
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 513
    if-eqz v19, :cond_0

    .line 514
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollForPage(I)I

    move-result v4

    add-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollTo(II)V

    .line 516
    :cond_0
    if-eqz p1, :cond_b

    .line 517
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 519
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v18, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 526
    .local v18, "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 527
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 528
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 530
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 533
    if-eqz v16, :cond_1

    .line 534
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 535
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v28

    .line 536
    .local v28, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 537
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 540
    .end local v28    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 541
    invoke-virtual {v4, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v31

    .line 542
    .local v31, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v6, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 546
    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v30

    .line 547
    .local v30, "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v9, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 550
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 552
    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v32

    .line 553
    .local v32, "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v4, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v4, v11, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    if-eqz p4, :cond_a

    .line 557
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    :goto_6
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 568
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 569
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v33, v0

    new-instance v4, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;

    move-object/from16 v5, p0

    move/from16 v14, p4

    invoke-direct/range {v4 .. v17}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;FZLcom/android/launcher3/allapps/AppsScreenGridPanel;FLandroid/view/View;Lcom/android/launcher3/allapps/view/AppsPagedView;FZFLcom/android/launcher3/common/view/PageIndicator;F)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    .end local v15    # "appsPagedViewTranslationY":F
    .end local v18    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_2
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v24

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v4

    .line 494
    .end local v7    # "searchBarAlphaValue":F
    .end local v10    # "screengridAlphaValue":F
    .end local v13    # "appsPagedViewShrinkFactor":F
    .end local v17    # "pageIndicatorTranslationY":F
    .end local v19    # "appsPagedViewOffsetX":I
    .end local v20    # "appsPagedViewTranslationScreengridY":F
    .end local v23    # "currentPage":I
    .end local v26    # "pageCount":I
    .end local v27    # "pageIndicatorMarginBottomScreenGrid":I
    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 497
    .restart local v13    # "appsPagedViewShrinkFactor":F
    .restart local v20    # "appsPagedViewTranslationScreengridY":F
    :cond_4
    const v4, 0x7f0a00f8

    .line 498
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v15, v4

    goto/16 :goto_1

    .line 500
    .restart local v15    # "appsPagedViewTranslationY":F
    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 501
    .restart local v7    # "searchBarAlphaValue":F
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 504
    .restart local v10    # "screengridAlphaValue":F
    .restart local v23    # "currentPage":I
    .restart local v26    # "pageCount":I
    :cond_7
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLayoutTransitionOffsetForPage(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_8

    sub-int v4, v26, v23

    :goto_8
    mul-int v19, v5, v4

    goto/16 :goto_4

    :cond_8
    move/from16 v4, v23

    goto :goto_8

    .line 508
    .restart local v19    # "appsPagedViewOffsetX":I
    .restart local v27    # "pageIndicatorMarginBottomScreenGrid":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 562
    .restart local v17    # "pageIndicatorTranslationY":F
    .restart local v18    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v31    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v32    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 564
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_6

    .line 605
    .end local v18    # "appsPagedViewAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_b
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 606
    invoke-static {v6, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 607
    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setAlpha(F)V

    .line 608
    invoke-static {v9, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 609
    invoke-virtual {v11, v10}, Landroid/view/View;->setAlpha(F)V

    .line 610
    invoke-static {v11, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 613
    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleX(F)V

    .line 614
    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleY(F)V

    .line 617
    if-eqz p4, :cond_c

    .end local v15    # "appsPagedViewTranslationY":F
    :goto_9
    invoke-virtual {v12, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setTranslationY(F)V

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v21

    .line 620
    .local v21, "childCount":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_a
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 621
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 622
    .local v22, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->requestLayout()V

    .line 620
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 617
    .end local v21    # "childCount":I
    .end local v22    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v25    # "i":I
    .restart local v15    # "appsPagedViewTranslationY":F
    :cond_c
    const/4 v15, 0x0

    goto :goto_9

    .line 625
    .end local v15    # "appsPagedViewTranslationY":F
    .restart local v21    # "childCount":I
    .restart local v25    # "i":I
    :cond_d
    if-eqz v16, :cond_2

    .line 626
    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto/16 :goto_7
.end method

.method public getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 766
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 771
    if-nez p1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setPagedViewVisibility(Z)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    .line 772
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 17
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 824
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    .line 825
    .local v5, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    if-eqz p3, :cond_0

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v4

    .line 826
    .local v4, "duration":I
    :goto_0
    if-eqz p3, :cond_1

    move v13, v4

    .line 827
    .local v13, "startDelay":I
    :goto_1
    if-eqz p3, :cond_2

    const/4 v11, 0x0

    .line 828
    .local v11, "searchBarAlphaValue":F
    :goto_2
    if-eqz p3, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 829
    .local v6, "panelAlpha":F
    :goto_3
    if-eqz p3, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    .line 830
    .local v7, "panelScale":F
    :goto_4
    sget-object v14, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v14}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v2

    .line 831
    .local v2, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v12

    .line 833
    .local v12, "searchBarContainerView":Landroid/view/View;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 835
    if-eqz p1, :cond_5

    .line 836
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 837
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v14, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v14, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 841
    invoke-virtual {v14, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v10

    .line 842
    .local v10, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v14, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    invoke-direct {v14, v12, v2}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v14}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 844
    int-to-long v14, v4

    invoke-virtual {v10, v14, v15}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 846
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 847
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v6, v15, v16

    .line 846
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 848
    .local v3, "alphaAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 849
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 852
    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 853
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    .line 852
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 854
    .local v8, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 856
    int-to-long v14, v13

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 858
    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 859
    invoke-virtual {v14}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    .line 858
    invoke-static {v5, v14, v15}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 860
    .local v9, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v14, v4

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 861
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 862
    int-to-long v14, v13

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 864
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v15, v0, v1, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$11;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    .end local v3    # "alphaAnim":Landroid/animation/Animator;
    .end local v8    # "scaleXAnim":Landroid/animation/Animator;
    .end local v9    # "scaleYAnim":Landroid/animation/Animator;
    .end local v10    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v14

    .line 825
    .end local v2    # "accessibilityEnabled":Z
    .end local v4    # "duration":I
    .end local v6    # "panelAlpha":F
    .end local v7    # "panelScale":F
    .end local v11    # "searchBarAlphaValue":F
    .end local v12    # "searchBarContainerView":Landroid/view/View;
    .end local v13    # "startDelay":I
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 826
    .restart local v4    # "duration":I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 827
    .restart local v13    # "startDelay":I
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 828
    .restart local v11    # "searchBarAlphaValue":F
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 829
    .restart local v6    # "panelAlpha":F
    :cond_4
    const v7, 0x3f733333    # 0.95f

    goto/16 :goto_4

    .line 885
    .restart local v2    # "accessibilityEnabled":Z
    .restart local v7    # "panelScale":F
    .restart local v12    # "searchBarContainerView":Landroid/view/View;
    :cond_5
    invoke-virtual {v12, v11}, Landroid/view/View;->setAlpha(F)V

    .line 886
    if-nez p3, :cond_6

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 887
    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    .line 888
    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    .line 889
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    .line 890
    if-eqz p3, :cond_7

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_5

    .line 886
    :cond_6
    const/16 v14, 0x8

    goto :goto_6

    .line 890
    :cond_7
    const/16 v14, 0x8

    goto :goto_7
.end method

.method public getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/android/launcher3/common/stage/StageEntry;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 637
    invoke-direct {p0, v9}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v0

    .line 638
    .local v0, "duration":I
    if-eqz p3, :cond_1

    const/4 v3, 0x0

    .line 640
    .local v3, "searchBarAlphaValue":F
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v4

    .line 641
    .local v4, "searchBarContainerView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getTidyUpContainerView()Landroid/view/View;

    move-result-object v5

    .line 643
    .local v5, "tidyUpContainerView":Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;

    invoke-direct {v1, p0, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Z)V

    .line 650
    .local v1, "r":Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->cancelStateAnimation()V

    .line 652
    if-eqz p1, :cond_2

    .line 653
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 655
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 658
    .local v2, "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 659
    new-instance v6, Lcom/android/launcher3/allapps/AlphaUpdateListener;

    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    .line 660
    invoke-virtual {v8}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v8

    invoke-direct {v6, v4, v8}, Lcom/android/launcher3/allapps/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 659
    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    new-instance v6, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;

    invoke-direct {v6, p0, p3, v5}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLandroid/view/View;)V

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    invoke-direct {p0, p2, v0, p4, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;)V

    .line 670
    if-nez p3, :cond_0

    .line 671
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 675
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;

    invoke-direct {v7, p0, v4, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$8;-><init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;F)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 693
    .end local v2    # "searchBarAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 638
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v3    # "searchBarAlphaValue":F
    .end local v4    # "searchBarContainerView":Landroid/view/View;
    .end local v5    # "tidyUpContainerView":Landroid/view/View;
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 687
    .restart local v1    # "r":Ljava/lang/Runnable;
    .restart local v3    # "searchBarAlphaValue":F
    .restart local v4    # "searchBarContainerView":Landroid/view/View;
    .restart local v5    # "tidyUpContainerView":Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 688
    if-eqz p3, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 689
    if-eqz p3, :cond_4

    :goto_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6, p4}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 691
    invoke-direct {p0, v9, p3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeCellLayoutBackground(IZ)V

    goto :goto_1

    :cond_3
    move v6, v8

    .line 688
    goto :goto_2

    :cond_4
    move v8, v7

    .line 689
    goto :goto_3
.end method
