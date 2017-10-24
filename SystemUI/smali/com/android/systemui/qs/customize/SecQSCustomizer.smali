.class public Lcom/android/systemui/qs/customize/SecQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/SecQSCustomizer$1;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$2;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$3;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$4;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$5;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    }
.end annotation


# instance fields
.field private ACTIVE_LEFT_INDICATOR:I

.field private ACTIVE_RIGHT_INDICATOR:I

.field private ACTIVE_ROWS:I

.field private final ACTIVE_TO_AVAILABLE:I

.field private AVAILABLE_ROWS:I

.field private final AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_AREA:I

.field private final MSG_HANDLE_ANIMATE_DROP:I

.field private final MSG_HANDLE_ANIMATE_PAGE:I

.field private final MSG_HANDLE_ANIMATE_START:I

.field private isShown:Z

.field private mActiveRows:I

.field private mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field protected mCellHeight:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizing:Z

.field protected mDividerHeight:I

.field private mDoneButton:Landroid/widget/TextView;

.field mDragListener:Landroid/view/View$OnDragListener;

.field private mDragStart:Z

.field private final mExpandAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsDroppedOnView:Z

.field private mLeftIndicator:Landroid/widget/FrameLayout;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private mRightIndicator:Landroid/widget/FrameLayout;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private mToast:Landroid/widget/Toast;

