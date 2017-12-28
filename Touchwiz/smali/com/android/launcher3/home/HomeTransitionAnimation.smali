.class Lcom/android/launcher3/home/HomeTransitionAnimation;
.super Ljava/lang/Object;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;
    }
.end annotation


# instance fields
.field private mFolderBgGrowFactor:F

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeRootView:Landroid/view/View;

.field private mIsRunningOverviewAnimation:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOverviewShrinkFactor:F

.field private mScreenGridShrinkFactor:F

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut50:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mStateAnimator:Landroid/animation/AnimatorSet;

.field private final mSwipeInterpolator:Landroid/view/animation/Interpolator;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "homeController"    # Lcom/android/launcher3/home/HomeController;
    .param p3, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    .line 123
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    .line 124
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    .line 125
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 126
    new-instance v1, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation$ScrollInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 147
    iput-object p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 148
    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    .line 153
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method private animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V
    .locals 7
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "animated"    # Z
    .param p3, "accessibilityEnabled"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1064
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v2

    .line 1065
    .local v2, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/OverviewPanel;->setVisibility(I)V

    .line 1067
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v1

    .line 1068
    .local v1, "hotseat":Lcom/android/launcher3/home/Hotseat;
    invoke-virtual {v1, v6}, Lcom/android/launcher3/home/Hotseat;->setAlpha(F)V

    .line 1069
    invoke-static {v1, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 1071
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1072
    new-instance v3, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1073
    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 1074
    .local v0, "exitAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 1075
    new-instance v3, Lcom/android/launcher3/home/AlphaUpdateListener;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v3, v4, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1077
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1078
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1079
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1086
    .end local v0    # "exitAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1082
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1083
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1084
    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3, p3}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V
    .locals 12
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "byTray"    # Z
    .param p3, "enter"    # Z
    .param p4, "duration"    # J
    .param p6, "fromWidget"    # Z

    .prologue
    .line 937
    const/4 v9, 0x0

    .line 939
    .local v9, "movingDistance":F
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v10

    .line 941
    .local v10, "range":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingDistance()F

    move-result v9

    .line 946
    :goto_0
    if-eqz p3, :cond_2

    .line 947
    const/4 v3, 0x0

    .line 958
    .local v3, "toTranslationY":F
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_6

    .line 959
    if-eqz v10, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, p2, p3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSwipeAnimationDuration(ZZF)I

    move-result v0

    int-to-long v4, v0

    .line 966
    .local v4, "animDuration":J
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 967
    .local v8, "homeTranslate":Landroid/animation/Animator;
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 968
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSwipeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    new-instance v0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;

    move-object v1, p0

    move/from16 v2, p6

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation$7;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZFJZ)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 993
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 994
    return-void

    .line 943
    .end local v3    # "toTranslationY":F
    .end local v4    # "animDuration":J
    .end local v8    # "homeTranslate":Landroid/animation/Animator;
    .end local v10    # "range":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v10

    .restart local v10    # "range":I
    goto :goto_0

    .line 949
    :cond_2
    const/4 v7, 0x0

    .line 950
    .local v7, "appSearchOverlayHeight":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 951
    sub-int v0, v10, v7

    int-to-float v3, v0

    .restart local v3    # "toTranslationY":F
    goto :goto_1

    .line 953
    .end local v3    # "toTranslationY":F
    :cond_3
    neg-int v0, v10

    add-int/2addr v0, v7

    int-to-float v3, v0

    .restart local v3    # "toTranslationY":F
    goto :goto_1

    .line 959
    .end local v7    # "appSearchOverlayHeight":I
    :cond_4
    if-eqz p3, :cond_5

    int-to-float v0, v10

    div-float v0, v9, v0

    .line 961
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v10

    div-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 963
    :cond_6
    move-wide/from16 v4, p4

    .restart local v4    # "animDuration":J
    goto :goto_3
.end method

.method private cancelStageAnimation()V
    .locals 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1050
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1052
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 1053
    return-void
.end method

.method private cancelStateAnimation()V
    .locals 4

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1058
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1060
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 1061
    return-void
.end method

.method private changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V
    .locals 11
    .param p1, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p2, "enter"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1142
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1143
    .local v0, "backgroundAlpha":F
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1144
    .local v1, "childCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    .line 1146
    .local v3, "currentPage":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1147
    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1148
    .local v2, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p2, :cond_2

    .line 1149
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1154
    :goto_2
    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0xc9

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1155
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1146
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "backgroundAlpha":F
    .end local v1    # "childCount":I
    .end local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v3    # "currentPage":I
    .end local v4    # "i":I
    :cond_1
    move v0, v5

    .line 1142
    goto :goto_0

    .line 1151
    .restart local v0    # "backgroundAlpha":F
    .restart local v1    # "childCount":I
    .restart local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v3    # "currentPage":I
    .restart local v4    # "i":I
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_2

    .line 1157
    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    .line 1160
    .end local v2    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_4
    return-void
