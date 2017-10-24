.class public Landroid/widget/SemExpandableListView;
.super Landroid/widget/ListView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$1;,
        Landroid/widget/SemExpandableListView$2;,
        Landroid/widget/SemExpandableListView$CollapsingRect;,
        Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;,
        Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/SemExpandableListView$ExpandingRect;,
        Landroid/widget/SemExpandableListView$IndicatorImageView;,
        Landroid/widget/SemExpandableListView$OnChildClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/SemExpandableListView$OnGroupExpandListener;,
        Landroid/widget/SemExpandableListView$SavedState;,
        Landroid/widget/SemExpandableListView$ViewInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final ANIMATION_STATE_IDLE:I = 0x1

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final COLLAPSE_ALL_PENDING:I = 0x2

.field private static final DEBUGGABLE_LOW:Z

.field private static final DECORATED_VIEW_TAG:I = 0x7a0a1eff

.field private static final EMPTY_STATE_SET:[I

.field private static final EXPAND_ALL_PENDING:I = 0x1

.field private static final EXPAND_COLLAPSE_ALL_IDLE:I = 0x0

.field private static final EXPAND_COLLAPSE_BASE_DURATION:I = 0x2bc

.field private static EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final EXPAND_COLLAPSE_MIN_DURATION:I = 0x96

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field public static final INDICATOR_ANIMATION_TYPE_MORPH:I = 0x2

.field public static final INDICATOR_ANIMATION_TYPE_ROTATE:I = 0x1

.field private static final INDICATOR_DEFAULT_HEIGHT:I = 0x32

.field private static final INDICATOR_DEFAULT_WIDTH:I = 0x32

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_FOOTER_VIEW_BASE:J = -0x100000000L

.field private static final PACKED_POSITION_GROUP_FOOTER_TYPE:I = -0x3

.field private static final PACKED_POSITION_GROUP_HEADER_TYPE:I = -0x2

.field private static final PACKED_POSITION_HEADER_VIEW_BASE:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String;

.field private static mExpandInterpolator:Landroid/view/animation/ElasticCustom;


# instance fields
.field private final COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private final DEBUGGABLE:Z

.field private final EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimationEnabled:Z

.field private mAnimationState:I

.field private mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBlockTouchEvent:Z

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mCollapsedGroupTopEnd:I

.field private mCollapsedGroupTopStart:I

.field private mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

.field private mConnector:Landroid/widget/SemExpandableListConnector;

.field private mExpListDividerHeight:[I

.field private mExpandCollapseAllState:I

.field private mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

.field private mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViewsVisibleArea:Landroid/graphics/RectF;

.field private mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorAnimationType:I

.field private mIndicatorEnd:I

.field private mIndicatorGravity:I

.field private mIndicatorLeft:I

.field private mIndicatorPaddingLeft:I

.field private mIndicatorPaddingRight:I

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

.field private mRotationAngle:I

.field private mTranslationOffset:I

.field private mViewSnapshots:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static synthetic -get10(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    return-object v0
.end method

.method static synthetic -get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    return-object v0
.end method

.method static synthetic -get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/SemExpandableListView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    return-object v0
.end method

.method static synthetic -get19()Landroid/view/animation/ElasticCustom;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-object v0
.end method

.method static synthetic -get2()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get20(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object v0
.end method

.method static synthetic -get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get24(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get25(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get26(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return v0
.end method

.method static synthetic -get27(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    return v0
.end method

.method static synthetic -get28(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    return v0
.end method

.method static synthetic -get29(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return v0
.end method

.method static synthetic -get31(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    return v0
.end method

.method static synthetic -get32(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic -get33(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic -get34(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get35(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get36(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return v0
.end method

.method static synthetic -get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic -get4()[I
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return v0
.end method

.method static synthetic -get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetExpandAnimationState()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isExpanding"    # Z
    .param p3, "duration"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/widget/SemExpandableListView;I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/SemExpandableListView;I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/SemExpandableListView;I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/widget/SemExpandableListView;)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v2, 0x10100a9

    const v1, 0x10100a8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    .line 250
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    .line 254
    new-array v0, v4, [I

    aput v1, v0, v3

    .line 253
    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 258
    new-array v0, v4, [I

    aput v2, v0, v3

    .line 257
    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 262
    filled-new-array {v1, v2}, [I

    move-result-object v0

    .line 261
    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 266
    sget-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    .line 267
    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    .line 268
    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 269
    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 265
    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    .line 274
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    .line 273
    sput-object v0, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 309
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 311
    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v5, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 364
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    iput-boolean v5, p0, Landroid/widget/SemExpandableListView;->DEBUGGABLE:Z

    .line 279
    iput-boolean v5, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 281
    iput-boolean v6, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 288
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 292
    iput v5, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 293
    iput v5, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 294
    iput v5, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 295
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    .line 300
    iput v5, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 301
    iput v5, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 302
    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 304
    const/16 v1, 0xb4

    iput v1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 318
    iput v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 323
    iput v5, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 337
    iput v6, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 580
    new-instance v1, Landroid/widget/SemExpandableListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$1;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 1881
    new-instance v1, Landroid/widget/SemExpandableListView$2;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$2;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 406
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    .line 405
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 408
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 410
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 413
    const/4 v1, 0x2

    .line 412
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 414
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 416
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 417
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 420
    :cond_0
    const/4 v1, 0x4

    .line 419
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 423
    const/4 v1, 0x5

    .line 422
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 426
    const/4 v1, 0x6

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 428
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    const/4 v1, 0x7

    .line 429
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 433
    const/16 v1, 0x8

    .line 432
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 437
    const/16 v1, 0x9

    .line 436
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 440
    const/16 v1, 0xa

    .line 439
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 444
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_2

    .line 446
    new-array v1, v6, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 448
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x10408e4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x10408e4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 402
    return-void
.end method

.method private captureViewsPriorAnimation()V
    .locals 8

    .prologue
    .line 1926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1927
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 1930
    .local v2, "firstVisiblePos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1931
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1932
    .local v0, "child":Landroid/view/View;
    add-int v7, v3, v2

    invoke-virtual {p0, v7}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 1933
    .local v4, "packedPos":J
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 1930
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1935
    :cond_1
    new-instance v6, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v6, v0}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1936
    .local v6, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v7, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 1937
    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1925
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "packedPos":J
    .end local v6    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_2
    return-void
.end method

.method private collapseAllGroups()V
    .locals 3

    .prologue
    .line 3097
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3098
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3099
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    .line 3098
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3096
    :cond_0
    return-void
.end method

.method private createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .prologue
    const/4 v7, 0x0

    .line 1873
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v5, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v6, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1874
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1875
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1876
    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 1877
    const-string/jumbo v4, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 1876
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1877
    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 1876
    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1878
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "translationOffset"    # I
    .param p2, "viewInfo"    # Landroid/widget/SemExpandableListView$ViewInfo;

    .prologue
    const/4 v7, 0x0

    .line 1864
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v5, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v6, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1865
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1866
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1867
    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 1868
    const-string/jumbo v4, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 1867
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1868
    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 1867
    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1869
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private drawGhostViews(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 778
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_0

    return-void

    .line 779
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 781
    .local v3, "saveCount":I
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 782
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 785
    :cond_1
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "vInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 786
    .local v4, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 789
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_2
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 790
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 791
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 792
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 796
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_3
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 799
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    array-length v2, v6

    .line 800
    .local v2, "len":I
    const/4 v0, 0x0

    .line 801
    .local v0, "firstRectProcessed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 802
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    .line 801
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 804
    :cond_4
    if-eqz v0, :cond_5

    .line 805
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_3

    .line 807
    :cond_5
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 808
    const/4 v0, 0x1

    goto :goto_3

    .line 811
    :cond_6
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 812
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 815
    .end local v0    # "firstRectProcessed":Z
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_7
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 818
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    array-length v2, v6

    .line 819
    .restart local v2    # "len":I
    const/4 v0, 0x0

    .line 820
    .restart local v0    # "firstRectProcessed":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v2, :cond_a

    .line 821
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_8

    .line 820
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 823
    :cond_8
    if-eqz v0, :cond_9

    .line 824
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_6

    .line 826
    :cond_9
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 827
    const/4 v0, 0x1

    goto :goto_6

    .line 830
    :cond_a
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 831
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 834
    .end local v0    # "firstRectProcessed":Z
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_b
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 777
    return-void
.end method

.method private expandAllGroups()V
    .locals 3

    .prologue
    .line 3090
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3091
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3092
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(I)Z

    .line 3091
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3089
    :cond_0
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 1017
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/SemExpandableListPosition;

    .prologue
    .line 2433
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2434
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 2436
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    .line 915
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 916
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 918
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getExpandedState()[Z
    .locals 7

    .prologue
    .line 3069
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v3

    .line 3070
    .local v3, "lastValidPos":I
    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 3071
    .local v4, "lastPosPackedPos":J
    invoke-static {v4, v5}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 3072
    .local v2, "lastGroupId":I
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [Z

    .line 3073
    .local v0, "expandedState":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 3074
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v6, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v0, v1

    .line 3073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3076
    :cond_0
    return-object v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getHeaderFooterPackedPosition(I)J
    .locals 8
    .param p1, "flatListPosition"    # I

    .prologue
    .line 2395
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 2396
    move v2, p1

    .line 2397
    .local v2, "headerViewPosition":I
    int-to-long v4, p1

    const-wide v6, 0x7fffffff00000000L

    or-long/2addr v4, v6

    return-wide v4

    .line 2399
    .end local v2    # "headerViewPosition":I
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v1, v3, v4

    .line 2400
    .local v1, "footerViewsStart":I
    sub-int v0, p1, v1

    .line 2401
    .local v0, "footerViewPosition":I
    int-to-long v4, v0

    const-wide v6, -0x100000000L

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 847
    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v6, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v6, v4, :cond_5

    .line 848
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 850
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 854
    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v6, :cond_1

    .line 855
    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v6, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v7, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    .line 858
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    .line 859
    :goto_1
    if-eqz v1, :cond_4

    .line 858
    :goto_2
    or-int v3, v6, v4

    .line 860
    .local v3, "stateSetIndex":I
    sget-object v4, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 873
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_0
    :goto_3
    return-object v0

    .line 854
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isEmpty":Z
    goto :goto_0

    .line 855
    .end local v1    # "isEmpty":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isEmpty":Z
    goto :goto_0

    :cond_3
    move v6, v5

    .line 858
    goto :goto_1

    :cond_4
    move v4, v5

    .line 859
    goto :goto_2

    .line 863
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 865
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    .line 868
    sget-object v2, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 870
    .local v2, "stateSet":[I
    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3

    .line 869
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_4
.end method

.method private getLastNonFooterPosition()I
    .locals 4

    .prologue
    .line 3080
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 3081
    .local v1, "lastPos":I
    move v2, v1

    .line 3082
    .local v2, "lastValidPos":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 3083
    .local v0, "firstPos":I
    :goto_0
    if-lt v2, v0, :cond_0

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3084
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3086
    :cond_0
    return v2
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, -0x1

    .line 2344
    cmp-long v0, p0, v6

    if-nez v0, :cond_0

    return v2

    .line 2347
    :cond_0
    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    return v2

    .line 2349
    :cond_1
    and-long v0, p0, v6

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 2370
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 2371
    const/16 v2, 0x20

    .line 2370
    shl-long/2addr v0, v2

    .line 2369
    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    .line 2372
    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    .line 2369
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 2384
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 2385
    const/16 v2, 0x20

    .line 2384
    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 6
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v4, -0x100000000L

    const-wide v2, 0x7fffffff00000000L

    .line 2320
    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 2322
    const/4 v0, -0x3

    return v0

    .line 2323
    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2325
    const/4 v0, -0x2

    return v0

    .line 2327
    :cond_1
    and-long v0, p0, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 2298
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2299
    const/4 v0, 0x2

    return v0

    .line 2302
    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2303
    const/4 v0, 0x1

    .line 2302
    :goto_0
    return v0

    .line 2304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectorRectAnim(I)Landroid/animation/Animator;
    .locals 8
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1691
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1692
    .local v1, "newViewBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1693
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1694
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1695
    const-string/jumbo v4, ""

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 1694
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1695
    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 1694
    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1696
    .local v0, "animBounds":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 994
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 995
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHoverable()Z
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 457
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 458
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->hasRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private printArrays([I)Ljava/lang/String;
    .locals 5
    .param p1, "arr"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2973
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2974
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    .line 2975
    .local v0, "item":I
    if-gtz v0, :cond_0

    .line 2974
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2977
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2978
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2980
    .end local v0    # "item":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resetCollapseAnimationState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1677
    iput v1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1678
    iput v1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    .line 1680
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1681
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1682
    iput v1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1683
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1684
    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1685
    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1687
    iput-boolean v1, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1675
    return-void
.end method

.method private resetExpandAnimationState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1271
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1272
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1273
    iput v3, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1274
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    .line 1275
    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1276
    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    .line 1278
    iput-boolean v3, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1281
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1282
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1283
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1270
    :cond_0
    return-void
.end method

.method private resolveChildIndicator()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 546
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2

    .line 547
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_0

    .line 548
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 550
    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 551
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_3

    .line 555
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 557
    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 558
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 520
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_3

    .line 521
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 522
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 524
    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 525
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 535
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 536
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 518
    :cond_2
    return-void

    .line 528
    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_4

    .line 529
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 531
    :cond_4
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 532
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    goto :goto_0
.end method

.method private startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .locals 33
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    .line 1703
    .local v16, "firstVisiblePos":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v28

    .line 1704
    .local v28, "lastValidPos":I
    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    return-void

    .line 1706
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v26

    .line 1707
    .local v26, "lastPosPackedPos":J
    invoke-static/range {v26 .. v27}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 1708
    .local v7, "lastGroupIdBefore":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1710
    .local v8, "lastPositionBottomBefore":I
    add-int/lit8 v4, v7, 0x1

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 1711
    .local v18, "groupOffsets":[I
    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    .line 1712
    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    .line 1713
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 1714
    .local v12, "childCount":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v13

    .line 1715
    .local v13, "firstGroupPosition":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1717
    .local v25, "lastGroupView":Landroid/view/View;
    const/16 v22, 0x1

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 1718
    invoke-static/range {v22 .. v22}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 1719
    .local v20, "groupPackedPos":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v29

    .line 1720
    .local v29, "pos":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1721
    .local v19, "groupView":Landroid/view/View;
    add-int/lit8 v4, v22, -0x1

    aget v4, v18, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v18, v22

    .line 1723
    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1724
    .local v30, "startRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    aput-object v6, v4, v5

    .line 1725
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v32, v22, -0x1

    aget-object v9, v9, v32

    move-object/from16 v0, v30

    invoke-direct {v6, v0, v9}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v6, v4, v5

    .line 1726
    move-object/from16 v25, v19

    .line 1717
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1729
    .end local v19    # "groupView":Landroid/view/View;
    .end local v20    # "groupPackedPos":J
    .end local v29    # "pos":I
    .end local v30    # "startRect":Landroid/graphics/RectF;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1730
    .local v24, "lastChild":Landroid/view/View;
    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1731
    .restart local v30    # "startRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    aput-object v5, v4, v7

    .line 1732
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    new-instance v5, Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v6, v6, v7

    move-object/from16 v0, v30

    invoke-direct {v5, v0, v6}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    .line 1734
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .local v10, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v0, v12, :cond_5

    .line 1737
    add-int v4, v22, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1736
    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1739
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v14

    .line 1740
    .local v14, "expandableListPos":J
    invoke-static {v14, v15}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v23, 0x1

    .line 1741
    .local v23, "isGroup":Z
    :goto_3
    if-nez v23, :cond_2

    .line 1743
    invoke-static {v14, v15}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    .line 1744
    .local v17, "groupId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1746
    .local v31, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1748
    aget v4, v18, v17

    neg-int v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1750
    .local v11, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1740
    .end local v11    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v17    # "groupId":I
    .end local v23    # "isGroup":Z
    .end local v31    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_4
    const/16 v23, 0x0

    goto :goto_3

    .line 1753
    .end local v14    # "expandableListPos":J
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1755
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v32

    new-instance v4, Landroid/widget/SemExpandableListView$9;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Landroid/widget/SemExpandableListView$9;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1699
    return-void
.end method

.method private startCollapseAnimation(ILjava/lang/Runnable;)V
    .locals 22
    .param p1, "groupPosBefore"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1522
    invoke-static/range {p1 .. p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    .line 1523
    .local v14, "collapsedGroupPackedPosition":J
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 1525
    .local v20, "nextCollapsedGroupPackedPosition":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v8

    .line 1526
    .local v8, "collapsedGroupFlatPosBefore":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v18

    .line 1528
    .local v18, "nextCollapsedGroupFlatPos":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v10

    .line 1529
    .local v10, "firstVisiblePosBefore":I
    sub-int v4, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1530
    .local v13, "collapsedGroupBefore":Landroid/view/View;
    if-nez v13, :cond_0

    .line 1532
    sget-object v4, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1533
    const-string/jumbo v6, ", flatPos="

    .line 1532
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1534
    const-string/jumbo v6, ", firstPos="

    .line 1532
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    .line 1536
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 1537
    return-void

    .line 1539
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1541
    .local v12, "collapsedGroupTopBefore":I
    sub-int v4, v18, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1542
    .local v17, "nextCollapsedGroup":Landroid/view/View;
    if-nez v17, :cond_1

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1544
    .local v16, "listBottom":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v4, v16, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    .line 1549
    .end local v16    # "listBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v9

    .line 1550
    .local v9, "groupCountBefore":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1551
    .local v11, "listTotalChildrenCountBefore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1553
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    .line 1554
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v4, Landroid/widget/SemExpandableListView$8;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    invoke-direct/range {v4 .. v12}, Landroid/widget/SemExpandableListView$8;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1521
    return-void

    .line 1546
    .end local v9    # "groupCountBefore":I
    .end local v11    # "listTotalChildrenCountBefore":I
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    goto :goto_0
.end method

.method private startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "expanded"    # [Z
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1288
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$7;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$7;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1287
    return-void
.end method

.method private startExpandAnimation(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "groupPos"    # I
    .param p2, "animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    .line 1142
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$6;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1139
    return-void
.end method

.method private startIndicatorAnimation(Landroid/view/View;ZI)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "isExpanding"    # Z
    .param p3, "duration"    # I

    .prologue
    .line 1842
    if-eqz p2, :cond_1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 1843
    .local v2, "startAngle":I
    :goto_0
    const v3, 0x7a0a1eff

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    .line 1844
    .local v0, "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-nez v3, :cond_2

    .line 1845
    :cond_0
    sget-object v3, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startIndicatorAnimation() holder or indicatorImgView is null, startAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return-void

    .line 1842
    .end local v0    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .end local v2    # "startAngle":I
    :cond_1
    iget v3, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    neg-int v2, v3

    .restart local v2    # "startAngle":I
    goto :goto_0

    .line 1848
    .restart local v0    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    :cond_2
    iget-object v1, v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 1850
    .local v1, "img":Landroid/widget/SemExpandableListView$IndicatorImageView;
    iget v3, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1851
    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 1852
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1853
    sget-object v4, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1852
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1854
    int-to-long v4, p3

    .line 1852
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1860
    :goto_1
    if-eqz p2, :cond_4

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1841
    return-void

    .line 1857
    :cond_3
    invoke-virtual {v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->startIndicatorMorphAimation()V

    goto :goto_1

    .line 1860
    :cond_4
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public collapseAll()V
    .locals 2

    .prologue
    .line 3018
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3020
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3022
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3023
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 3024
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    .line 3026
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->triggerJumpScrollToTop()V

    .line 3017
    return-void
.end method

.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 2013
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 2015
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 2016
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2019
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 2407
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0

    .line 2412
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 2413
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 2414
    .local v7, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 2416
    .local v8, "pos":Landroid/widget/SemExpandableListPosition;
    invoke-direct {p0, v8}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    .line 2417
    invoke-virtual {v8}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2419
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2421
    new-instance v0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 568
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 569
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 573
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 575
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 576
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    .line 567
    :cond_3
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 889
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 893
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 894
    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 895
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 898
    .local v3, "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    iget-object v4, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 901
    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 902
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 903
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 905
    return-void

    .line 907
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 911
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 888
    return-void
.end method

.method public expandAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3001
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3003
    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-eq v0, v1, :cond_1

    return-void

    .line 3005
    :cond_1
    iput v1, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3006
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    .line 3007
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3008
    return-void

    .line 3010
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->triggerJumpScrollToTop()V

    .line 3000
    return-void
.end method

.method public expandCollapseAll(Z)Z
    .locals 1
    .param p1, "isExpand"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3233
    const/4 v0, 0x0

    return v0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 1981
    const/4 v5, 0x2

    .line 1980
    invoke-static {v5, p1, v6, v6}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 1982
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1983
    .local v2, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_0

    .line 1984
    const/4 v5, 0x0

    return v5

    .line 1986
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 1987
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 1989
    .local v3, "retValue":Z
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_1

    .line 1990
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 1993
    :cond_1
    if-eqz p2, :cond_2

    .line 1994
    iget-object v5, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v5, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 1996
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 1997
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/AbsListView;->smoothScrollToPosition(II)V

    .line 2000
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_2
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2002
    return v3
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 945
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandCollapseDuration()I
    .locals 6

    .prologue
    .line 1493
    iget v1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x4085e00000000000L    # 700.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1494
    .local v0, "animationDuration":I
    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    .line 1495
    const/16 v0, 0x96

    .line 1497
    :cond_0
    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 6
    .param p1, "flatListPosition"    # I

    .prologue
    .line 2146
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2148
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v4

    return-wide v4

    .line 2151
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2152
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 2153
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 2154
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2155
    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    const/4 v4, -0x1

    .line 2170
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainPosition(J)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 2172
    .local v0, "elPackedPos":Landroid/widget/SemExpandableListPosition;
    if-nez v0, :cond_0

    return v4

    .line 2174
    :cond_0
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2175
    .local v2, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2176
    if-nez v2, :cond_1

    return v4

    .line 2178
    :cond_1
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 2179
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2180
    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 2207
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    return-wide v4

    .line 2209
    :cond_0
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 2211
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 2213
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    return-wide v4

    .line 2216
    :cond_1
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 2192
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 2195
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUnfoldedChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3160
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1050
    .local v10, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    .line 1053
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1057
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 1059
    iget-object v1, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    .line 1058
    invoke-interface/range {v0 .. v5}, Landroid/widget/SemExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1061
    const/4 v0, 0x1

    return v0

    .line 1065
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 1066
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 1068
    :cond_1
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 1070
    .local v9, "groupPos":I
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    new-instance v8, Landroid/widget/SemExpandableListView$3;

    invoke-direct {v8, p0, v9}, Landroid/widget/SemExpandableListView$3;-><init>(Landroid/widget/SemExpandableListView;I)V

    .line 1079
    .local v8, "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_2

    .line 1080
    invoke-direct {p0, v9, v8}, Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    .line 1084
    :cond_2
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1086
    new-instance v0, Landroid/widget/SemExpandableListView$4;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$4;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1095
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_3

    .line 1096
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1122
    :cond_3
    :goto_0
    const/4 v11, 0x1

    .line 1134
    .end local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v9    # "groupPos":I
    .local v11, "returnValue":Z
    :goto_1
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 1136
    return v11

    .line 1101
    .end local v11    # "returnValue":Z
    .restart local v9    # "groupPos":I
    :cond_4
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1105
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v12, v0, v1

    .line 1106
    .local v12, "shiftedGroupPosition":I
    new-instance v8, Landroid/widget/SemExpandableListView$5;

    invoke-direct {v8, p0, v9, v12}, Landroid/widget/SemExpandableListView$5;-><init>(Landroid/widget/SemExpandableListView;II)V

    .line 1115
    .restart local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_5

    .line 1116
    invoke-direct {p0, v9, v8}, Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 1118
    :cond_5
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1125
    .end local v8    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_6
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_7

    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1127
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 1128
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    .line 1127
    invoke-interface/range {v1 .. v7}, Landroid/widget/SemExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0

    .line 1131
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_1
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 2285
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1511
    const/4 v0, 0x0

    .line 1512
    .local v0, "before":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1513
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "before":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1515
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1516
    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1517
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1504
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 3178
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 3179
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semRegisterDataSetObserver()V

    .line 3177
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 3187
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 3188
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semUnregisterDataSetObserver()V

    .line 3186
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 504
    .local v0, "action":I
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isHoverable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 505
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 506
    invoke-virtual {p0, v3}, Landroid/view/View;->setFingerHovered(Z)V

    .line 508
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setHovered(Z)V

    .line 509
    return v3

    .line 511
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2659
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2660
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2658
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2665
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2666
    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2664
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3165
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3166
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onJumpScrollToTopFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3031
    invoke-super {p0}, Landroid/widget/ListView;->onJumpScrollToTopFinished()V

    .line 3032
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3034
    :cond_0
    iget v2, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3035
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3036
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 3037
    .local v1, "expanded":[Z
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    .line 3038
    new-instance v0, Landroid/widget/SemExpandableListView$10;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$10;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3048
    .local v0, "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    .line 3065
    .end local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    .end local v1    # "expanded":[Z
    :cond_1
    :goto_0
    iput v4, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    .line 3030
    return-void

    .line 3049
    :cond_2
    iget v2, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3050
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    .line 3051
    new-instance v0, Landroid/widget/SemExpandableListView$11;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$11;-><init>(Landroid/widget/SemExpandableListView;)V

    .line 3061
    .restart local v0    # "animationEndRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    .line 3062
    .restart local v1    # "expanded":[Z
    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    .line 3063
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2644
    instance-of v1, p1, Landroid/widget/SemExpandableListView$SavedState;

    if-nez v1, :cond_0

    .line 2645
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2646
    return-void

    :cond_0
    move-object v0, p1

    .line 2649
    nop

    nop

    .line 2650
    .local v0, "ss":Landroid/widget/SemExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2652
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2653
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 2643
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 481
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 479
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2634
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2635
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/SemExpandableListView$SavedState;

    .line 2636
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2635
    :cond_0
    invoke-direct {v2, v0, v1}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3171
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1025
    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v2, p1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1028
    .local v1, "unfoldedDecoratedItemView":Landroid/view/View;
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    invoke-super {p0, v1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2

    .line 1034
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 1035
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public scrollTo(Landroid/view/View;IILandroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "groupPos"    # I
    .param p3, "expandingChildCount"    # I
    .param p4, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3226
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    const/4 v0, 0x0

    .line 967
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 969
    if-eqz p1, :cond_0

    .line 971
    new-instance v0, Landroid/widget/SemExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/SemExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    .line 972
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V

    .line 978
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 965
    return-void

    .line 974
    :cond_0
    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 930
    new-instance v0, Ljava/lang/RuntimeException;

    .line 931
    const-string/jumbo v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    .line 930
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3110
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3109
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 884
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 883
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2448
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 2447
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2463
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    .line 2464
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    .line 2465
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2462
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2480
    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    .line 2481
    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    .line 2482
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    .line 2479
    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 0
    .param p1, "collapseAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3219
    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 0
    .param p1, "collapseSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3205
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 2674
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2675
    iput v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2676
    if-eqz p1, :cond_1

    .line 2677
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    .line 2678
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2680
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    aput v1, v0, v3

    .line 2681
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDivider() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2690
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2691
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2692
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    .line 2693
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    .line 2695
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aput p1, v0, v1

    .line 2696
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDividerHeight() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 0
    .param p1, "expandAllSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3212
    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 0
    .param p1, "expandSpeedFactor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3198
    return-void
.end method

.method public setExpandingAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3119
    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    .line 3118
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2494
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 2495
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2496
    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2493
    :cond_0
    return-void
.end method

.method public setGroupIndicatorAnimationType(I)V
    .locals 0
    .param p1, "animationType"    # I

    .prologue
    .line 2507
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    .line 2506
    return-void
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 2993
    iput p1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    .line 2992
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2522
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    .line 2523
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    .line 2524
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2521
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2539
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    .line 2540
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    .line 2541
    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    .line 2538
    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 3
    .param p1, "gravity"    # I

    .prologue
    .line 3140
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    .line 3142
    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndicatorGravity() gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIndicatorGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    return-void
.end method

.method public setIndicatorPaddings(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 3129
    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    .line 3130
    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    .line 3128
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/SemExpandableListView$OnChildClickListener;

    .prologue
    .line 2128
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    .line 2127
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .prologue
    .line 2096
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    .line 2095
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 2042
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    .line 2041
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .prologue
    .line 2066
    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    .line 2065
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 958
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 957
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 2249
    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;

    move-result-object v1

    .line 2251
    .local v1, "elChildPos":Landroid/widget/SemExpandableListPosition;
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2253
    .local v2, "flatChildPos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 2257
    if-nez p3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 2259
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 2261
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2264
    if-nez v2, :cond_1

    .line 2265
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2269
    :cond_1
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 2270
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2272
    invoke-virtual {v1}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2273
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2275
    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 2225
    invoke-static {p1}, Landroid/widget/SemExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;

    move-result-object v1

    .line 2227
    .local v1, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 2228
    .local v2, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_0

    .line 2229
    return-void

    .line 2231
    :cond_0
    invoke-virtual {v1}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 2232
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 2233
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 2234
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 2224
    return-void
.end method
