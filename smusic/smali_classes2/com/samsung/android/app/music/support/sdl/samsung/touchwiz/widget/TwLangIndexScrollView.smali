.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
    }
.end annotation


# static fields
.field private static final AMERICANO:Z = false

.field public static final DARK_THEME:I = 0x0

.field public static final DEFAULT_MAX_DEPTH:I = 0x1

.field private static final FAVORITE_CHAR:C = '\u2606'

.field private static final LATTE:Z = false

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final MOCHA:Z = false

.field private static final NO_PREV_LANG:I = 0x0

.field private static final OUT_OF_BOUNDARY:F = -9999.0f

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwLangIndexScrollView"

.field private static final UX_2016B:Z = true

.field private static mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private static previousPos:I


# instance fields
.field private FEW_ELEMENT_LOGIC:I

.field private MANY_ELEMENTS_REPRESENTED_BY_DOT:I

.field private MANY_ELEMENT_LOGIC:I

.field private mAnimEnd:Z

.field private mCalculatedIndexStr:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorPrimaryDark:I

.field private mContext:Landroid/content/Context;

.field private mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmBigTextColor:I

.field private mCstmEffectColor:I

.field private mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleTextColorPressed:I

.field private mCstmSeparatorColor:I

.field private mCstmSmallTextColor:I

.field private mCstmTextColorDimmed:I

.field private mCurrentIndex:Ljava/lang/String;

.field private mEnableCustomTheme:Z

.field private mFirstLanguageGap:I

.field private mHandlePosition:I

.field private mHasOverlayChild:Z

.field private mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

.field mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field private mIndexScrollAdditionalSpace:I

.field private mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

.field private mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

.field private mIndexScrollViewTheme:I

.field private mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mIsFluid:Z

