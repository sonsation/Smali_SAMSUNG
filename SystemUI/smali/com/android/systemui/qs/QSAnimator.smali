.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$1;,
        Lcom/android/systemui/qs/QSAnimator$2;
    }
.end annotation


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mLastPosition:F

.field private mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMidRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mQSBarController:Lcom/android/systemui/qs/QSBarController;

.field private final mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 3
    .param p1, "container"    # Lcom/android/systemui/qs/QSContainer;
    .param p2, "quickPanel"    # Lcom/android/systemui/qs/QuickQSPanel;
    .param p3, "panel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 412
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    .line 411
    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 419
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 82
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    .line 86
    .local v0, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .end local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const v2, 0x7f13025f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PageIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 79
    :goto_0
    return-void

    .line 91
    .restart local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :cond_0
    const-string/jumbo v1, "QSAnimator"

    const-string/jumbo v2, "QS Not using page layout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearAnimationState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 385
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 388
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 389
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 393
    .local v1, "N2":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aput v0, p1, v1

    .line 323
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 321
    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 328
    if-eq p2, p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 331
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_2

    .line 332
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 333
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 335
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 327
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v2, :cond_0

    .line 315
    return v1

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 318
    .local v0, "columnCount":I
    iget v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 31

    .prologue
    .line 153
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 154
    .local v6, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v21, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 155
    .local v21, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v22, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 156
    .local v22, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 157
    .local v14, "midRowBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 159
    .local v8, "lastRowBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v25

    if-nez v25, :cond_0

    return-void

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v20

    .line 161
    .local v20, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v4, 0x0

    .line 162
    .local v4, "count":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v12, v0, [I

    .line 163
    .local v12, "loc1":[I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v13, v0, [I

    .line 164
    .local v13, "loc2":[I
    const/4 v10, 0x0

    .line 165
    .local v10, "lastXDiff":I
    const/4 v11, 0x0

    .line 166
    .local v11, "lastYDiff":I
    const/4 v9, 0x0

    .line 168
    .local v9, "lastX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/qs/QSTile;

    .line 177
    .local v16, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v19

    .line 179
    .local v19, "tileView":Lcom/android/systemui/qs/QSTileBaseView;
    if-nez v19, :cond_1

    .line 180
    const-string/jumbo v25, "QSAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "tileView is null "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v25, v19

    .line 184
    check-cast v25, Lcom/android/systemui/qs/QSTileView;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v7

    .local v7, "label":Landroid/widget/TextView;
    move-object/from16 v25, v19

    .line 186
    check-cast v25, Lcom/android/systemui/qs/QSTileView;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSTileView;->getDivider()Landroid/view/View;

    move-result-object v5

    .line 188
    .local v5, "divider":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v18

    .line 189
    .local v18, "tileIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v15

    .line 192
    .local v15, "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    if-nez v15, :cond_2

    .line 193
    const-string/jumbo v25, "QSAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "quickTileView is null "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_2
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setAlpha(F)V

    .line 197
    const/16 v25, 0x0

    aget v9, v12, v25

    .line 198
    invoke-virtual {v15}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 200
    const/16 v25, 0x0

    aget v25, v13, v25

    const/16 v26, 0x0

    aget v26, v12, v26

    sub-int v23, v25, v26

    .line 201
    .local v23, "xDiff":I
    const/16 v25, 0x1

    aget v25, v13, v25

    const/16 v26, 0x1

    aget v26, v12, v26

    sub-int v24, v25, v26

    .line 202
    .local v24, "yDiff":I
    const/16 v25, 0x0

    aget v25, v12, v25

    sub-int v10, v25, v9

    .line 203
    move/from16 v11, v24

    .line 206
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 207
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 212
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSContainer;->getOverlappedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    .line 212
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 219
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 220
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 222
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 223
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v15    # "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    .end local v23    # "xDiff":I
    .end local v24    # "yDiff":I
    :goto_1
    const v25, 0x3e99999a    # 0.3f

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 272
    const v25, 0x3e99999a    # 0.3f

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 230
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v25

    move/from16 v0, v25

    if-gt v0, v4, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v4, v0, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v15

    .line 232
    .restart local v15    # "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    if-nez v15, :cond_4

    .line 233
    const-string/jumbo v25, "QSAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "quickTileView is null "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :cond_4
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setAlpha(F)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 238
    const/16 v25, 0x1

    aget v25, v13, v25

    const/16 v26, 0x1

    aget v26, v12, v26

    sub-int v24, v25, v26

    .line 239
    .restart local v24    # "yDiff":I
    const-string/jumbo v25, "hong"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mid yDiff = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    aput v27, v26, v28

    const/high16 v27, -0x3fa00000    # -3.5f

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v15, v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 242
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSContainer;->getOverlappedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    .line 242
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 244
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 245
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 246
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 249
    .end local v15    # "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    .end local v24    # "yDiff":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 254
    const/16 v25, 0x0

    aget v26, v12, v25

    add-int v26, v26, v10

    aput v26, v12, v25

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 256
    const/16 v25, 0x0

    aget v25, v13, v25

    const/16 v26, 0x0

    aget v26, v12, v26

    sub-int v23, v25, v26

    .line 257
    .restart local v23    # "xDiff":I
    const/16 v25, 0x1

    aget v25, v13, v25

    const/16 v26, 0x1

    aget v26, v12, v26

    sub-int v24, v25, v26

    .line 259
    .restart local v24    # "yDiff":I
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSContainer;->getOverlappedHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    .line 259
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 262
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 264
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 265
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 269
    .end local v23    # "xDiff":I
    .end local v24    # "yDiff":I
    :cond_6
    const-string/jumbo v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_1

    .line 280
    .end local v5    # "divider":Landroid/view/View;
    .end local v7    # "label":Landroid/widget/TextView;
    .end local v16    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v18    # "tileIcon":Landroid/view/View;
    .end local v19    # "tileView":Lcom/android/systemui/qs/QSTileBaseView;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 285
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 286
    const v26, 0x3ef5c28f    # 0.48f

    .line 285
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 287
    const v26, 0x3e4ccccd    # 0.2f

    .line 285
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v26

    const-string/jumbo v27, "alpha"

    .line 285
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 288
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 285
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 290
    const v25, 0x3f666666    # 0.9f

    .line 289
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 298
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 299
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 300
    invoke-virtual {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mMidRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 302
    :cond_8
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    .line 302
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 303
    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 302
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-object/from16 v26, v0

    .line 302
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 305
    const/high16 v26, 0x3f000000    # 0.5f

    .line 302
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 307
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    .line 307
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 308
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 307
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 309
    const v26, 0x3f666666    # 0.9f

    .line 307
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 152
    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 359
    return-void
.end method

.method public onAnimationStarted()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 374
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 375
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 377
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 149
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 144
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 95
    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    const-string/jumbo v2, "sysui_qs_fancy_anim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 140
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 128
    return-void

    :cond_2
    move v0, v1

    .line 130
    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 136
    :cond_6
    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_fancy_anim"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 116
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_qqs_count"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 115
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 120
    return-void
.end method

.method public setBarController(Lcom/android/systemui/qs/QSBarController;)V
    .locals 0
    .param p1, "qsBarController"    # Lcom/android/systemui/qs/QSBarController;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    .line 427
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 107
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 2
    .param p1, "onKeyguard"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 99
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    .line 341
    return-void

    .line 343
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mMidRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPageIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 338
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0
.end method