.field private mWhereAmI:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "touchedPos"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateArea(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0
    .param p1, "touchedPos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateCurrentPage(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0
    .param p1, "dirction"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animatePage(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationDrop()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationStart()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 0
    .param p1, "msg"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V
    .locals 0
    .param p1, "customizing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x7d0

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 139
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f10022c

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_ROWS:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_ROWS:I

    .line 115
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    .line 116
    iput v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    .line 120
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    .line 125
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    .line 472
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 485
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 522
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 552
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    .line 605
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_TO_AVAILABLE:I

    .line 606
    iput v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_TO_ACTIVE:I

    .line 609
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_START:I

    .line 610
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_DROP:I

    .line 611
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_PAGE:I

    .line 612
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_AREA:I

    .line 623
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040152

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 137
    return-void
.end method

.method private addActivieTile()V
    .locals 5

    .prologue
    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v3, "tilesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 424
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 426
    .local v0, "customTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    .line 427
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 428
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 429
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    .end local v0    # "customTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v4, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    .line 421
    return-void
.end method

.method private addTile(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 5
    .param p2, "isActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    const/4 v4, 0x0

    .line 436
    if-nez p1, :cond_0

    return-object v4

    .line 437
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v3, "tilesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 440
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 441
    .local v0, "customTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 442
    .local v2, "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    .line 443
    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->appLabel:Ljava/lang/CharSequence;

    .line 444
    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 446
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 447
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "customTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .end local v2    # "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_1
    return-object v3
.end method

.method private animateArea(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "touchedPos"    # I

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 751
    .local v1, "msgObj":Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 752
    iput p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 753
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 755
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    .line 756
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 758
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 748
    return-void
.end method

.method private animateCurrentPage(I)V
    .locals 4
    .param p1, "touchedPos"    # I

    .prologue
    const/16 v3, 0x66

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 737
    .local v1, "msgObj":Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 738
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 739
    const/16 v2, 0xca

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 741
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 745
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    return-void
.end method

.method private animatePage(I)V
    .locals 4
    .param p1, "dirction"    # I

    .prologue
    const/16 v3, 0x66

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 722
    .local v1, "msgObj":Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 723
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 725
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    return-void
.end method

.method private animationDrop()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 703
    .local v1, "msgObj":Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    const/16 v2, 0xc9

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 704
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 707
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    .line 709
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method private animationStart()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 688
    .local v1, "msgObj":Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 689
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 691
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    .line 377
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    .prologue
    const/16 v5, 0x3e8

    .line 665
    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 667
    .local v0, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 668
    .local v1, "type":I
    if-ne v1, v5, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMinimumTileNum()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-gt v2, v3, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->showToast()V

    .line 671
    return-void

    .line 673
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 674
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    .line 681
    :goto_0
    if-ne v1, v5, :cond_2

    const/16 v2, 0x1770

    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    .line 663
    return-void

    .line 677
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 679
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 681
    :cond_2
    const/16 v2, 0x1388

    goto :goto_1
.end method

.method private recalcSpecs()V
    .locals 10

    .prologue
    .line 386
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    if-nez v7, :cond_1

    .line 387
    :cond_0
    return-void

    .line 390
    :cond_1
    const-string/jumbo v7, "SecQSCustomizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mCurrentSpecs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mAllTiles size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 395
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 396
    .local v0, "eachTile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 397
    .local v5, "tileSpec":Ljava/lang/String;
    const-string/jumbo v7, "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc"

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "tilesForCom":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 399
    .local v3, "remove":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 400
    aget-object v7, v6, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 401
    const/4 v3, 0x0

    .line 399
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_3
    if-eqz v3, :cond_4

    .line 405
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 406
    add-int/lit8 v1, v1, -0x1

    .line 394
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "eachTile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "remove":Z
    .end local v5    # "tileSpec":Ljava/lang/String;
    .end local v6    # "tilesForCom":[Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    .line 413
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 414
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v4

    .line 413
    .local v4, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 417
    .end local v4    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addTile(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    .line 385
    return-void
.end method

.method private removeAreaAnimationMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x67

    .line 763
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    :cond_0
    return-void
.end method

.method private save()V
    .locals 6

    .prologue
    .line 262
    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentSpecs =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string/jumbo v3, "SecQSCustomizer"

    const-string/jumbo v4, "save none : empty list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getHiddenTileSpec()Ljava/util/ArrayList;

    move-result-object v0

    .line 270
    .local v0, "hiddenTileSpecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const-string/jumbo v3, "SecQSCustomizer"

    const-string/jumbo v4, "save none : same list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 261
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1
    .param p1, "customizing"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->notifyCustomizeChanged()V

    .line 358
    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    .prologue
    .line 369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    .line 370
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile;

    .line 371
    .local v0, "tile":Lcom/android/systemui/qs/QSTile;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v0    # "tile":Lcom/android/systemui/qs/QSTile;
    :cond_0
    return-void
.end method

.method private setUpIndicator()V
    .locals 7

    .prologue
    .line 229
    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDividerHeight:I

    iget v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    mul-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 230
    .local v1, "height":I
    const v4, 0x7f13039a

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 231
    .local v0, "activieParent":Landroid/widget/LinearLayout;
    const v4, 0x7f13039b

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    .line 232
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 236
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const v4, 0x7f13039d

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    .line 240
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 241
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 242
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    .local v3, "lpRight":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 244
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method private setupPager()V
    .locals 8

    .prologue
    const v7, 0x7f0b009e

    const/high16 v6, 0x3f800000    # 1.0f

    .line 151
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 152
    .local v0, "activeBG":Landroid/graphics/drawable/ColorDrawable;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    const v4, 0x7f13039c

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 158
    const v4, 0x7f1303a0

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 162
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    .line 163
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const v5, 0x7f020351

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setBackgroundResource(I)V

    .line 164
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setElevation(F)V

    .line 167
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    .line 170
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 171
    .local v1, "availableBG":Landroid/graphics/drawable/ColorDrawable;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b013f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    const v4, 0x7f13039e

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 174
    .local v3, "shadow":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {v3, v6}, Landroid/view/View;->setElevation(F)V

    .line 177
    const v4, 0x7f13039f

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "scrollView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const v4, 0x7f1302ed

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    .line 182
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private showToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 650
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0f03d7

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 656
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 657
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 649
    :cond_1
    return-void
.end method

.method private transition(ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 332
    .local v0, "animator":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setVisibility(I)V

    .line 334
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 335
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 336
    new-array v1, v6, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 344
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 345
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 329
    return-void

    .line 339
    :cond_0
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 340
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 341
    new-array v1, v6, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 334
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 335
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 336
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 339
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 340
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 341
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public hide(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-eqz v0, :cond_0

    .line 319
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    .line 320
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->save()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/AnimatorListenerAdapter;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    .line 294
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    .line 255
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    .line 249
    :cond_0
    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    .line 465
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tileinfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 466
    .local v0, "tileinfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    const-string/jumbo v2, "SecQSCustomizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTilesChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v0    # "tileinfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->recalcSpecs()V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0
    .param p1, "notificationsQsContainer"    # Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 285
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 281
    return-void
.end method

.method public setQsContainer(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0
    .param p1, "qsContainer"    # Lcom/android/systemui/qs/QSContainer;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 289
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 302
    const-string/jumbo v0, "SecQSCustomizer"

    const-string/jumbo v1, "show customizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileSpecs()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addActivieTile()V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/AnimatorListenerAdapter;)V

    .line 311
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public updateResources()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 193
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v3, 0x7f0f03a3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    .line 195
    const v2, 0x7f0d0208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMargin:I

    .line 196
    const v2, 0x7f0d0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    .line 197
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDividerHeight:I

    .line 198
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "sysui_qqs_count_expand"

    .line 199
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 198
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    .line 200
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 214
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    .line 215
    .local v0, "isShowButtonBg":Z
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 216
    if-eqz v0, :cond_2

    const v2, 0x7f020563

    .line 215
    :goto_2
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return v6

    .line 202
    .end local v0    # "isShowButtonBg":Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "qs_tile_row"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 204
    :cond_1
    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    goto :goto_1

    .line 217
    .restart local v0    # "isShowButtonBg":Z
    :cond_2
    const v2, 0x7f020561

    goto :goto_2
.end method
