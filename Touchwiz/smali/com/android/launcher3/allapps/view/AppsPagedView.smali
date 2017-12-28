.class public Lcom/android/launcher3/allapps/view/AppsPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "AppsPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;
    }
.end annotation


# static fields
.field static final EXTRA_EMPTY_SCREEN:Ljava/lang/String; = "extra_empty_screen"

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field static final TAG:Ljava/lang/String; = "Launcher.AppsPagedView"


# instance fields
.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/AppsViewCellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mNumAppsPages:I

.field private mOldPageCount:I

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mSaveInstanceStateItemIndex:I

.field private removedScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 91
    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 118
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, "res":Landroid/content/res/Resources;
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFadeInAdjacentScreens:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    .line 130
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMinScale(F)V

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v0

    .line 133
    .local v0, "appsPagePadding":I
    mul-int/lit8 v2, v0, 0x2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    .line 134
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    .line 135
    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    .line 136
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    .line 137
    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040019

    .line 469
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 470
    .local v0, "cell":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setTag(Ljava/lang/Object;)V

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 476
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 478
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addView(Landroid/view/View;)V

    .line 482
    return-object v0
.end method

.method private deletablePage(I)Z
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 367
    .local v2, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    .line 368
    .local v1, "itemCount":I
    move v3, v1

    .line 369
    .local v3, "validItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 370
    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 371
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher3/common/view/Removable;

    if-eqz v5, :cond_0

    .line 372
    check-cast v4, Lcom/android/launcher3/common/view/Removable;

    .end local v4    # "view":Landroid/view/View;
    invoke-interface {v4}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    add-int/lit8 v3, v3, -0x1

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    if-gtz v3, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 9
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 271
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 273
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 275
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$2;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$2;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 289
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 290
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 292
    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$3;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView$3;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 304
    return-void
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    .local v0, "clcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1111
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1113
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-object v0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    .prologue
    .line 167
    const/4 v2, -0x1

    .line 168
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v1

    .line 170
    .local v1, "currentPage":I
    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    if-ge v1, v5, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 172
    .local v3, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v6

    mul-int v4, v5, v6

    .line 173
    .local v4, "numItemsPerPage":I
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildCount()I

    move-result v0

    .line 174
    .local v0, "Count":I
    if-lez v0, :cond_0

    .line 175
    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    .line 179
    .end local v0    # "Count":I
    .end local v1    # "currentPage":I
    .end local v3    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v4    # "numItemsPerPage":I
    :cond_0
    return v2
.end method

.method private setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "position"    # I
    .param p3, "screen"    # J

    .prologue
    .line 1076
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_0
    iput-wide p3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1080
    iput p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1081
    return-void
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V
    .locals 4
    .param p1, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 575
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 576
    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 579
    .local v0, "accessible":I
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 580
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 581
    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 583
    return-void

    .line 576
    .end local v0    # "accessible":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 189
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 201
    :cond_0
    return-void

    .line 193
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 195
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 197
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 198
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 193
    .end local v0    # "alpha":F
    .end local v3    # "scrollProgress":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updatePageAlphaValues(III)V
    .locals 1
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateDragPageAlphaValues(III)V

    .line 186
    :cond_0
    return-void
.end method

.method private updatePageCounts()V
    .locals 4

    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v0, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 428
    .local v0, "appsGrid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    mul-int v1, v2, v3

    .line 429
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    .line 430
    return-void
.end method


# virtual methods
.method public addExtraEmptyScreenOnDrag()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string v0, "extra_empty_screen"

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    goto :goto_0
.end method

