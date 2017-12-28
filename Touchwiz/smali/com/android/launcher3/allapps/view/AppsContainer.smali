.class public Lcom/android/launcher3/allapps/view/AppsContainer;
.super Landroid/widget/FrameLayout;
.source "AppsContainer.java"


# instance fields
.field private mClearRect:Landroid/graphics/Rect;

.field private mController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mExternalPageIndicator:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageIndicatorScaleRatio:F

.field mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    .line 54
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mPageIndicatorScaleRatio:F

    .line 56
    return-void
.end method

.method private setScreenDivision()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    const/16 v7, 0xa

    .line 157
    .local v7, "numSections":I
    const/4 v6, 0x1

    .line 158
    .local v6, "direction":I
    const/4 v9, 0x0

    .line 159
    .local v9, "typeOfDivision":I
    const/4 v8, 0x1

    .line 160
    .local v8, "reverseCount":Z
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    if-nez v0, :cond_0

    .line 161
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    .local v4, "appsContainer":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/launcher3/util/event/ScreenDivision;

    const/16 v1, 0xa

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/event/ScreenDivision;-><init>(IIILandroid/graphics/Rect;Z)V

    .line 164
    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScreenDivision;->builder()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    .line 166
    .end local v4    # "appsContainer":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 98
    instance-of v0, p1, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/android/launcher3/allapps/controller/AppsController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 101
    :cond_0
    return-void
.end method

.method public getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->canMoveTray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScreenDivision()V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 72
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->canMoveTray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x0

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 93
    .local v0, "indicatorAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 95
    .end local v0    # "indicatorAlpha":F
    :cond_0
    return-void
.end method

.method public setDrawBoundaryY(FZZ)V
    .locals 8
    .param p1, "offsetY"    # F
    .param p2, "updateImmediately"    # Z
    .param p3, "disallowVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_7

    .line 131
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v0, v4

    .line 132
    .local v0, "boundaryY":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 133
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 134
    if-gtz v0, :cond_6

    .line 141
    .local v2, "visible":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 142
    const/16 v2, 0x8

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/TrayManager;->isMoveAndAnimated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 147
    new-instance v3, Lcom/android/launcher3/allapps/view/VisibilityChange;

    invoke-direct {v3, v2, p0}, Lcom/android/launcher3/allapps/view/VisibilityChange;-><init>(ILcom/android/launcher3/allapps/view/AppsContainer;)V

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/VisibilityChange;->run()V

    .line 150
    :cond_4
    if-eqz p2, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->invalidate()V

    .line 153
    :cond_5
    return-void

    .end local v2    # "visible":I
    :cond_6
    move v2, v3

    .line 134
    goto :goto_0

    .line 136
    .end local v0    # "boundaryY":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 137
    .restart local v0    # "boundaryY":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 138
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v4

    if-lt v0, v4, :cond_8

    .restart local v2    # "visible":I
    :goto_1
    goto :goto_0

    .end local v2    # "visible":I
    :cond_8
    move v2, v3

    goto :goto_1
.end method

.method public setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0
    .param p1, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 105
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    return-void
.end method