.end method

.method private changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V
    .locals 15
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p3, "animated"    # Z
    .param p4, "enter"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 1090
    if-eqz p4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1091
    .local v2, "backgroundAlpha":F
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    .line 1092
    .local v4, "childCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    .line 1093
    .local v6, "currentPage":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    .line 1095
    .local v7, "defaultPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_a

    .line 1096
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    .line 1097
    .local v10, "screenId":J
    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 1095
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1090
    .end local v2    # "backgroundAlpha":F
    .end local v4    # "childCount":I
    .end local v6    # "currentPage":I
    .end local v7    # "defaultPage":I
    .end local v8    # "i":I
    .end local v10    # "screenId":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1102
    .restart local v2    # "backgroundAlpha":F
    .restart local v4    # "childCount":I
    .restart local v6    # "currentPage":I
    .restart local v7    # "defaultPage":I
    .restart local v8    # "i":I
    .restart local v10    # "screenId":J
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1103
    .local v5, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    .line 1104
    if-eqz p4, :cond_6

    .line 1105
    const/4 v12, 0x4

    if-ne v8, v7, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1106
    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    .line 1107
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1116
    :cond_3
    :goto_4
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    .line 1117
    :cond_4
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    .line 1118
    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 1117
    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1119
    .local v3, "bgAnim":Landroid/animation/ValueAnimator;
    move/from16 v0, p5

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1120
    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$8;

    move/from16 v0, p4

    invoke-direct {v9, p0, v0, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$8;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1128
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1105
    .end local v3    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1110
    :cond_6
    if-eq v8, v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_3

    .line 1111
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1112
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    .line 1131
    :cond_7
    if-eqz p4, :cond_9

    .line 1132
    const/4 v12, 0x4

    if-ne v8, v7, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1136
    :goto_6
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_2

    .line 1132
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 1134
    :cond_9
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_6

    .line 1139
    .end local v5    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v10    # "screenId":J
    :cond_a
    return-void
.end method

.method private changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V
    .locals 15
    .param p1, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p2, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "duration"    # I
    .param p5, "toNormal"    # Z

    .prologue
    .line 1164
    if-eqz p3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1165
    .local v2, "backgroundAlpha":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    .line 1166
    .local v4, "childCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    .line 1167
    .local v6, "currentPage":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v7

    .line 1169
    .local v7, "defaultPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_f

    .line 1170
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    .line 1171
    .local v10, "screenId":J
    const-wide/16 v12, -0x191

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x12d

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const-wide/16 v12, -0x1f5

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 1169
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1164
    .end local v2    # "backgroundAlpha":F
    .end local v4    # "childCount":I
    .end local v6    # "currentPage":I
    .end local v7    # "defaultPage":I
    .end local v8    # "i":I
    .end local v10    # "screenId":J
    :cond_1
    if-eqz p5, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1176
    .restart local v2    # "backgroundAlpha":F
    .restart local v4    # "childCount":I
    .restart local v6    # "currentPage":I
    .restart local v7    # "defaultPage":I
    .restart local v8    # "i":I
    .restart local v10    # "screenId":J
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1177
    .local v5, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz p2, :cond_a

    .line 1178
    if-eqz p3, :cond_7

    .line 1179
    const/4 v12, 0x5

    if-ne v8, v7, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1180
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    .line 1181
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1195
    :cond_4
    :goto_4
    if-eq v8, v6, :cond_5

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_5

    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_0

    .line 1196
    :cond_5
    const-string v9, "backgroundAlpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    .line 1197
    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 1196
    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1198
    .local v3, "bgAnim":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v12, v0

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1199
    new-instance v9, Lcom/android/launcher3/home/HomeTransitionAnimation$9;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {v9, p0, v0, v1, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation$9;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZZLcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1209
    iget-object v9, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1179
    .end local v3    # "bgAnim":Landroid/animation/ValueAnimator;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1184
    :cond_7
    if-eq v8, v6, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    if-eq v8, v9, :cond_4

    .line 1185
    if-eqz p5, :cond_8

    .line 1186
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1191
    :goto_5
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto :goto_4

    .line 1188
    :cond_8
    const/4 v12, 0x4

    if-ne v8, v7, :cond_9

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 1212
    :cond_a
    if-eqz p3, :cond_c

    .line 1213
    const/4 v12, 0x5

    if-ne v8, v7, :cond_b

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1221
    :goto_8
    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_2

    .line 1213
    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    .line 1215
    :cond_c
    if-eqz p5, :cond_d

    .line 1216
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    .line 1218
    :cond_d
    const/4 v12, 0x4

    if-ne v8, v7, :cond_e

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v5, v12, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 1224
    .end local v5    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v10    # "screenId":J
    :cond_f
    return-void
.end method

.method private getStageAnimationDuration(II)I
    .locals 6
    .param p1, "fromStage"    # I
    .param p2, "toStage"    # I

    .prologue
    const v5, 0x7f0b0029

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1010
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1012
    .local v0, "res":Landroid/content/res/Resources;
    if-ne p1, v2, :cond_1

    .line 1013
    if-ne p2, v4, :cond_0

    .line 1014
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1028
    :goto_0
    return v1

    .line 1015
    :cond_0
    if-ne p2, v3, :cond_3

    .line 1016
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1018
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1019
    if-ne p2, v2, :cond_3

    .line 1020
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1022
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1023
    if-ne p2, v2, :cond_3

    .line 1024
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1028
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateAnimationDuration(I)I
    .locals 2
    .param p1, "toState"    # I

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1034
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1035
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1044
    :goto_0
    return v1

    .line 1036
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1037
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1039
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1040
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 1041
    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 1044
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSwipeAnimationDuration(ZZF)I
    .locals 3
    .param p1, "byTray"    # Z
    .param p2, "enter"    # Z
    .param p3, "movingDistance"    # F

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 997
    if-eqz p2, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v0

    .line 999
    .local v0, "duration":I
    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-nez v1, :cond_2

    .line 1006
    .end local v0    # "duration":I
    :cond_0
    :goto_1
    return v0

    .line 998
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v0

    goto :goto_0

    .line 1003
    .restart local v0    # "duration":I
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_3

    .line 1004
    const/4 v0, 0x0

    goto :goto_1

    .line 1006
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p3, v0}, Lcom/android/launcher3/common/tray/TrayManager;->calculateDuration(FI)I

    move-result v0

    goto :goto_1
.end method

.method private setNormalStateView(Z)V
    .locals 10
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 557
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v6

    .line 559
    .local v6, "accessibilityEnabled":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    .line 560
    .local v2, "workspace":Lcom/android/launcher3/home/Workspace;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v8

    .line 561
    .local v8, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v7

    .line 562
    .local v7, "hotseat":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v9

    .line 563
    .local v9, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v5

    .line 565
    .local v5, "duration":I
    invoke-virtual {v8, v1}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 566
    invoke-static {v8, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 567
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 568
    invoke-static {v7, v6}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 569
    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 570
    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 571
    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 573
    if-eqz v9, :cond_0

    .line 574
    invoke-virtual {v9, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 577
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 578
    invoke-virtual {v8, v4}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    .line 583
    return-void
.end method

.method private setupShrinkFactor()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    .line 161
    return-void
.end method


# virtual methods
.method getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 19
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "fromWidget"    # Z
    .param p5, "fromSelectState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 587
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v16

    .line 589
    .local v16, "workspace":Lcom/android/launcher3/home/Workspace;
    if-eqz p4, :cond_3

    .line 590
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v11

    .line 591
    .local v11, "accessibilityEnabled":Z
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v12

    .line 592
    .local v12, "duration":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v13

    .line 593
    .local v13, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v14, 0x0

    .line 594
    .local v14, "pageIndicatorTranslationY":F
    const/16 v18, 0x0

    .line 596
    .local v18, "workspaceTranslationY":F
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 597
    if-eqz p1, :cond_2

    .line 598
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 600
    new-instance v17, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 601
    .local v17, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 602
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    .line 603
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, v12

    .line 604
    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 607
    if-eqz v13, :cond_0

    .line 608
    new-instance v4, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v4, v13}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/4 v5, 0x0

    .line 609
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v15

    .line 610
    .local v15, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    int-to-long v4, v12

    invoke-virtual {v15, v4, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 611
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v15, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 615
    .end local v15    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher3/home/HomeTransitionAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation$4;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V

    .line 632
    .end local v17    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v11}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .end local v11    # "accessibilityEnabled":Z
    .end local v12    # "duration":I
    .end local v13    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .end local v14    # "pageIndicatorTranslationY":F
    .end local v18    # "workspaceTranslationY":F
    :goto_1
    return-object v4

    .line 624
    .restart local v11    # "accessibilityEnabled":Z
    .restart local v12    # "duration":I
    .restart local v13    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .restart local v14    # "pageIndicatorTranslationY":F
    .restart local v18    # "workspaceTranslationY":F
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 625
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 626
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 627
    if-eqz v13, :cond_1

    .line 628
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    .line 635
    .end local v11    # "accessibilityEnabled":Z
    .end local v12    # "duration":I
    .end local v13    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    .end local v14    # "pageIndicatorTranslationY":F
    .end local v18    # "workspaceTranslationY":F
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    .line 636
    if-eqz p5, :cond_5

    if-nez p3, :cond_4

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 9
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
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 168
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v7

    .line 170
    .local v7, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 174
    if-eqz p2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_1

    move v2, v3

    :goto_0
    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    :cond_1
    move v2, v6

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v8

    .line 184
    .local v8, "homePageIndicator":Landroid/view/View;
    if-eqz v8, :cond_3

    .line 185
    invoke-virtual {v8, v2}, Landroid/view/View;->setScaleX(F)V

    .line 186
    invoke-virtual {v8, v2}, Landroid/view/View;->setScaleY(F)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v0, v7}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
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

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 262
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 264
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    .line 265
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 270
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f060006

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 273
    .local v1, "enterAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 274
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v5}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 277
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 278
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 286
    .end local v1    # "enterAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 281
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 282
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 283
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
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
    .line 195
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 197
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 198
    if-eqz p1, :cond_2

    .line 199
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 200
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 202
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 205
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_1

    .line 206
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 207
    const/4 v6, 0x0

    aget v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_0

    .line 208
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 209
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 215
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 216
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 218
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 219
    .local v1, "alphaAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 220
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 223
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 224
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 225
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 229
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 230
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 233
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$1;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 212
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 213
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 254
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 255
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1

    .line 218
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;
    .locals 7
    .param p1, "animated"    # Z
    .param p3, "toNormal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 291
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 293
    .local v0, "accessibilityEnabled":Z
    if-eqz p3, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setNormalStateView(Z)V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 298
    if-eqz p1, :cond_1

    .line 299
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 301
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f060007

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 304
    .local v1, "enterAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 305
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v6}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 308
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 309
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 318
    .end local v1    # "enterAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 312
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 313
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 314
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 315
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 8
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v7

    .line 324
    .local v7, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 325
    if-eqz p1, :cond_2

    .line 326
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 328
    if-eqz p2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_1

    :goto_0
    const-wide/16 v4, -0x1

    move-object v0, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    :cond_1
    move v2, v3

    .line 331
    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a4

    .line 334
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v0, v7}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
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
    .line 343
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v6}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 345
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 346
    if-eqz p1, :cond_1

    .line 347
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 348
    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v2

    .line 350
    .local v2, "duration":I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 353
    .local v3, "iconLoc":[I
    if-eqz p3, :cond_0

    .line 354
    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 359
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 360
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x1

    aget v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 362
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

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

    .line 363
    .local v1, "alphaAnim":Landroid/animation/Animator;
    div-int/lit8 v6, v2, 0x2

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 364
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 367
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 368
    .local v4, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 369
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 372
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mFolderBgGrowFactor:F

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 373
    .local v5, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 374
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 377
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/launcher3/home/HomeTransitionAnimation$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$2;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    .end local v1    # "alphaAnim":Landroid/animation/Animator;
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    .end local v4    # "scaleXAnim":Landroid/animation/Animator;
    .end local v5    # "scaleYAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v6

    .line 356
    .restart local v2    # "duration":I
    .restart local v3    # "iconLoc":[I
    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    .line 357
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    aput v7, v3, v6

    goto/16 :goto_0

    .line 394
    .end local v2    # "duration":I
    .end local v3    # "iconLoc":[I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;
    .locals 6
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
    const/high16 v5, 0x40000000    # 2.0f

    .line 402
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 404
    .local v0, "accessibilityEnabled":Z
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 408
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f06000c

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 411
    .local v1, "exitAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 412
    new-instance v2, Lcom/android/launcher3/home/StageChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/launcher3/home/StageChangeListener;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 415
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 416
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 422
    .end local v1    # "exitAnimator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 31
    .param p1, "animated"    # Z
    .param p3, "stageChanged"    # Z
    .param p4, "enter"    # Z
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
    .line 427
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v13

    .line 429
    .local v13, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 431
    .local v15, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v8

    .line 432
    .local v8, "workspace":Lcom/android/launcher3/home/Workspace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v4

    .line 433
    .local v4, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v6

    .line 434
    .local v6, "hotseat":Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v11

    .line 436
    .local v11, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v24

    .line 437
    .local v24, "duration":I
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    .line 438
    .local v9, "workspaceShrinkFactor":F
    :goto_0
    if-eqz p4, :cond_4

    const v2, 0x7f0a0028

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v10, v2

    .line 440
    .local v10, "workspaceTranslationY":F
    :goto_1
    if-eqz p4, :cond_5

    const/4 v7, 0x0

    .line 441
    .local v7, "hotseatAlphaValue":F
    :goto_2
    if-eqz p4, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    .line 443
    .local v5, "overviewPanelAlphaValue":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v27

    .line 444
    .local v27, "pageIndicatorMarginBottomNormal":I
    const v2, 0x7f0a002b

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 445
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getOffsetIndicator()I

    move-result v3

    sub-int v28, v2, v3

    .line 446
    .local v28, "pageIndicatorMarginBottomOverview":I
    if-eqz p4, :cond_7

    sub-int v2, v27, v28

    int-to-float v12, v2

    .line 448
    .local v12, "pageIndicatorTranslationY":F
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 449
    if-eqz p1, :cond_9

    .line 450
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 452
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v30, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 456
    .local v30, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 457
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 458
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 459
    move/from16 v0, v24

    int-to-long v2, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 462
    if-eqz v11, :cond_0

    .line 463
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v11}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 464
    invoke-virtual {v2, v12}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v29

    .line 465
    .local v29, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move/from16 v0, v24

    int-to-long v2, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 466
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 470
    .end local v29    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_0
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 471
    invoke-virtual {v2, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v25

    .line 472
    .local v25, "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v6, v13}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 475
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 476
    .local v26, "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v4, v13}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    if-eqz p4, :cond_8

    .line 480
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 481
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    :goto_5
    move/from16 v0, v24

    int-to-long v2, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 488
    move/from16 v0, v24

    int-to-long v2, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation$3;

    move-object/from16 v3, p0

    move/from16 v14, p4

    invoke-direct/range {v2 .. v15}, Lcom/android/launcher3/home/HomeTransitionAnimation$3;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;Lcom/android/launcher3/home/OverviewPanel;FLandroid/view/View;FLcom/android/launcher3/home/Workspace;FFLcom/android/launcher3/common/view/PageIndicator;FZZLandroid/content/res/Resources;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    if-eqz p3, :cond_1

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V

    .line 547
    .end local v25    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v26    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v16, p0

    move-object/from16 v18, v8

    move/from16 v19, p1

    move/from16 v20, p4

    move/from16 v21, v24

    invoke-direct/range {v16 .. v21}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V

    .line 549
    if-eqz p3, :cond_2

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v13}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 553
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 437
    .end local v5    # "overviewPanelAlphaValue":F
    .end local v7    # "hotseatAlphaValue":F
    .end local v9    # "workspaceShrinkFactor":F
    .end local v10    # "workspaceTranslationY":F
    .end local v12    # "pageIndicatorTranslationY":F
    .end local v27    # "pageIndicatorMarginBottomNormal":I
    .end local v28    # "pageIndicatorMarginBottomOverview":I
    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 438
    .restart local v9    # "workspaceShrinkFactor":F
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 440
    .restart local v10    # "workspaceTranslationY":F
    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 441
    .restart local v7    # "hotseatAlphaValue":F
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 446
    .restart local v5    # "overviewPanelAlphaValue":F
    .restart local v27    # "pageIndicatorMarginBottomNormal":I
    .restart local v28    # "pageIndicatorMarginBottomOverview":I
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 483
    .restart local v12    # "pageIndicatorTranslationY":F
    .restart local v25    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v26    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v30    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_5

    .line 528
    .end local v25    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v26    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_9
    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 529
    invoke-static {v4, v13}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 530
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 531
    invoke-static {v6, v13}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 532
    invoke-virtual {v8, v9}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 533
    invoke-virtual {v8, v9}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 534
    invoke-virtual {v8, v10}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 535
    if-eqz v11, :cond_a

    .line 536
    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 539
    :cond_a
    if-eqz v13, :cond_1

    if-eqz p4, :cond_1

    .line 540
    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 541
    .local v23, "currentPage":Landroid/view/View;
    const/16 v2, 0x40

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900d1

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 543
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
    .locals 38
    .param p1, "animated"    # Z
    .param p3, "stageChanged"    # Z
    .param p4, "enter"    # Z
    .param p5, "toNormal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;ZZZ)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 745
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v4

    .line 747
    .local v4, "accessibilityEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 749
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v10

    .line 750
    .local v10, "workspace":Lcom/android/launcher3/home/Workspace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v5

    .line 751
    .local v5, "overviewPanel":Lcom/android/launcher3/home/OverviewPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v16

    .line 752
    .local v16, "hotseat":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v29

    .line 753
    .local v29, "screengridPanel":Lcom/android/launcher3/home/ScreenGridPanel;
    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v22

    .line 754
    .local v22, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v8

    .line 756
    .local v8, "screenGridTopContainer":Landroid/view/View;
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v13

    .line 757
    .local v13, "duration":I
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mScreenGridShrinkFactor:F

    move/from16 v34, v0

    .line 759
    .local v34, "workspaceShrinkFactor":F
    :goto_0
    const v2, 0x7f0a0028

    .line 760
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v35, v0

    .line 761
    .local v35, "workspaceTranslationOverviewY":F
    const v2, 0x7f0a0029

    .line 762
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v36, v0

    .line 763
    .local v36, "workspaceTranslationScreengridY":F
    if-eqz p5, :cond_6

    const/16 v37, 0x0

    .line 766
    .local v37, "workspaceTranslationY":F
    :goto_1
    if-eqz p5, :cond_8

    const/high16 v18, 0x3f800000    # 1.0f

    .line 767
    .local v18, "hotseatAlphaValue":F
    :goto_2
    if-eqz p4, :cond_9

    const/16 v20, 0x0

    .line 768
    .local v20, "overviewPanelAlphaValue":F
    :goto_3
    if-eqz p4, :cond_b

    const/high16 v28, 0x3f800000    # 1.0f

    .line 769
    .local v28, "screengridAlphaValue":F
    :goto_4
    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v15

    .line 770
    .local v15, "currentPage":I
    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v21

    .line 771
    .local v21, "pageCount":I
    invoke-virtual {v10, v15}, Lcom/android/launcher3/home/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    sub-int v2, v21, v15

    :goto_5
    mul-int v33, v3, v2

    .line 774
    .local v33, "workspaceOffsetX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 775
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v23

    .line 776
    .local v23, "pageIndicatorMarginBottomNormal":I
    const v2, 0x7f0a002b

    .line 777
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 778
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getOffsetIndicator()I

    move-result v3

    sub-int v24, v2, v3

    .line 779
    .local v24, "pageIndicatorMarginBottomOverview":I
    const v2, 0x7f0a002c

    .line 780
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 781
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getOffsetIndicatorForScreenGrid()I

    move-result v3

    sub-int v25, v2, v3

    .line 782
    .local v25, "pageIndicatorMarginBottomScreenGrid":I
    if-eqz p5, :cond_d

    const/16 v26, 0x0

    .line 786
    .end local v25    # "pageIndicatorMarginBottomScreenGrid":I
    .local v26, "pageIndicatorTranslationY":F
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 788
    if-eqz p5, :cond_0

    if-eqz v33, :cond_0

    .line 789
    invoke-virtual {v10, v15}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v2

    add-int v2, v2, v33

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Lcom/android/launcher3/home/Workspace;->scrollTo(II)V

    .line 792
    :cond_0
    if-eqz p1, :cond_10

    .line 793
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 795
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v32, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v32

    invoke-direct {v0, v10}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 801
    .local v32, "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 802
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 803
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    .line 805
    int-to-long v2, v13

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 808
    if-eqz v22, :cond_1

    .line 809
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 810
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v27

    .line 811
    .local v27, "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    int-to-long v2, v13

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 812
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 816
    .end local v27    # "pageIndicatorY":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_1
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 817
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v17

    .line 818
    .local v17, "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 821
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v19

    .line 822
    .local v19, "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 825
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 826
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v30

    .line 827
    .local v30, "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 830
    new-instance v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    invoke-direct {v2, v8}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 831
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v31

    .line 832
    .local v31, "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    new-instance v2, Lcom/android/launcher3/home/AlphaUpdateListener;

    invoke-direct {v2, v8, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    if-eqz p4, :cond_f

    .line 836
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 837
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 838
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 839
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 848
    :goto_7
    int-to-long v2, v13

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 849
    int-to-long v2, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 850
    int-to-long v2, v13

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 851
    int-to-long v2, v13

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 857
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation$6;

    move-object/from16 v3, p0

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeTransitionAnimation$6;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;ZLandroid/content/res/Resources;Landroid/view/View;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .end local v17    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v19    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_2
    :goto_8
    move-object/from16 v9, p0

    move/from16 v11, p1

    move/from16 v12, p4

    move/from16 v14, p5

    .line 908
    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/home/Workspace;ZZIZ)V

    .line 910
    if-eqz p3, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateExitAppsOrWidget(Landroid/animation/AnimatorSet;ZZ)V

    .line 914
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 757
    .end local v15    # "currentPage":I
    .end local v18    # "hotseatAlphaValue":F
    .end local v20    # "overviewPanelAlphaValue":F
    .end local v21    # "pageCount":I
    .end local v23    # "pageIndicatorMarginBottomNormal":I
    .end local v24    # "pageIndicatorMarginBottomOverview":I
    .end local v26    # "pageIndicatorTranslationY":F
    .end local v28    # "screengridAlphaValue":F
    .end local v33    # "workspaceOffsetX":I
    .end local v34    # "workspaceShrinkFactor":F
    .end local v35    # "workspaceTranslationOverviewY":F
    .end local v36    # "workspaceTranslationScreengridY":F
    .end local v37    # "workspaceTranslationY":F
    :cond_4
    if-eqz p5, :cond_5

    const/high16 v34, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mOverviewShrinkFactor:F

    move/from16 v34, v0

    goto/16 :goto_0

    .line 763
    .restart local v34    # "workspaceShrinkFactor":F
    .restart local v35    # "workspaceTranslationOverviewY":F
    .restart local v36    # "workspaceTranslationScreengridY":F
    :cond_6
    if-eqz p4, :cond_7

    move/from16 v37, v36

    goto/16 :goto_1

    :cond_7
    move/from16 v37, v35

    goto/16 :goto_1

    .line 766
    .restart local v37    # "workspaceTranslationY":F
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 767
    .restart local v18    # "hotseatAlphaValue":F
    :cond_9
    if-eqz p5, :cond_a

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_a
    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 768
    .restart local v20    # "overviewPanelAlphaValue":F
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_4

    .restart local v15    # "currentPage":I
    .restart local v21    # "pageCount":I
    .restart local v28    # "screengridAlphaValue":F
    :cond_c
    move v2, v15

    .line 771
    goto/16 :goto_5

    .line 782
    .restart local v23    # "pageIndicatorMarginBottomNormal":I
    .restart local v24    # "pageIndicatorMarginBottomOverview":I
    .restart local v25    # "pageIndicatorMarginBottomScreenGrid":I
    .restart local v33    # "workspaceOffsetX":I
    :cond_d
    if-eqz p4, :cond_e

    .end local v25    # "pageIndicatorMarginBottomScreenGrid":I
    :goto_9
    sub-int v2, v23, v25

    int-to-float v0, v2

    move/from16 v26, v0

    goto/16 :goto_6

    .restart local v25    # "pageIndicatorMarginBottomScreenGrid":I
    :cond_e
    move/from16 v25, v24

    goto :goto_9

    .line 842
    .end local v25    # "pageIndicatorMarginBottomScreenGrid":I
    .restart local v17    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v19    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v26    # "pageIndicatorTranslationY":F
    .restart local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .restart local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 843
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 844
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 845
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_7

    .line 879
    .end local v17    # "hotseatAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v19    # "overviewPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v30    # "screengridPanelAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v31    # "topContainerAlpha":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    .end local v32    # "workspaceAnimator":Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
    :cond_10
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    .line 880
    invoke-static {v5, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 881
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ScreenGridPanel;->setAlpha(F)V

    .line 882
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 883
    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 884
    invoke-static {v8, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 885
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 886
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 888
    move/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 889
    move/from16 v0, v34

    invoke-virtual {v10, v0}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 890
    move/from16 v0, v34

    invoke-virtual {v10, v0}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 892
    if-eqz v22, :cond_11

    .line 893
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 896
    :cond_11
    if-eqz v4, :cond_2

    .line 897
    invoke-virtual {v5}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 898
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x40

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 902
    :cond_12
    if-eqz p4, :cond_2

    .line 903
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v3, 0x7f090055

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
    .locals 1
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
    .line 643
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method getSelectAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
    .locals 21
    .param p1, "animated"    # Z
    .param p3, "enter"    # Z
    .param p4, "toDragState"    # Z
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
    .line 648
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v5

    .line 649
    .local v5, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeContainer()Lcom/android/launcher3/home/HomeContainer;

    move-result-object v7

    .line 650
    .local v7, "homeContainer":Lcom/android/launcher3/home/HomeContainer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v6

    .line 651
    .local v6, "homePageIndicator":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 652
    .local v13, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a016f

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 653
    .local v17, "transY":I
    const v2, 0x7f0b003c

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 654
    .local v19, "transYDuration":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelectSlideVI()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v10, v19

    .line 656
    .local v10, "duration":I
    :goto_0
    if-eqz p3, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    .line 657
    .local v8, "alpha":F
    :goto_1
    if-eqz p3, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    .line 659
    .local v14, "scale":F
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStateAnimation()V

    .line 660
    if-eqz p1, :cond_b

    .line 661
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 662
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 665
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v8, v3, v4

    .line 664
    invoke-static {v5, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 666
    .local v9, "alphaAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    invoke-virtual {v9, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 669
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelectSlideVI()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 670
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 671
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/16 v20, 0x0

    if-eqz p3, :cond_4

    move/from16 v0, v17

    neg-int v2, v0

    int-to-float v2, v2

    :goto_3
    aput v2, v4, v20

    const/16 v20, 0x1

    if-eqz p3, :cond_5

    const/4 v2, 0x0

    :goto_4
    aput v2, v4, v20

    .line 670
    invoke-static {v5, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 672
    .local v18, "transYAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 676
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/16 v20, 0x0

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    :goto_5
    aput v2, v4, v20

    const/16 v20, 0x1

    if-eqz p3, :cond_7

    move/from16 v0, v17

    int-to-float v2, v0

    :goto_6
    aput v2, v4, v20

    .line 675
    invoke-static {v6, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 677
    .local v12, "pageIndicatorTransYAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    invoke-virtual {v12, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 681
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/16 v20, 0x0

    if-eqz p3, :cond_8

    const/4 v2, 0x0

    :goto_7
    aput v2, v4, v20

    const/16 v20, 0x1

    if-eqz p3, :cond_9

    move/from16 v0, v17

    int-to-float v2, v0

    :goto_8
    aput v2, v4, v20

    .line 680
    invoke-static {v7, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 682
    .local v11, "homeContainerAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    invoke-virtual {v11, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut50:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v18, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    const/4 v4, 0x3

    aput-object v11, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 701
    .end local v11    # "homeContainerAnim":Landroid/animation/Animator;
    .end local v12    # "pageIndicatorTransYAnim":Landroid/animation/Animator;
    .end local v18    # "transYAnim":Landroid/animation/Animator;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation$5;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation$5;-><init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;Lcom/android/launcher3/home/HomeContainer;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    .end local v9    # "alphaAnim":Landroid/animation/Animator;
    :goto_a
    if-nez p4, :cond_0

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->changeDragBackground(Lcom/android/launcher3/home/Workspace;Z)V

    .line 740
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    .line 654
    .end local v8    # "alpha":F
    .end local v10    # "duration":I
    .end local v14    # "scale":F
    :cond_1
    const/4 v2, 0x6

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStateAnimationDuration(I)I

    move-result v10

    goto/16 :goto_0

    .line 656
    .restart local v10    # "duration":I
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 657
    .restart local v8    # "alpha":F
    :cond_3
    const v14, 0x3f733333    # 0.95f

    goto/16 :goto_2

    .line 671
    .restart local v9    # "alphaAnim":Landroid/animation/Animator;
    .restart local v14    # "scale":F
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_5
    move/from16 v0, v17

    neg-int v2, v0

    int-to-float v2, v2

    goto/16 :goto_4

    .line 676
    .restart local v18    # "transYAnim":Landroid/animation/Animator;
    :cond_6
    move/from16 v0, v17

    int-to-float v2, v0

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 681
    .restart local v12    # "pageIndicatorTransYAnim":Landroid/animation/Animator;
    :cond_8
    move/from16 v0, v17

    int-to-float v2, v0

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    .line 688
    .end local v12    # "pageIndicatorTransYAnim":Landroid/animation/Animator;
    .end local v18    # "transYAnim":Landroid/animation/Animator;
    :cond_a
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 689
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v14, v3, v4

    .line 688
    invoke-static {v5, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 690
    .local v15, "scaleXAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    invoke-virtual {v15, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 693
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 694
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v14, v3, v4

    .line 693
    invoke-static {v5, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 695
    .local v16, "scaleYAnim":Landroid/animation/Animator;
    int-to-long v2, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mSineInOut80:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v16, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_9

    .line 724
    .end local v9    # "alphaAnim":Landroid/animation/Animator;
    .end local v15    # "scaleXAnim":Landroid/animation/Animator;
    .end local v16    # "scaleYAnim":Landroid/animation/Animator;
    :cond_b
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelectSlideVI()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 725
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setTranslationY(F)V

    .line 726
    if-eqz p3, :cond_c

    move/from16 v0, v17

    int-to-float v2, v0

    :goto_b
    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 727
    if-eqz p3, :cond_d

    move/from16 v0, v17

    int-to-float v2, v0

    :goto_c
    invoke-virtual {v7, v2}, Lcom/android/launcher3/home/HomeContainer;->setTranslationY(F)V

    .line 732
    :goto_d
    invoke-virtual {v5, v8}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    .line 733
    if-eqz p3, :cond_f

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto/16 :goto_a

    .line 726
    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 727
    :cond_d
    const/4 v2, 0x0

    goto :goto_c

    .line 729
    :cond_e
    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    .line 730
    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    goto :goto_d

    .line 733
    :cond_f
    const/16 v2, 0x8

    goto :goto_e
.end method

.method getTrayReturnAnimation(ZZ)Landroid/animation/Animator;
    .locals 8
    .param p1, "animated"    # Z
    .param p2, "isHomeStage"    # Z

    .prologue
    const/4 v2, 0x0

    .line 918
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->cancelStageAnimation()V

    .line 919
    if-eqz p1, :cond_0

    .line 920
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 921
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getStageAnimationDuration(II)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 922
    .local v7, "duration":I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    int-to-long v4, v7

    move-object v0, p0

    move v3, p2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZZJZ)V

    .line 927
    .end local v7    # "duration":I
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method isRunningOverviewAnimation()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mIsRunningOverviewAnimation:Z

    return v0
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupShrinkFactor()V

    .line 1228
    return-void
.end method

.method setupView()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f1100b4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation;->mHomeRootView:Landroid/view/View;

    .line 165
    return-void
.end method