.field private mLangDbEndPositions:[I

.field private mLangDbStartPositions:[I

.field private mLangScrollEndPositions:[I

.field private mLangScrollStartPositions:[I

.field private mNumberOfLanguages:I

.field private mOnIndexScrollEffectListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

.field private mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

.field private mPrevSetLang:I

.field private mRegisteredDataSetObserver:Z

.field private mScrollLogic:I

.field private mSipResizeAnimationState:Z

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

.field private m_bNoSubIndexes:Z

.field private m_bSimpleIndexScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->previousPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 271
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 112
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 114
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 131
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 226
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 228
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 230
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 232
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 235
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 241
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    .line 243
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    .line 251
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 258
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 262
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 763
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 765
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 769
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 775
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 777
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 779
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 781
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 783
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 3929
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 3942
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 272
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 273
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 274
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indexInterval"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 112
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 114
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 131
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 226
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 228
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 230
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 232
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 235
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 241
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    .line 243
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    .line 251
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 258
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 262
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 763
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 765
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 769
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 775
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 777
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 779
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 781
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 783
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 3929
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 3942
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 288
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 289
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 324
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 112
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 114
    iput v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 121
    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 126
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 131
    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 133
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 152
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 226
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 228
    iput v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 230
    const/16 v2, 0x8

    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 232
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 235
    iput-boolean v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 241
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    .line 243
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    .line 251
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 258
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 262
    const v2, -0x39e3c400    # -9999.0f

    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 763
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 765
    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 769
    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 775
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 777
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 779
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 781
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 783
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 3929
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 3942
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 326
    sget-object v2, Lcom/samsung/android/app/music/support/sdl/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 327
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/app/music/support/sdl/R$styleable;->TwIndexView_twIndexViewFluidEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 329
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/sdl/R$styleable;->TwIndexView_twIndexViewHandlePosition:I

    const/4 v3, 0x1

    .line 330
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 337
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 340
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "TwLangIndexScrollView"

    const-string v3, "Occured NumberFormatException. Set handle position as default.(RIGHT_HANDLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 354
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 112
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 114
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 131
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 226
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 228
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 230
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 232
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 235
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 241
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    .line 243
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    .line 251
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 258
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 262
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 763
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 765
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 769
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 775
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 777
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 779
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 781
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 783
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 3929
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 3942
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 355
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 356
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 357
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 112
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 114
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 131
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 226
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    .line 228
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    .line 230
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    .line 232
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    .line 235
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 241
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    .line 243
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    .line 251
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 258
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 262
    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 763
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 765
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 769
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 775
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 777
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 779
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 781
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 783
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 3929
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 3942
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 302
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 303
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    .line 305
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iput-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 307
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 309
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    .line 310
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    .line 311
    invoke-static {p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    .line 313
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;II)V

    .line 314
    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->initLangPositionBounds()V

    return-void
.end method

.method static synthetic access$1700()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Typeface;

    .prologue
    .line 68
    sput-object p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimaryDark:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mColorPrimary:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmEffectColor:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBigTextColor:I

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSmallTextColor:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private addMissingSubIndexes(III)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "numberOfMissingElements"    # I

    .prologue
    .line 1508
    const/4 v1, 0x0

    .line 1509
    .local v1, "index":I
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v2

    .line 1510
    .local v2, "indexPlusSpaceWidth":I
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1511
    .local v0, "depth":I
    mul-int v3, v2, v0

    .line 1512
    .local v3, "missingX":I
    const/4 v4, 0x0

    .line 1513
    .local v4, "noSubIndexes":Z
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    .line 1514
    .local v5, "pos":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v8

    .line 1516
    .local v8, "width":I
    :goto_0
    if-ge v1, p3, :cond_3

    if-nez v4, :cond_3

    .line 1517
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1519
    .local v7, "subIndex":[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v9, v7

    if-eqz v9, :cond_2

    .line 1520
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 1521
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v5, :cond_1

    move v9, v3

    :goto_1
    invoke-virtual {v10, v9, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1525
    add-int/2addr v3, v2

    .line 1526
    add-int/lit8 v1, v1, 0x1

    .line 1528
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v6

    .line 1529
    .local v6, "position":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 1530
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    .line 1532
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    goto :goto_0

    .line 1521
    .end local v6    # "position":I
    :cond_1
    sub-int v9, v8, v3

    goto :goto_1

    .line 1534
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1537
    .end local v7    # "subIndex":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private calcEndPosition(II)I
    .locals 5
    .param p1, "langStartPosition"    # I
    .param p2, "maxStartPosition"    # I

    .prologue
    .line 525
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 526
    .local v2, "endPosition":I
    if-ne p1, p2, :cond_0

    move v3, v2

    .line 536
    .end local v2    # "endPosition":I
    .local v3, "endPosition":I
    :goto_0
    return v3

    .line 529
    .end local v3    # "endPosition":I
    .restart local v2    # "endPosition":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "curLang":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v4, :cond_2

    .line 530
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v4, v4, v1

    add-int/lit8 v0, v4, -0x1

    .line 531
    .local v0, "candidateEndPosition":I
    if-ge v0, v2, :cond_1

    if-lt v0, p1, :cond_1

    .line 533
    move v2, v0

    .line 529
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "candidateEndPosition":I
    :cond_2
    move v3, v2

    .line 536
    .end local v2    # "endPosition":I
    .restart local v3    # "endPosition":I
    goto :goto_0
.end method

.method private getDbPositionLanguage(I)I
    .locals 2
    .param p1, "dbPosition"    # I

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    if-nez v1, :cond_2

    .line 1041
    :cond_0
    const/4 v0, -0x1

    .line 1059
    :cond_1
    :goto_0
    return v0

    .line 1044
    :cond_2
    const/4 v0, 0x0

    .line 1047
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_3

    .line 1048
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    .line 1055
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_1

    .line 1056
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    goto :goto_0

    .line 1047
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    .prologue
    .line 1388
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1389
    .local v0, "currentLang":I
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    .line 1390
    .local v2, "indexerAlphabetSize":I
    const/4 v1, 0x0

    .line 1392
    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    :cond_0
    if-ge v1, v2, :cond_1

    .line 1399
    .end local v1    # "index":I
    :goto_1
    return v1

    .restart local v1    # "index":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1413
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-nez v4, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return v3

    .line 1417
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    .line 1418
    .local v0, "currentLang":I
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    .line 1419
    .local v2, "indexerAlphabetSize":I
    add-int/lit8 v1, v2, -0x1

    .line 1421
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1422
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1425
    :cond_2
    if-lez v1, :cond_0

    .line 1426
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 13
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 952
    const/4 v3, -0x1

    .line 953
    .local v3, "dbPosition":I
    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-nez v10, :cond_1

    :cond_0
    move v4, v3

    .line 1026
    .end local v3    # "dbPosition":I
    .local v4, "dbPosition":I
    :goto_0
    return v4

    .line 961
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v1

    .line 964
    .local v1, "currentLanguage":I
    const/4 v0, 0x0

    .line 966
    .local v0, "bLangChanged":Z
    move-object v9, p1

    .line 967
    .local v9, "searchChar":Ljava/lang/String;
    const/4 v7, 0x0

    .line 968
    .local v7, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 971
    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 972
    .local v8, "prevIndexPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 973
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v8, v12}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 1008
    .end local v8    # "prevIndexPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_b

    :cond_3
    move v4, v3

    .line 1009
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 974
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 977
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v11, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v5

    .line 978
    .local v5, "desiredLanguage":I
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    .line 979
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_6

    :cond_5
    move v4, v3

    .line 980
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 983
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 985
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v10, v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 986
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v3, v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 983
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 990
    :cond_8
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getDbPositionLanguage(I)I

    move-result v2

    .line 993
    .local v2, "dbPosLanguage":I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_9

    move v4, v3

    .line 994
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto :goto_0

    .line 997
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_9
    if-ne v5, v1, :cond_a

    move v4, v3

    .line 998
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto/16 :goto_0

    .line 1002
    .end local v4    # "dbPosition":I
    .restart local v3    # "dbPosition":I
    :cond_a
    const/4 v0, 0x1

    .line 1003
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 1004
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    .line 1012
    .end local v2    # "dbPosLanguage":I
    .end local v5    # "desiredLanguage":I
    .end local v6    # "i":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_d

    .line 1014
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v10, v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1015
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v3, v10, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 1012
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1021
    :cond_d
    if-eqz v0, :cond_e

    .line 1022
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 1023
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v7

    :cond_e
    move v4, v3

    .line 1026
    .end local v3    # "dbPosition":I
    .restart local v4    # "dbPosition":I
    goto/16 :goto_0
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1498
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 1499
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v1

    .line 1500
    .local v1, "numberOfExpectedSmallerOrEqualIndexes":I
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    .line 1502
    .local v0, "depth":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "indexPath"    # Ljava/lang/String;

    .prologue
    .line 931
    const/4 v2, 0x0

    .line 932
    .local v2, "indexInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 934
    :cond_0
    const/4 v0, 0x0

    .line 942
    :cond_1
    return-object v0

    .line 936
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 937
    .local v0, "a":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 938
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v3, :cond_3

    .line 939
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 937
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1164
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1165
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1167
    .local v6, "x":F
    const/4 v4, -0x1

    .line 1168
    .local v4, "position":I
    sparse-switch v0, :sswitch_data_0

    .line 1313
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    move v8, v9

    .line 1314
    :cond_1
    :goto_1
    :sswitch_0
    return v8

    .line 1172
    :sswitch_1
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1173
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 1176
    iget-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_2

    .line 1177
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1182
    :goto_2
    if-eq v4, v13, :cond_0

    .line 1183
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_2

    .line 1190
    :sswitch_2
    float-to-int v10, v6

    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    .line 1193
    .local v2, "numberOfMissingSubIndexes":I
    iget-boolean v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    if-ne v10, v9, :cond_3

    if-ge v2, v9, :cond_4

    :cond_3
    iget-boolean v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    if-nez v10, :cond_5

    :cond_4
    move v8, v9

    .line 1194
    goto :goto_1

    .line 1198
    :cond_5
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1203
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v10, :cond_8

    .line 1206
    if-lez v2, :cond_6

    .line 1207
    float-to-int v8, v6

    float-to-int v10, v7

    invoke-direct {p0, v8, v10, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->addMissingSubIndexes(III)V

    .line 1208
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1211
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1213
    .local v5, "subIndexes":[Ljava/lang/String;
    if-eqz v5, :cond_7

    array-length v8, v5

    if-lez v8, :cond_7

    .line 1214
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 1232
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1233
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1234
    if-eq v4, v13, :cond_0

    .line 1235
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 1222
    :cond_7
    iput-boolean v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    goto/16 :goto_0

    .line 1242
    .end local v5    # "subIndexes":[Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    .line 1243
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 1246
    iput-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 1249
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v8, v10

    .line 1250
    .local v3, "numberOfRemovals":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_9

    .line 1251
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1254
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1255
    iget-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_a

    .line 1256
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1260
    :goto_4
    if-eq v4, v13, :cond_0

    .line 1261
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 1258
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_4

    .line 1271
    .end local v1    # "i":I
    .end local v3    # "numberOfRemovals":I
    :cond_b
    iput-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 1273
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1276
    iget-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1277
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    .line 1278
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    .line 1279
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawEffect(F)V

    .line 1280
    iput v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    .line 1284
    :cond_c
    iget-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_d

    .line 1285
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    .line 1289
    :goto_5
    if-eq v4, v13, :cond_0

    .line 1290
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    .line 1287
    :cond_d
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_5

    .line 1299
    .end local v2    # "numberOfMissingSubIndexes":I
    :sswitch_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    .line 1300
    iput-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bNoSubIndexes:Z

    .line 1301
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 1302
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 1303
    iget-boolean v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v8, :cond_e

    .line 1304
    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    .line 1306
    :cond_e
    const v8, -0x39e3c400    # -9999.0f

    iput v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mTouchY:F

    goto/16 :goto_0

    .line 1168
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handlePosition"    # I
    .param p3, "viewTheme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    if-nez v0, :cond_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 381
    :cond_1
    iput-boolean v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 383
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 403
    :goto_0
    return-void

    .line 388
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    if-nez v0, :cond_3

    .line 395
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    .line 399
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 441
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v7, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v5

    .line 444
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "bSecondLanguageShifted":Z
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    iput v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    .line 454
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 455
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 457
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 458
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 461
    const/4 v4, -0x1

    .line 463
    .local v4, "maxDbStartPosition":I
    const/4 v1, 0x0

    .local v1, "curLang":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_8

    .line 464
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 465
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    .line 466
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    .line 467
    .local v2, "currentDbStartPosition":I
    move v3, v2

    .line 471
    .local v3, "currentScrollStartPosition":I
    if-lez v1, :cond_3

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_3

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v3

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    .line 473
    invoke-virtual {v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_3

    .line 474
    if-ne v1, v6, :cond_2

    .line 475
    const/4 v0, 0x1

    .line 477
    :cond_2
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v3, v5

    .line 479
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aput v2, v5, v1

    .line 480
    if-le v2, v4, :cond_4

    .line 481
    move v4, v2

    .line 483
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aput v3, v5, v1

    .line 486
    if-lez v1, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aget v5, v5, v7

    if-eq v3, v5, :cond_6

    :cond_5
    if-ne v1, v6, :cond_7

    if-eqz v0, :cond_7

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    sub-int v5, v3, v5

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    if-ne v5, v7, :cond_7

    .line 491
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    .line 492
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    .line 463
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    .end local v2    # "currentDbStartPosition":I
    .end local v3    # "currentScrollStartPosition":I
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 497
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    .line 499
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_b

    .line 500
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v5, v5, v1

    if-ne v5, v9, :cond_a

    .line 501
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aput v9, v5, v1

    .line 502
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aput v9, v5, v1

    .line 499
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 504
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    .line 505
    .restart local v2    # "currentDbStartPosition":I
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    aget v7, v7, v1

    .line 506
    invoke-direct {p0, v7, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->calcEndPosition(II)I

    move-result v7

    aput v7, v5, v1

    .line 507
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 509
    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_9

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_9

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v2

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    .line 511
    invoke-virtual {v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_9

    .line 512
    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v7, v5, v1

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v7, v8

    aput v7, v5, v1

    goto :goto_3

    .end local v2    # "currentDbStartPosition":I
    :cond_b
    move v5, v6

    .line 516
    goto/16 :goto_0
.end method

.method private initLangPositionBounds()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 413
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 414
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 415
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 416
    return-void
.end method

.method private isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4696
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 4697
    .local v3, "len":I
    const/4 v2, 0x0

    .line 4698
    .local v2, "i":I
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4699
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 4700
    .local v1, "directionality":B
    :cond_0
    :goto_0
    if-eq v1, v8, :cond_1

    .line 4701
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-ne v1, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    .line 4702
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4704
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    .line 4705
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    .line 4706
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    .line 4709
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    const/16 v6, 0x11

    if-ne v1, v6, :cond_4

    :cond_3
    move v4, v5

    .line 4714
    .end local v0    # "c":I
    .end local v1    # "directionality":B
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    return v4
.end method

.method private notifyIndexChange(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1551
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setLangPosition(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;II)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "position"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v1, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v1, :cond_4

    .line 1333
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1337
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mFirstLanguageGap:I

    .line 1340
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    :cond_4
    const/4 v0, 0x0

    .line 1348
    .local v0, "curLanguage":I
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_5

    .line 1349
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    aget v1, v1, v0

    if-lt p2, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_7

    .line 1356
    :cond_5
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_6

    .line 1357
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 1360
    :cond_6
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    if-eq v0, v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 1362
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 1363
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 1364
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    .line 1365
    invoke-virtual {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v3

    .line 1366
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v4

    .line 1365
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1370
    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    const/4 v2, 0x0

    invoke-direct {p0, p0, v1, v0, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_2
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    .line 1375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto :goto_0

    .line 1348
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1371
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 10
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "currentLang"    # I
    .param p3, "newLang"    # I
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getTop()I

    move-result v5

    int-to-float v4, v5

    .line 1448
    .local v4, "mTop":F
    :try_start_0
    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 1449
    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1451
    .local v3, "mAnimUp":Landroid/animation/ObjectAnimator;
    const-string/jumbo v5, "y"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .line 1452
    invoke-virtual {v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1454
    .local v2, "mAnimDown":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1455
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    if-ge p2, p3, :cond_0

    .line 1456
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1460
    :goto_0
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1461
    new-instance v5, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1490
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1494
    return-void

    .line 1458
    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1491
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v2    # "mAnimDown":Landroid/animation/ObjectAnimator;
    .end local v3    # "mAnimUp":Landroid/animation/ObjectAnimator;
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 544
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    if-nez v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setDimensionns(II)V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    if-eqz v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->setLayout(IIII)V

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->invalidate()V

    .line 577
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectText(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    goto :goto_1

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->invalidate()V

    goto :goto_1
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 1
    .param p1, "isStart"    # Z

    .prologue
    .line 4766
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mSipResizeAnimationState:Z

    .line 4767
    const/4 v0, 0x0

    return v0
.end method

.method public enableCustomTheme(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 793
    return-void
.end method

.method public getFirstHandleWidth()I
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getItemWidth()I

    move-result v0

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 732
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 734
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 740
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 745
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 747
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 713
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 715
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 721
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHasOverlayChild:Z

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 726
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 728
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 4720
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4723
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 4727
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1542
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdditionalTouchAreaEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1574
    if-eqz p1, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_additional_width:I

    .line 1576
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    .line 1580
    :goto_0
    return-void

    .line 1578
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I

    goto :goto_0
.end method

.method public setCustomThemeSet(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)V
    .locals 1
    .param p1, "set"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 802
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 803
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 804
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 805
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$1000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 806
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$1100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I

    .line 807
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I

    .line 808
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->access$1200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z

    .line 810
    return-void
.end method

.method public setHandlePosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 920
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 921
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setPosition(I)V

    .line 922
    return-void
.end method

.method public setIndexScrollMargin(II)V
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollBgMargin(II)V

    .line 1084
    :cond_0
    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 757
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    .line 760
    :cond_0
    return-void
.end method

.method public setIndexer(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;)V
    .locals 5
    .param p1, "indexer"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 595
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 597
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    .line 603
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 607
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 611
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->resetSelectedIndex()V

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    .line 618
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 620
    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollStartPositions:[I

    .line 621
    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangScrollEndPositions:[I

    .line 622
    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbStartPositions:[I

    .line 623
    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mLangDbEndPositions:[I

    .line 624
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->initIndexerLanguagesBounds()Z

    .line 625
    return-void
.end method

.method public setOnIndexScrollEffectListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    .prologue
    .line 4757
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    .line 4758
    return-void
.end method

.method public setOnIndexSelectedListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V
    .locals 0
    .param p1, "iOnIndexSelectedListener"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 1566
    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 5
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;

    if-eqz v2, :cond_1

    .line 644
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    .line 646
    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFluid:Z

    if-nez v2, :cond_2

    .line 647
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexRectangleTextView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    .line 650
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 651
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1, v4, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 656
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 657
    .local v1, "rsrc":Landroid/content/res/Resources;
    sget v2, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 658
    .local v0, "itemWidth":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    .line 659
    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 0
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    .locals 3
    .param p1, "handleChar"    # [Ljava/lang/String;

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 705
    .local v1, "rsrc":Landroid/content/res/Resources;
    sget v2, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width:I

    .line 706
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 707
    .local v0, "HK_SimpleIndexItemWidth":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    .line 708
    return-void
.end method

.method public setSimpleIndexWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    goto :goto_0
.end method

.method public setSubscrollLimit(I)V
    .locals 1
    .param p1, "depthLimit"    # I

    .prologue
    .line 1068
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setMaxDepth(I)V

    .line 1071
    :cond_0
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .locals 0
    .param p1, "mIsFavoriteContactMode"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 91
    return-void
.end method
