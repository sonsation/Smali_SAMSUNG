.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDepth:I

.field private mDotHeight:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTextColor:I

.field mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHandleTextColorPressed2ndAct:I

.field private mHeight:I

.field private mIndexBgLineWidth:F

.field private mIndexScrollPreviewRadius:F

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mSECRobotoMediumFont:Landroid/graphics/Typeface;

.field private mScreenHeight:I

.field private mScrollBottomMargin:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorThickness:I

.field private mSeparatorWidth:I

.field private mSmallText:Ljava/lang/String;

.field private mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1887
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1672
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1680
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1690
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1700
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1746
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1758
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1765
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1792
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1794
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1797
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1799
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1807
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1818
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1829
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1850
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1852
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1859
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1888
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1889
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1890
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1891
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1892
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1893
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1894
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1895
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1896
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1897
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1898
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1899
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I
    .param p6, "theme"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1909
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1672
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1680
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1690
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1700
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1746
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1758
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1765
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1792
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1794
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1797
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1799
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1807
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1818
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1829
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1850
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1852
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1859
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1910
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1911
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1912
    iput p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1913
    iput p6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1915
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1916
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1917
    iput v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1918
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1919
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1920
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1921
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1922
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1923
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1924
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I
    .param p4, "position"    # I
    .param p5, "alphabetArray"    # [Ljava/lang/String;
    .param p6, "scrollTop"    # I
    .param p7, "screenHeight"    # I
    .param p8, "height"    # I
    .param p9, "width"    # I
    .param p10, "widthShift"    # I
    .param p11, "maxDepth"    # I
    .param p12, "depth"    # I

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1680
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1690
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1746
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1758
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1765
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1794
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1818
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1829
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1943
    iput p7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1944
    iput p8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1945
    iput p9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1946
    iput p10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1947
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1948
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1950
    iput p11, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1951
    iput p12, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1952
    iput p6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1954
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1955
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1956
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1957
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1961
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    .line 1965
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    .prologue
    .line 1636
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method private adjustSeparatorHeight()V
    .locals 11

    .prologue
    const v10, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    .line 2375
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2378
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2426
    :cond_0
    :goto_0
    return-void

    .line 2383
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2387
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2390
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2391
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2410
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    .line 2411
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2414
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2415
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2416
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    .line 2392
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 2393
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2396
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2399
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v2, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    .line 2401
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2404
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    .line 2417
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2421
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2422
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2423
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 3

    .prologue
    .line 2362
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 2363
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 2364
    .local v0, "numberOfCharacters":I
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 2366
    .end local v0    # "numberOfCharacters":I
    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 3665
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v10, :cond_4

    .line 3666
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v2, v4, v5

    .line 3667
    .local v2, "right":I
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v2, v4

    .line 3673
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3674
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 3678
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    .line 3679
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v4

    .line 3680
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v2, v4

    .line 3681
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)F

    move-result v4

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    .line 3682
    .local v3, "top":I
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)F

    move-result v4

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 3684
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 3688
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 3689
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 3697
    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    .line 3704
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 3705
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v10, :cond_3

    .line 3706
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 3708
    :cond_3
    return-void

    .line 3669
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_4
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v2, v4, v5

    .line 3670
    .restart local v2    # "right":I
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .restart local v1    # "left":I
    goto/16 :goto_0

    .line 3690
    .restart local v0    # "bottom":I
    .restart local v3    # "top":I
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 3691
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 3692
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v0, v3, v4

    goto :goto_1

    .line 3693
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_2

    .line 3694
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 3695
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 3700
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private calcDotPosition(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 21
    .param p1, "language"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
    .param p2, "specialIndexCount"    # I
    .param p3, "startIndexPosition"    # I
    .param p4, "digitIndexCount"    # I

    .prologue
    .line 2496
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    sub-int v5, v18, p2

    .line 2497
    .local v5, "earlyLangCount":I
    const/4 v15, 0x0

    .line 2498
    .local v15, "numberOfMissingElements":I
    const/4 v13, 0x0

    .line 2501
    .local v13, "isFullCountState":Z
    move/from16 v10, p3

    .local v10, "index":I
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 2503
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    sub-int v19, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    aput-object v20, v18, v19

    .line 2502
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2563
    .local v2, "alphabetArrWithDots":[Ljava/lang/String;
    .local v7, "fullDotCount":I
    .local v8, "gapOfDot":I
    .local v11, "indexShift":I
    .local v14, "langCount":I
    .local v16, "remainDotCount":I
    :cond_0
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 2681
    .end local v8    # "gapOfDot":I
    .end local v11    # "indexShift":I
    .end local v16    # "remainDotCount":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 2510
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v7    # "fullDotCount":I
    .end local v14    # "langCount":I
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 2512
    sub-int v14, v5, p4

    .line 2513
    .restart local v14    # "langCount":I
    div-int/lit8 v18, v14, 0x2

    add-int/lit8 v7, v18, -0x1

    .line 2516
    .restart local v7    # "fullDotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_a

    if-nez v13, :cond_a

    .line 2517
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 2519
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2520
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2521
    add-int/lit8 v15, v15, 0x1

    .line 2523
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    div-int v18, v14, v18

    add-int/lit8 v8, v18, 0x1

    .line 2526
    .restart local v8    # "gapOfDot":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_2

    .line 2527
    const/4 v8, 0x2

    .line 2529
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    .line 2531
    .restart local v16    # "remainDotCount":I
    const/4 v11, 0x0

    .line 2533
    .restart local v11    # "indexShift":I
    :cond_3
    if-eqz v16, :cond_0

    .line 2534
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 2535
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    .line 2538
    :cond_4
    move/from16 v10, p3

    .line 2539
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    .line 2540
    sub-int v18, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    aput-object v19, v2, v18

    .line 2539
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2543
    :cond_5
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 2544
    mul-int v18, v8, v9

    mul-int v19, v11, v9

    sub-int v17, v18, v19

    .line 2546
    .local v17, "targetIndex":I
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 2547
    add-int/lit8 v18, p2, -0x1

    add-int v17, v17, v18

    .line 2550
    :cond_6
    if-lez v17, :cond_8

    move/from16 v0, v17

    if-ge v0, v14, :cond_8

    .line 2551
    const-string v18, "."

    aput-object v18, v2, v17

    .line 2552
    add-int/lit8 v16, v16, -0x1

    .line 2543
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2553
    :cond_8
    move/from16 v0, v17

    if-lt v0, v14, :cond_7

    if-lez v16, :cond_7

    .line 2554
    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    move/from16 v0, v18

    if-ge v0, v14, :cond_9

    .line 2555
    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    const-string v19, "."

    aput-object v19, v2, v18

    .line 2556
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 2558
    :cond_9
    const/4 v11, 0x1

    goto :goto_4

    .line 2566
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v8    # "gapOfDot":I
    .end local v9    # "i":I
    .end local v11    # "indexShift":I
    .end local v16    # "remainDotCount":I
    .end local v17    # "targetIndex":I
    :cond_a
    const/4 v13, 0x1

    .line 2568
    const/4 v12, 0x0

    .line 2569
    .local v12, "isDotPosition":Z
    const/4 v4, 0x0

    .line 2572
    .local v4, "dotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    packed-switch v18, :pswitch_data_0

    .line 2612
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 2614
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2615
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2624
    :cond_b
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    if-lez v18, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-ltz v18, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    if-gez v18, :cond_12

    .line 2626
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 2683
    .end local v4    # "dotCount":I
    .end local v7    # "fullDotCount":I
    .end local v12    # "isDotPosition":Z
    .end local v14    # "langCount":I
    :cond_d
    return-void

    .line 2574
    .restart local v4    # "dotCount":I
    .restart local v7    # "fullDotCount":I
    .restart local v12    # "isDotPosition":Z
    .restart local v14    # "langCount":I
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2575
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2576
    add-int/lit8 v15, v15, 0x1

    .line 2577
    goto :goto_5

    .line 2579
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2580
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    .line 2584
    :pswitch_2
    if-eqz p2, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 2585
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2586
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2587
    const/4 v12, 0x1

    .line 2599
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 2600
    goto/16 :goto_5

    .line 2590
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 2591
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2592
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 2596
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2597
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 2602
    :pswitch_3
    if-lez p4, :cond_10

    .line 2603
    add-int/lit8 p4, p4, -0x1

    .line 2604
    goto/16 :goto_5

    .line 2606
    :cond_10
    if-lez p2, :cond_b

    .line 2607
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_5

    .line 2617
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2618
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2619
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 2630
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 2633
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2634
    .local v3, "averageElementsEachDot":I
    const/4 v6, 0x0

    .line 2636
    .local v6, "extraMissingElements":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-lez v18, :cond_13

    .line 2637
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    div-int v3, v15, v18

    .line 2638
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    rem-int v6, v15, v18

    .line 2641
    :cond_13
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v10, v0, :cond_14

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    aput-object v18, v2, v10

    .line 2641
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2646
    :cond_14
    move/from16 v17, p2

    .line 2648
    .restart local v17    # "targetIndex":I
    move/from16 v10, p2

    .line 2649
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v18

    if-ge v10, v0, :cond_18

    .line 2650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    .line 2651
    if-nez v12, :cond_16

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v17, p3

    aget-object v18, v18, v19

    aput-object v18, v2, v10

    .line 2655
    add-int/lit8 v17, v17, 0x1

    .line 2656
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_15

    .line 2657
    const/4 v12, 0x1

    .line 2649
    :cond_15
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2660
    :cond_16
    const-string v18, "."

    aput-object v18, v2, v10

    .line 2661
    add-int/lit8 v4, v4, 0x1

    .line 2663
    add-int v17, v17, v3

    .line 2665
    if-lez v6, :cond_17

    .line 2666
    add-int/lit8 v6, v6, -0x1

    .line 2667
    add-int/lit8 v17, v17, 0x1

    .line 2669
    :cond_17
    const/4 v12, 0x0

    goto :goto_9

    .line 2674
    :cond_18
    if-lez p4, :cond_19

    .line 2675
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v19, v19, v20

    aput-object v19, v2, v18

    .line 2679
    :cond_19
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateShift(III)I
    .locals 5
    .param p1, "lastIndexShift"    # I
    .param p2, "origFirstDotLocation"    # I
    .param p3, "origLastDotLocation"    # I

    .prologue
    .line 2904
    const/4 v0, 0x0

    .line 2905
    .local v0, "calculatedShift":I
    move v2, p2

    .line 2906
    .local v2, "upperGap":I
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p3

    add-int/lit8 v1, v3, -0x1

    .line 2909
    .local v1, "lowerGap":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2911
    if-le v1, v2, :cond_1

    .line 2913
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2921
    :cond_0
    :goto_0
    return v0

    .line 2917
    :cond_1
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3810
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3811
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3812
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 3814
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v7, :cond_2

    .line 3815
    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 3816
    .local v2, "startPosY":F
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_2

    .line 3821
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v7, :cond_0

    .line 3822
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v3, v7, v0

    .line 3823
    .local v3, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 3828
    .local v1, "separatorHeight":F
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3829
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 3830
    .local v6, "width":F
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v6

    sub-float v4, v7, v8

    .line 3833
    .local v4, "textPosX":F
    const-string v7, "."

    if-ne v3, v7, :cond_1

    .line 3834
    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    .line 3836
    .local v5, "textPosY":F
    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 3842
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3825
    .end local v1    # "separatorHeight":F
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textPosX":F
    .end local v5    # "textPosY":F
    .end local v6    # "width":F
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v8, v0, v8

    aget-object v3, v7, v8

    .line 3826
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .restart local v1    # "separatorHeight":F
    goto :goto_1

    .line 3838
    .restart local v4    # "textPosX":F
    .restart local v6    # "width":F
    :cond_1
    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    .line 3840
    .restart local v5    # "textPosY":F
    add-float/2addr v2, v1

    goto :goto_2

    .line 3873
    .end local v0    # "index":I
    .end local v1    # "separatorHeight":F
    .end local v2    # "startPosY":F
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textPosX":F
    .end local v5    # "textPosY":F
    .end local v6    # "width":F
    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 3717
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 3718
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 3719
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 3722
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3723
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3724
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3725
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3745
    :cond_1
    :goto_0
    return-void

    .line 3731
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_3

    .line 3732
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3733
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3736
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_4

    .line 3738
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3739
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_5

    .line 3741
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3743
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3883
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    .line 3891
    :cond_0
    :goto_0
    return-void

    .line 3887
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 3888
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3890
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 3779
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3781
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3784
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3785
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3786
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3788
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-gt v6, v0, :cond_3

    .line 3790
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_2

    .line 3788
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3794
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v1, v0

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 3800
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3801
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 2319
    const/4 v3, 0x0

    .line 2320
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2321
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 2322
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 2323
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 2324
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 2326
    return v3
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14
    .param p1, "y"    # I

    .prologue
    .line 3306
    iget-boolean v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 3308
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_0

    .line 3309
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    .line 3340
    :goto_0
    return-object v6

    .line 3312
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    .line 3316
    .local v4, "numberOfElements":I
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 3317
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2802(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 3318
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 3320
    .local v5, "selectedIndexTop":I
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v1, v6, v7

    .line 3328
    .local v1, "generalHeight":F
    :goto_1
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    .line 3329
    .local v3, "internalHeight":F
    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    .line 3330
    .local v0, "floatIndex":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 3333
    .local v2, "index":I
    if-lt v2, v4, :cond_3

    .line 3334
    add-int/lit8 v2, v4, -0x1

    .line 3338
    :cond_1
    :goto_2
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 3339
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 3340
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    goto :goto_0

    .line 3322
    .end local v0    # "floatIndex":F
    .end local v1    # "generalHeight":F
    .end local v2    # "index":I
    .end local v3    # "internalHeight":F
    .end local v5    # "selectedIndexTop":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2802(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 3323
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 3325
    .restart local v5    # "selectedIndexTop":I
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .restart local v1    # "generalHeight":F
    goto :goto_1

    .line 3335
    .restart local v0    # "floatIndex":F
    .restart local v2    # "index":I
    .restart local v3    # "internalHeight":F
    :cond_3
    if-gez v2, :cond_1

    .line 3336
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getIndex(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 3205
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 3207
    .local v0, "firstLangCount":F
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-nez v3, :cond_2

    .line 3208
    :cond_0
    const/4 v1, 0x0

    .line 3230
    :cond_1
    :goto_0
    return v1

    .line 3212
    :cond_2
    int-to-float v3, p1

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 3213
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v2, v3, v0

    .line 3214
    .local v2, "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 3224
    .local v1, "index":I
    :goto_1
    if-gez v1, :cond_4

    .line 3225
    const/4 v1, 0x0

    goto :goto_0

    .line 3217
    .end local v1    # "index":I
    .end local v2    # "indexTouchBoundary":F
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 3218
    .restart local v2    # "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 3221
    .restart local v1    # "index":I
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_1

    .line 3226
    :cond_4
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v3, :cond_1

    .line 3227
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3251
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 3252
    :cond_0
    const-string v0, ""

    .line 3284
    :goto_0
    return-object v0

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    .line 3254
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 3271
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3273
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 3276
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3277
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le v0, v1, :cond_8

    .line 3279
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 3255
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    .line 3256
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    .line 3259
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 3265
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    .line 3266
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    .line 3281
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 3284
    :cond_9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const v10, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2217
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2218
    .local v8, "rsrc":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 2219
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2223
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2224
    const-string/jumbo v0, "sec-roboto-light"

    .line 2225
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2224
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 2229
    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    .line 2231
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2234
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 2235
    .local v7, "outValue":Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010434

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2236
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1802(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2238
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 2239
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_second_handle_gap:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 2241
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_textsize:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    .line 2242
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_separator_min_height:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    .line 2243
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_separator_width:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 2244
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_separator_thickness:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    .line 2245
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_bg_line_width:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    .line 2246
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 2247
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_additional_width:I

    .line 2248
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2247
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1902(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2249
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 2251
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 2252
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 2254
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2255
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_fluid_indexview_side_margin:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 2256
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_fluid_indexview_top_margin:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 2257
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_fluid_indexview_content_padding:I

    .line 2258
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    .line 2259
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_fluid_content_min_height:I

    .line 2260
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    .line 2261
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_visual_effect_text_color:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    .line 2262
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_index_scroll_preview_radius:I

    .line 2263
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    .line 2264
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_index_scroll_preview_ypos_limit:I

    .line 2265
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    .line 2267
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010433

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2268
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2002(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2285
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    .line 2286
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    .line 2287
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_index_scroll_thumb_padding:I

    .line 2288
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    .line 2289
    sget v0, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_index_scroll_dot_separator_height:I

    .line 2290
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    .line 2293
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 2294
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2295
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v9, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2002(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 2297
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v9, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    .line 2298
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 2299
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v9, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    .line 2301
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 2302
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 2303
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    .line 2305
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2309
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 2310
    return-void

    .line 2295
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_0

    .line 2297
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    goto :goto_1

    .line 2299
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_2
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 23

    .prologue
    .line 2692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 2884
    :cond_0
    :goto_0
    return-void

    .line 2695
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_2

    .line 2698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    .line 2703
    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 2704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    .line 2706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    if-ltz v20, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    .line 2712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    .line 2714
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 2716
    .local v14, "numberOfMissingElements":I
    int-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x1

    .line 2718
    .local v11, "numberOfDots":I
    if-gez v11, :cond_3

    .line 2719
    const/4 v11, 0x1

    .line 2725
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2726
    const/4 v10, 0x1

    .line 2734
    .local v10, "lastIndexShift":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 2735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x2

    .line 2737
    if-nez v11, :cond_4

    .line 2738
    const/4 v11, 0x1

    .line 2749
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 2750
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x3

    .line 2753
    if-nez v11, :cond_5

    .line 2754
    const/4 v11, 0x1

    .line 2762
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 2767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    div-int v11, v20, v21

    .line 2771
    :cond_6
    move v15, v11

    .line 2775
    .local v15, "numberOfRemainingDots":I
    add-int v20, v14, v11

    div-int v20, v20, v11

    add-int/lit8 v12, v20, 0x1

    .line 2783
    .local v12, "numberOfElementsRepresentedByEachDot":I
    :goto_2
    add-int/lit8 v20, v12, -0x1

    mul-int v20, v20, v11

    add-int v21, v14, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 2785
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 2728
    .end local v10    # "lastIndexShift":I
    .end local v12    # "numberOfElementsRepresentedByEachDot":I
    .end local v15    # "numberOfRemainingDots":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    add-int/lit8 v10, v20, 0x1

    .restart local v10    # "lastIndexShift":I
    goto/16 :goto_1

    .line 2788
    .restart local v12    # "numberOfElementsRepresentedByEachDot":I
    .restart local v15    # "numberOfRemainingDots":I
    :cond_8
    const/4 v8, 0x0

    .line 2789
    .local v8, "index":I
    const/4 v4, 0x0

    .line 2795
    .local v4, "alphabetIndex":I
    add-int v20, v14, v11

    rem-int v13, v20, v12

    .line 2798
    .local v13, "numberOfElementsRepresentedByLastDot":I
    const/4 v5, 0x0

    .line 2800
    .local v5, "bPerfectDotsSpreadingExists":Z
    const/4 v9, 0x0

    .line 2804
    .local v9, "indexShift":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_e

    .line 2805
    add-int/lit8 v20, v11, -0x1

    .line 2806
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    .line 2807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    div-int v6, v20, v11

    .line 2814
    .local v6, "distanceBetweenConsecutiveDots":I
    :goto_3
    const/16 v16, 0x0

    .line 2815
    .local v16, "origFirstDotLocation":I
    const/16 v17, 0x0

    .line 2816
    .local v17, "origLastDotLocation":I
    if-nez v5, :cond_a

    .line 2817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v6, v20, v11

    .line 2820
    if-nez v6, :cond_9

    .line 2821
    const/4 v6, 0x1

    .line 2823
    :cond_9
    add-int/lit8 v16, v6, -0x1

    .line 2824
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_f

    add-int/lit8 v20, v11, -0x1

    mul-int v20, v20, v6

    add-int/lit8 v17, v20, -0x1

    .line 2828
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v10, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v9

    .line 2831
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_13

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v20, v0

    aput v4, v20, v8

    .line 2836
    if-eqz v5, :cond_b

    add-int/lit8 v20, v8, 0x1

    rem-int v20, v20, v6

    if-gtz v20, :cond_d

    :cond_b
    if-nez v5, :cond_10

    if-lez v9, :cond_c

    move/from16 v0, v16

    if-le v8, v0, :cond_d

    :cond_c
    add-int/lit8 v20, v8, 0x1

    sub-int v20, v20, v9

    rem-int v20, v20, v6

    if-gtz v20, :cond_d

    if-eqz v15, :cond_d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_10

    .line 2854
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v4

    aput-object v21, v20, v8

    .line 2855
    add-int/lit8 v4, v4, 0x1

    .line 2878
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2810
    .end local v6    # "distanceBetweenConsecutiveDots":I
    .end local v16    # "origFirstDotLocation":I
    .end local v17    # "origLastDotLocation":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    .line 2811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v11, 0x1

    div-int v6, v20, v21

    .restart local v6    # "distanceBetweenConsecutiveDots":I
    goto/16 :goto_3

    .line 2824
    .restart local v16    # "origFirstDotLocation":I
    .restart local v17    # "origLastDotLocation":I
    :cond_f
    mul-int v20, v6, v11

    add-int/lit8 v17, v20, -0x1

    goto :goto_4

    .line 2857
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "."

    aput-object v21, v20, v8

    .line 2858
    move/from16 v18, v4

    .line 2860
    .local v18, "prevAlphabetIndex":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_11

    .line 2861
    add-int/2addr v4, v12

    .line 2870
    :goto_7
    sub-int v20, v4, v18

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2871
    .local v19, "tempDotAlphaBet":[Ljava/lang/String;
    move/from16 v7, v18

    .local v7, "i":I
    :goto_8
    if-ge v7, v4, :cond_12

    .line 2872
    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aput-object v21, v19, v20

    .line 2871
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2866
    .end local v7    # "i":I
    .end local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v8

    add-int/lit8 v21, v21, -0x1

    sub-int v4, v20, v21

    goto :goto_7

    .line 2874
    .restart local v7    # "i":I
    .restart local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 2881
    .end local v7    # "i":I
    .end local v18    # "prevAlphabetIndex":I
    .end local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto/16 :goto_0
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 10
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3375
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3383
    :cond_1
    :goto_0
    return v0

    .line 3377
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 3378
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 3383
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isInSelectedIndexVerticalRange(I)Z
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 3364
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3
    .param p1, "mSelectedIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 3192
    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 3193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2433
    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v1, v3, :cond_2

    .line 2439
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 2442
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v1, v3, :cond_3

    .line 2443
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 2447
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2448
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2449
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 2450
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2451
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2452
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2453
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 2454
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2456
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2457
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 2459
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2460
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 2462
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 2464
    const/4 v0, 0x0

    .line 2467
    .local v0, "digitIndexCount":I
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_4

    .line 2468
    const/4 v0, 0x1

    .line 2473
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 2474
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0

    .line 2476
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 2477
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 4
    .param p1, "numberOfDots"    # I
    .param p2, "lastIndexShift"    # I

    .prologue
    const/4 v1, 0x0

    .line 2939
    if-gez p1, :cond_0

    .line 2940
    const/4 p1, 0x1

    .line 2943
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_2

    .line 2950
    :cond_1
    :goto_0
    return v1

    .line 2946
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    .line 2950
    .local v0, "dotsGap":I
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setBgRectParams()V
    .locals 2

    .prologue
    .line 3754
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 3756
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3758
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3759
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3762
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3763
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3766
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 3767
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3769
    :cond_2
    return-void
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 14
    .param p1, "alphabetArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2962
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 3004
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    .line 2970
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2974
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    .line 2975
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    .line 2980
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2984
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2985
    array-length v13, p1

    .line 2988
    .local v13, "alphabetSize":I
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2995
    .local v8, "height":I
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    .line 2996
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2995
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2999
    .local v6, "scrollTop":I
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3518
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 3525
    :cond_0
    :goto_0
    return-void

    .line 3521
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    .line 3522
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 3523
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawEffect(F)V
    .locals 14
    .param p1, "effectPositionY"    # F

    .prologue
    .line 3579
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 3580
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    .line 3581
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3582
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 3583
    .local v5, "width":F
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v3, v6, v7

    .line 3585
    .local v3, "textPosX":F
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 3588
    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 3592
    .local v2, "smallTextPositionY":F
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float v4, v6, v7

    .line 3594
    .local v4, "topDrawY":F
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float v0, v6, v7

    .line 3598
    .local v0, "bottomDrawY":F
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 3602
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float v4, v6, v7

    .line 3604
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    sub-float v0, v6, v7

    .line 3618
    :cond_0
    const v1, -0x39e3c400    # -9999.0f

    .line 3620
    .local v1, "drawY":F
    cmpl-float v6, p1, v4

    if-lez v6, :cond_5

    cmpg-float v6, p1, v0

    if-gez v6, :cond_5

    .line 3621
    move v1, p1

    .line 3630
    :cond_1
    :goto_0
    const v6, -0x39e3c400    # -9999.0f

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_4

    .line 3631
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v6, :cond_2

    .line 3635
    :cond_2
    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 3640
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    .line 3643
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 3644
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v6

    const/4 v7, 0x1

    .line 3645
    invoke-interface {v6, v7, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    .line 3650
    .end local v0    # "bottomDrawY":F
    .end local v1    # "drawY":F
    .end local v2    # "smallTextPositionY":F
    .end local v3    # "textPosX":F
    .end local v4    # "topDrawY":F
    .end local v5    # "width":F
    :cond_4
    return-void

    .line 3622
    .restart local v0    # "bottomDrawY":F
    .restart local v1    # "drawY":F
    .restart local v2    # "smallTextPositionY":F
    .restart local v3    # "textPosX":F
    .restart local v4    # "topDrawY":F
    .restart local v5    # "width":F
    :cond_5
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_6

    .line 3624
    move v1, v4

    goto :goto_0

    .line 3625
    :cond_6
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_1

    .line 3627
    move v1, v0

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3535
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 3537
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3538
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 3540
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_3

    .line 3541
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3542
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->close()V

    .line 3545
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3546
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScrollPreview;->close()V

    .line 3549
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3550
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    .line 3561
    :cond_3
    :goto_0
    return-void

    .line 3555
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 3556
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    .line 3558
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    .line 3559
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 2030
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2031
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 2033
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 3099
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 3100
    const-string v3, ""

    .line 3181
    :cond_0
    :goto_0
    return-object v3

    .line 3103
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v4, :cond_2

    .line 3104
    const-string v3, ""

    goto :goto_0

    .line 3107
    :cond_2
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3110
    invoke-static {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v4, v5

    if-le p1, v4, :cond_5

    .line 3111
    :cond_4
    const-string v3, ""

    goto :goto_0

    .line 3112
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3113
    invoke-static {v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v4, v5

    if-gt p1, v4, :cond_a

    .line 3115
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_9

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3116
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3118
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_7

    .line 3120
    :cond_6
    const-string v3, ""

    goto :goto_0

    .line 3122
    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3124
    :cond_8
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3127
    :cond_9
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3130
    :cond_a
    iget-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v4, :cond_11

    .line 3131
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-gt v4, v5, :cond_c

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_b

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    :cond_b
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_c

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_0

    .line 3137
    :cond_c
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_10

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3138
    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3140
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_e

    .line 3142
    :cond_d
    const-string v3, ""

    goto/16 :goto_0

    .line 3144
    :cond_e
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto/16 :goto_0

    .line 3146
    :cond_f
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3149
    :cond_10
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3157
    :cond_11
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 3158
    const-string v0, ""

    .line 3177
    .local v0, "currentSubIndexString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    .line 3178
    .local v2, "nextSubIndexStrings":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 3160
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v2    # "nextSubIndexStrings":Ljava/lang/String;
    :cond_12
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3163
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v4, :cond_13

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_14

    .line 3165
    :cond_13
    const-string v3, ""

    goto/16 :goto_0

    .line 3167
    :cond_14
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 3168
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3169
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, ""

    .line 3170
    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 3172
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    .prologue
    .line 2011
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .prologue
    .line 2020
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    .prologue
    .line 1982
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 2001
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    .line 2002
    .local v0, "xCord":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 2001
    .end local v0    # "xCord":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2063
    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v1, :cond_1

    .line 2064
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2076
    :cond_0
    :goto_0
    return v0

    .line 2066
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2071
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v1, v0, :cond_2

    .line 2073
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2076
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    .prologue
    .line 3051
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .prologue
    .line 1973
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3027
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 3043
    :goto_0
    return-void

    .line 3031
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3032
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 3033
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 3034
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 3035
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    .line 3037
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 3038
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 3039
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 3040
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 3041
    iput-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3010
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 3021
    :goto_0
    return-void

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3014
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 3015
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 3016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 3017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    .line 3019
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    .prologue
    .line 3507
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 3508
    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 2337
    if-nez p1, :cond_0

    .line 2352
    :goto_0
    return-void

    .line 2340
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 2341
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 2342
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 2343
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 2347
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    .line 2348
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 2350
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 2351
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDefaultIndexScrollWidth()V
    .locals 2

    .prologue
    .line 2124
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2125
    .local v0, "rsrc":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 2126
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_separator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 2127
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_separator_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    .line 2128
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 2129
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 2130
    return-void
.end method

.method public setDimensionns(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    .line 2187
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    .line 2188
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 2189
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 2192
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2193
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 2196
    :cond_3
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 2197
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    .line 2198
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 2199
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 2202
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2204
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 2205
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    goto :goto_0
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectText"    # Ljava/lang/String;

    .prologue
    .line 3570
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    .line 3571
    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 2148
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 2149
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 2150
    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 5
    .param p1, "theme"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3397
    iget-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v1, :cond_0

    .line 3501
    :goto_0
    return-void

    .line 3401
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 3402
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3404
    .local v0, "rsrc":Landroid/content/res/Resources;
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    .line 3405
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_divider_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 3407
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 3408
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_text_color_pressed:I

    .line 3409
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 3410
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_text_color_pressed_2nd_act:I

    .line 3411
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 3413
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_right_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3415
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_bg_activation_right_holo_dark:I

    .line 3416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 3417
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_right_bg_activated_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 3420
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_bg_activation_right_2nd_holo_dark:I

    .line 3421
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3422
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_right_bg_activated_2nd_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3425
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    .line 3426
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_bg_holo_dark:I

    .line 3427
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3460
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3461
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_fluid_scrollbar_handle_right_bg_mtrl:I

    .line 3462
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3463
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_text_color_dimmed_fluid:I

    .line 3464
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 3466
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_press_bg_mtrl_shape:I

    .line 3467
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 3472
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3473
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3475
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3476
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 3477
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3478
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 3480
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3481
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_4
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 3482
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3483
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_5
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 3484
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3485
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 3487
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3488
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3490
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_3

    .line 3491
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 3492
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$3600(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3500
    :cond_3
    :goto_8
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    .line 3430
    :cond_4
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_divider_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 3431
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_index_text_color_dimmed_light:I

    .line 3432
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 3439
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 3440
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 3443
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_right_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 3445
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_bg_activation_right_mtrl:I

    .line 3446
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 3447
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_right_bg_activated_mtrl:I

    .line 3448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 3450
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3451
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 3453
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    .line 3455
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scrollbar_handle_bg_holo_light:I

    .line 3456
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 3473
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 3478
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 3481
    :cond_7
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_4

    .line 3483
    :cond_8
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_5

    .line 3485
    :cond_9
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    goto :goto_6

    .line 3492
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 3495
    :cond_b
    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_bg_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    .line 3496
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3497
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_8
.end method

.method public setMaxDepth(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .prologue
    .line 2138
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 2139
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2158
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 2170
    :goto_0
    return-void

    .line 2162
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 2163
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 2164
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2165
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 2169
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    .line 2167
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 2110
    if-gtz p1, :cond_0

    .line 2118
    :goto_0
    return-void

    .line 2114
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 2115
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 2116
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 2117
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