.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x1

    .line 986
    const-string v0, "Launcher.AppsPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem = title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rank : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    .line 990
    .local v9, "maxItems":I
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v10, v0, v9

    .line 992
    .local v10, "pagePos":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v10, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 993
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    div-int v0, v10, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 995
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 997
    .local v7, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 998
    :cond_0
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-direct {v4, v0, v1, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1005
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_0
    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, p1

    .line 1007
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v8

    .local v8, "i":I
    :goto_1
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    if-gt v8, v0, :cond_3

    .line 1011
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1010
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v8    # "i":I
    :cond_2
    move-object v4, v7

    .line 1000
    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1001
    .restart local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1002
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    .line 1015
    .restart local v8    # "i":I
    :cond_3
    :try_start_0
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_2
    return-void

    .line 1016
    :catch_0
    move-exception v6

    .line 1017
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Launcher.AppsPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in Adding item : mAppsPagedView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item.screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1023
    if-eqz p1, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1025
    .local v0, "lastPage":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findFirstEmptyCell(I)I

    move-result v2

    .line 1026
    .local v2, "rank":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1028
    const/4 v2, 0x0

    .line 1029
    add-int/lit8 v0, v0, 0x1

    .line 1031
    :cond_0
    const-wide/16 v4, -0x66

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1032
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1033
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1034
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0, v3, p1, v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 1035
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1037
    .end local v0    # "lastPage":I
    .end local v1    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "rank":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "rank"    # I
    .param p4, "screen"    # I

    .prologue
    const/4 v5, 0x1

    .line 1045
    move v8, p3

    .line 1046
    .local v8, "pagePos":I
    move v7, p4

    .line 1047
    .local v7, "pageNo":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    .line 1049
    .local v6, "countX":I
    iput v8, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1050
    int-to-long v0, v7

    iput-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1051
    rem-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1052
    div-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1053
    iput-boolean v5, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1056
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    rem-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1057
    div-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 1058
    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 1059
    return-void
.end method

.method protected canOverScroll()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearRemovedScreen()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 845
    return-void
.end method

.method public commitExtraEmptyScreen()I
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    .line 326
    .local v0, "screenId":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeMarkerForView(I)V

    .line 337
    :cond_1
    :goto_0
    return v0

    .line 333
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_0
.end method

.method public createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    move-result-object v0

    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 821
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 822
    .local v0, "scrollable":Z
    if-eqz v0, :cond_0

    .line 823
    new-instance v1, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/DvfsUtil;->boostCpuForSupportedModel(I)V

    .line 825
    :cond_0
    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    .end local p2    # "touchSlopScale":F
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mUpdateOnlyCurrentPage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 1175
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    const-string v0, "Launcher.AppsPagedView"

    const-string v1, "drawChild, mUpdateOnlyCurrentPage && !mIsPageMoving && !currentPage => draw skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public findAllOccupiedCells(I)[Z
    .locals 9
    .param p1, "screenIndex"    # I

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v7

    new-array v4, v7, [Z

    .line 1093
    .local v4, "ops":[Z
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 1094
    .local v2, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v2, :cond_1

    .line 1095
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v3

    .line 1096
    .local v3, "occupied":[[Z
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    .line 1097
    .local v0, "cellCountX":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v1

    .line 1099
    .local v1, "cellCountY":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 1100
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 1101
    mul-int v7, v6, v0

    add-int/2addr v7, v5

    aget-object v8, v3, v5

    aget-boolean v8, v8, v6

    aput-boolean v8, v4, v7

    .line 1100
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1099
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1105
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    .end local v3    # "occupied":[[Z
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    return-object v4
.end method

.method public findFirstEmptyCell(I)I
    .locals 3
    .param p1, "screenIndex"    # I

    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findAllOccupiedCells(I)[Z

    move-result-object v1

    .line 1085
    .local v1, "ops":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1086
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    .line 1088
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1085
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1088
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    return v0
.end method

.method public getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 513
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 606
    if-nez p1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-object v2

    .line 610
    :cond_1
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 611
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 612
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 613
    .local v0, "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getComingPageForLiveIcon()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    return v0
.end method

.method public getCustomPageCount()I
    .locals 1

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1160
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraEmptyScreenIndex()I
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemCountPageAt(I)I
    .locals 4
    .param p1, "pageNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 598
    .local v1, "page":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 599
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 600
    .local v0, "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 602
    .end local v0    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_0
    return v2
.end method

.method public getMaxItemsPerScreen()I
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 509
    .local v0, "appsGrid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    mul-int/2addr v1, v2

    return v1
.end method

.method public getPageDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    .line 1154
    .local v1, "lastPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1155
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 395
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 398
    .end local v0    # "count":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRankForNewItem(I)I
    .locals 2
    .param p1, "pageNum"    # I

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    .line 621
    .local v0, "nextRank":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 624
    :cond_0
    return v0
.end method

.method public getRemovedScreen()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 415
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public hasEmptyCellAtPages()Z
    .locals 3

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    .line 1143
    .local v1, "total_page":I
    const/4 v0, 0x0

    .line 1144
    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isFullyOccupied()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1149
    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public hasExtraEmptyScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    move v1, v2

    .line 213
    :goto_0
    return v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 211
    const-string v1, "extra_empty_screen"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 213
    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCenterPagesVertically:Z

    .line 144
    return-void
.end method

.method public isGridState()Z
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingGridToNormal()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSwitchingGridToNormal()Z

    move-result v0

    return v0
.end method

.method public isTidyState()Z
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchActive()Z
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loggingPageCount()V
    .locals 7

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    .line 933
    .local v0, "pageCount":I
    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    if-eq v1, v0, :cond_0

    if-lez v0, :cond_0

    .line 934
    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    .line 935
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 937
    :cond_0
    return-void
.end method

.method public mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12
    .param p1, "recurse"    # Z
    .param p2, "op"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 1118
    .local v2, "clcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 1119
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 1120
    .local v7, "itemCount":I
    const/4 v8, 0x0

    .local v8, "itemIdx":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 1121
    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1122
    .local v6, "item":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1123
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1139
    .end local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "item":Landroid/view/View;
    .end local v7    # "itemCount":I
    .end local v8    # "itemIdx":I
    :cond_1
    :goto_1
    return-void

    .line 1126
    .restart local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "item":Landroid/view/View;
    .restart local v7    # "itemCount":I
    .restart local v8    # "itemIdx":I
    :cond_2
    if-eqz p1, :cond_4

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_4

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_4

    move-object v3, v6

    .line 1127
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1128
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 1130
    .local v4, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1131
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1132
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 1120
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v4    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 592
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 593
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 594
    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 875
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 868
    :cond_0
    return-void
.end method

.method public onChangeScreenGrid(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 775
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 776
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 777
    .local v0, "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setGridSize(II)V

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayout(Z)V

    .line 780
    return-void
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 4
    .param p1, "changedOrientation"    # Z

    .prologue
    .line 940
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onConfigurationChangedIfNeeded()V

    .line 941
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 942
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v0

    .line 943
    .local v0, "appsPagePadding":I
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    .line 944
    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    .line 945
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    .line 946
    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

    .line 947
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayoutByConfigurationChanged(ZI)V

    .line 949
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isShowingHintPages()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages(Z)V

    .line 952
    :cond_0
    return-void
.end method

.method protected onDataReady(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageCounts()V

    .line 434
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postBindPages()V

    .line 465
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 438
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 439
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 440
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 441
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMeasuredDimension(II)V

    .line 442
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onDataReady(II)V

    .line 445
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    .line 446
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 812
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 813
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    if-eq v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 817
    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    .line 797
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 798
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 805
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>SCREEN_LOADED_APP_MENU_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->initBounceAnimation()V

    .line 852
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 853
    const/4 v0, 0x1

    .line 855
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected pageBeginMoving()V
    .locals 0

    .prologue
    .line 629
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateClockLiveIcon()V

    .line 631
    return-void
.end method

.method public postBindPages()V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "needDefferToBind":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->deferToBind()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 454
    :goto_0
    if-nez v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->requestDeferredRunnables()Z

    .line 457
    :cond_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public rearrangeAllViews(Z)V
    .locals 22
    .param p1, "animate"    # Z

    .prologue
    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 956
    .local v12, "cur":J
    const/4 v14, 0x0

    .line 959
    .local v14, "delay":I
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 960
    .local v2, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/view/AppsViewCellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 961
    .local v17, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v16

    .line 962
    .local v16, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    .line 963
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 964
    .local v19, "view":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 965
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    .line 966
    .local v18, "to":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 967
    .local v15, "from":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 969
    if-eqz p1, :cond_0

    .line 970
    iget v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v8, v14

    const/16 v10, 0x96

    const/4 v11, 0x0

    check-cast v11, [[Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    goto :goto_1

    .line 972
    :cond_0
    iget v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    check-cast v11, [[Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    goto :goto_1

    .line 975
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 979
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "from":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v18    # "to":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForAllChild()V

    goto :goto_0

    .line 981
    .end local v16    # "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    const-string v3, "Launcher.AppsPagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rearrangeChildren took : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method public removeAllPages()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllViews()V

    .line 492
    return-void
.end method

.method public removeEmptyScreen()Z
    .locals 4

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "hasRemovedPage":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 349
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->deletablePage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    .line 351
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    const/4 v0, 0x1

    .line 348
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 355
    :cond_1
    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 358
    :cond_2
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    .line 362
    :cond_3
    return v0
.end method

.method public removeExtraEmptyScreen()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 232
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 5
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    const/16 v4, 0x190

    const/16 v3, 0x96

    const/4 v2, 0x0

    .line 236
    if-lez p2, :cond_1

    .line 237
    new-instance v1, Lcom/android/launcher3/allapps/view/AppsPagedView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    int-to-long v2, p2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    .line 248
    .local v0, "emptyIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    .line 250
    invoke-direct {p0, v4, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    .line 257
    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    .line 254
    invoke-direct {p0, v2, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_1

    .line 263
    .end local v0    # "emptyIndex":I
    :cond_3
    if-eqz p1, :cond_0

    .line 264
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removePageAt(I)V
    .locals 1
    .param p1, "screenId"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    return-void
.end method

.method public removeScreenToRightSideEndPage(I)V
    .locals 5
    .param p1, "fromIndex"    # I

    .prologue
    .line 381
    const-string v2, "Launcher.AppsPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeScreenToRightSideEndPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 383
    .local v0, "cellLayoutSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    .line 383
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 388
    :cond_1
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 636
    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 637
    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSwithchingInternalState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 640
    :cond_1
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 422
    if-gez p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(III)V
    .locals 0
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageAlphaValues(III)V

    .line 406
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 888
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 890
    :cond_1
    return-void
.end method

.method protected setFirstLayout(Z)V
    .locals 0
    .param p1, "firstLayout"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFirstLayout:Z

    .line 738
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    .line 521
    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 155
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    const v4, 0x7f090164

    .line 903
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 904
    .local v0, "method":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 905
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 906
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 917
    :goto_1
    return-void

    .line 903
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 910
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 911
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090119

    .line 912
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 911
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 915
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 915
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public supportWhiteBg()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public updateAccessibilityFlags(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v1

    .line 565
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 569
    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 568
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    .line 572
    return-void

    .line 569
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public updateBackgroundAndPaddings()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public updateCheckBox(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    .line 742
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 743
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 744
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 745
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 746
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 747
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 748
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_3

    .line 749
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v6

    .line 750
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v7, v6

    .line 751
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 753
    :cond_1
    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 746
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 754
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_2

    .line 755
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_2

    .line 742
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 759
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_5
    return-void
.end method

.method public updateChildrenLayersEnabled(IZ)I
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1164
    if-ltz p1, :cond_1

    move v0, p1

    .line 1165
    .local v0, "currentPage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1166
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_0

    .line 1167
    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    .line 1169
    :cond_0
    return v0

    .line 1164
    .end local v0    # "currentPage":I
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v0

    goto :goto_0
.end method

.method public updateClockLiveIcon()V
    .locals 14

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getComingPageForLiveIcon()I

    move-result v10

    .line 644
    .local v10, "page":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    .line 684
    :cond_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 649
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 651
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 652
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 653
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 654
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 655
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    instance-of v12, v11, Lcom/android/launcher3/common/view/IconView;

    if-eqz v12, :cond_3

    .line 656
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v12, :cond_2

    .line 657
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 658
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 659
    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    .end local v11    # "view":Landroid/view/View;
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v11, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 652
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 662
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v11    # "view":Landroid/view/View;
    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    .line 663
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v12, :cond_2

    .line 664
    const/4 v8, 0x0

    .line 665
    .local v8, "needToRefreshFolderIcon":Z
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 666
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 667
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 668
    .local v5, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 669
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 670
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    .line 671
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 672
    const/4 v8, 0x1

    .line 677
    .end local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_2

    .line 678
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    .line 666
    .restart local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "pos"    # I
    .param p3, "screen"    # J
    .param p5, "startDelay"    # J
    .param p7, "duration"    # I
    .param p8, "occupied"    # [[Z

    .prologue
    .line 1062
    long-to-int v2, p3

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1063
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 1064
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V

    .line 1065
    if-gez p7, :cond_0

    const/16 p7, 0x96

    .line 1066
    :cond_0
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int/2addr v2, v3

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int/2addr v3, v4

    long-to-int v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v4, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    .line 1068
    return-void
.end method

.method public updateLayout(Z)V
    .locals 3
    .param p1, "reapply"    # Z

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 784
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 786
    .local v0, "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setCellDimensions()V

    .line 787
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->updateIconViews(Z)V

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_0
    return-void
.end method

.method public updateLayoutByConfigurationChanged(ZI)V
    .locals 2
    .param p1, "changedOrientation"    # Z
    .param p2, "spacing"    # I

    .prologue
    const/4 v1, 0x1

    .line 762
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayout(Z)V

    .line 763
    iput p2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setFirstLayout(Z)V

    .line 771
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLiveIcon()V
    .locals 14

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v10

    .line 688
    .local v10, "page":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    .line 729
    :cond_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 693
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 695
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 696
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 697
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 698
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 699
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    .line 700
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 701
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 702
    instance-of v12, v11, Lcom/android/launcher3/common/view/IconView;

    if-eqz v12, :cond_2

    move-object v12, v11

    .line 703
    check-cast v12, Lcom/android/launcher3/common/view/IconView;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v12, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 704
    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    .line 696
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 707
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    .line 708
    const/4 v8, 0x0

    .line 709
    .local v8, "needToRefreshFolderIcon":Z
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v12, :cond_2

    .line 710
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 711
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 712
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 713
    .local v5, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 714
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 715
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    .line 716
    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 717
    const/4 v8, 0x1

    .line 722
    .end local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_2

    .line 723
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    .line 711
    .restart local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 1
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 880
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    .line 882
    :cond_0
    return-void
.end method
