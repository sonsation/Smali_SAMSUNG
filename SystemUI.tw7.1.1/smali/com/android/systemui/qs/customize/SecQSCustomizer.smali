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

.field private final DURATION_EDIT:J

.field private final DURATION_PANEL:J

.field private INTERPOLATOR:Landroid/view/animation/Interpolator;

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

.field protected mIsClosing:Z

.field private mIsDroppedOnView:Z

.field private mLeftIndicator:Landroid/widget/FrameLayout;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field mNewCustomTileList:Ljava/lang/String;

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

.field private mResetButton:Landroid/widget/TextView;

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

.method static synthetic -get10(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v0
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

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateArea(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateCurrentPage(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

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

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->reset()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v7, 0x7d0

    const/16 v6, 0x3e8

    const/4 v5, 0x0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f100240

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x16e

    iput-wide v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->DURATION_EDIT:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->DURATION_PANEL:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_ROWS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_ROWS:I

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    iput v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    iput v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_TO_AVAILABLE:I

    iput v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_TO_ACTIVE:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_START:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_DROP:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_PAGE:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_AREA:I

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040189

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    return-void
.end method

.method private addActivieTile()V
    .locals 6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/qs/QSTile$State;->isCustomTile:Z

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v5, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addTile(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 5
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

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->appLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isNewCustomTile(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private animateArea(II)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iput p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private animateCurrentPage(I)V
    .locals 4

    const/16 v3, 0x66

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/16 v2, 0xca

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animatePage(I)V
    .locals 4

    const/16 v3, 0x66

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animationDrop()V
    .locals 7

    const/16 v6, 0x65

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v5, 0xc9

    iput v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const-string/jumbo v6, "custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v6, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    const/16 v6, 0x1388

    if-ne v5, v6, :cond_2

    const-string/jumbo v0, "3005"

    :goto_1
    sget-object v5, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "3004"

    goto :goto_1
.end method

.method private animationStart()V
    .locals 4

    const/16 v3, 0x64

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method private isNewCustomTile(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 6

    const/16 v5, 0x3e8

    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMinimumTileNum()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-gt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->showToast()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    :goto_0
    if-ne v1, v5, :cond_2

    const/16 v2, 0x1770

    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1388

    goto :goto_1
.end method

.method private recalcSpecs()V
    .locals 10

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    if-nez v7, :cond_1

    :cond_0
    return-void

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

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string/jumbo v7, "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter"

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_3

    aget-object v7, v6, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addTile(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private removeAreaAnimationMessage()V
    .locals 2

    const/16 v1, 0x67

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 13

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    iget-object v11, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f02c7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v8, v10, v9

    iget-object v12, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v2, v8

    :goto_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v12, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    return-void

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v9, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v9, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->resetRemovedTileList()V

    return-void
.end method

.method private save()V
    .locals 6

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

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SecQSCustomizer"

    const-string/jumbo v4, "save none : empty list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getHiddenTileSpec()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SecQSCustomizer"

    const-string/jumbo v4, "save none : same list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpIndicator()V
    .locals 7

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

    const v4, 0x7f13048c

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v4, 0x7f13048d

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800003

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    const v4, 0x7f13048f

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800005

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private setupPager()V
    .locals 8

    const v7, 0x7f0b00a3

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f13048e

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    const v4, 0x7f130492

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const v5, 0x7f0203be

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setElevation(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v4, 0x7f130490

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setElevation(F)V

    const v4, 0x7f130491

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f13039a

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f130399

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SEC_CUSTOMIZER_RESET:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showToast()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0f048f

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private transition(ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 12

    const-wide/16 v8, 0x16e

    const-wide/16 v10, 0x64

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    move-wide v4, v6

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move-wide v4, v6

    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    :goto_4
    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    move-wide v6, v10

    :cond_1
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-wide v4, v8

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move-wide v4, v8

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4
.end method


# virtual methods
.method public hide(II)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->save()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/AnimatorListenerAdapter;)V

    const-string/jumbo v0, "202"

    invoke-static {v0}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->resetNewCustomTileList()V

    :cond_0
    return-void
.end method

.method public isCustomClosing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return v0
.end method

.method public isCustomizing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const v1, 0x7f0d0282

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

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

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

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

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->recalcSpecs()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-void
.end method

.method public setQsContainer(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    return-void
.end method

.method public show(II)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SecQSCustomizer"

    const-string/jumbo v1, "show customizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "QsNewCustomTileList"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileSpecs()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addActivieTile()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/AnimatorListenerAdapter;)V

    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    const-string/jumbo v0, "203"

    invoke-static {v0}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateResources()Z
    .locals 11

    const v4, 0x7f0205f7

    const v5, 0x7f0205f5

    const/4 v3, 0x3

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v7, 0x7f0f0451

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d024a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    const v6, 0x7f0d024b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMargin:I

    const v6, 0x7f0d025f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0273

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDividerHeight:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string/jumbo v7, "sysui_qqs_count_expand"

    iget-object v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x2

    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    invoke-virtual {v3, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f13039c

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v3, 0x7f0f048e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return v10

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string/jumbo v7, "qs_tile_row"

    invoke-virtual {v6, v7, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v6, :cond_3

    :goto_4
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    goto :goto_1

    :cond_3
    const v3, 0x7f0c0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3
.end method
