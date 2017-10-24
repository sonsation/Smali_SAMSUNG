.class Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAdditionalSpace:I

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentMinHeight:F

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

.field mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHeight:I

.field private mIndexScrollPreviewRadius:F

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mScreenHeight:I

.field private mScrollBottomMargin:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorHeight:F

.field private mSmallText:Ljava/lang/String;

.field private mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

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

.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1489
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    .line 1339
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1346
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1355
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1363
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1401
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1407
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1412
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1431
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1434
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1441
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1449
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1457
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1464
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1491
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 1492
    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 1493
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1494
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    .line 1495
    invoke-static {p1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get0(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1496
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1497
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1498
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1499
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1500
    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1501
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    .line 1489
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1511
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    .line 1339
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1346
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1355
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1363
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1401
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1407
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1412
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1431
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1434
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1441
    iput-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1449
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1457
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1464
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1513
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 1514
    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 1515
    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1517
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1518
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    .line 1519
    invoke-static {p1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get0(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1520
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1521
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1522
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1523
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1524
    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1525
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    .line 1511
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;I[Ljava/lang/String;IIIIIII)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "alphabetArray"    # [Ljava/lang/String;
    .param p5, "scrollTop"    # I
    .param p6, "screenHeight"    # I
    .param p7, "height"    # I
    .param p8, "width"    # I
    .param p9, "widthShift"    # I
    .param p10, "maxDepth"    # I
    .param p11, "depth"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1541
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    .line 1339
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1346
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1355
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1363
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1401
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1407
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1412
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1431
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1434
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1441
    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1449
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1457
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1464
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1545
    iput p6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1546
    iput p7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 1547
    iput p8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 1548
    iput p9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1549
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1550
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1551
    iput p10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1552
    iput p11, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    .line 1553
    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1554
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1555
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1556
    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1557
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    .line 1558
    invoke-virtual {p0, p4, v1, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1559
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    .line 1543
    return-void
.end method

.method private adjustSeparatorHeight()V
    .locals 11

    .prologue
    const v10, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    .line 1886
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get9(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1888
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1896
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1897
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1908
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    .line 1909
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1910
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1912
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    .line 1898
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 1899
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1900
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    .line 1903
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    .line 1913
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1915
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1917
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 3

    .prologue
    .line 1873
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 1875
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1876
    .local v0, "numberOfCharacters":I
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1870
    .end local v0    # "numberOfCharacters":I
    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 8

    .prologue
    .line 2944
    const/4 v1, 0x0

    .line 2945
    .local v1, "left":I
    const/4 v2, 0x0

    .line 2946
    .local v2, "right":I
    const/4 v3, 0x0

    .line 2947
    .local v3, "top":I
    const/4 v0, 0x0

    .line 2949
    .local v0, "bottom":I
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2951
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v2, v4, v5

    .line 2952
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v2, v4

    .line 2958
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2959
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    .line 2960
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v4

    .line 2961
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v2, v4

    .line 2962
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemIndexScrollView;->-get13(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 2963
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemIndexScrollView;->-get13(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 2965
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_3

    .line 2967
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 2968
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 2976
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    .line 2942
    return-void

    .line 2954
    :cond_2
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v2, v4, v5

    .line 2955
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0

    .line 2966
    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 2969
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_4

    .line 2970
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 2971
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v0, v3, v4

    goto :goto_1

    .line 2972
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_1

    .line 2973
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 2974
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v3, v0, v4

    goto :goto_1
.end method

.method private calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 21
    .param p1, "language"    # Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
    .param p2, "specialIndexCount"    # I
    .param p3, "startIndexPosition"    # I
    .param p4, "digitIndexCount"    # I

    .prologue
    .line 1987
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    sub-int v5, v18, p2

    .line 1988
    .local v5, "earlyLangCount":I
    const/4 v15, 0x0

    .line 1989
    .local v15, "numberOfMissingElements":I
    const/4 v13, 0x0

    .line 1992
    .local v13, "isFullCountState":Z
    move/from16 v10, p3

    .local v10, "index":I
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 1993
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    sub-int v19, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    aput-object v20, v18, v19

    .line 1992
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2051
    .local v2, "alphabetArrWithDots":[Ljava/lang/String;
    .local v7, "fullDotCount":I
    .local v8, "gapOfDot":I
    .local v11, "indexShift":I
    .local v14, "langCount":I
    .local v16, "remainDotCount":I
    :cond_0
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 2164
    .end local v8    # "gapOfDot":I
    .end local v11    # "indexShift":I
    .end local v16    # "remainDotCount":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 2000
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v7    # "fullDotCount":I
    .end local v14    # "langCount":I
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1a

    .line 2001
    sub-int v14, v5, p4

    .line 2002
    .restart local v14    # "langCount":I
    div-int/lit8 v18, v14, 0x2

    add-int/lit8 v7, v18, -0x1

    .line 2005
    .restart local v7    # "fullDotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    if-eqz v13, :cond_5

    .line 2054
    :cond_2
    const/4 v13, 0x1

    .line 2056
    const/4 v12, 0x0

    .line 2057
    .local v12, "isDotPosition":Z
    const/4 v4, 0x0

    .line 2060
    .local v4, "dotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    packed-switch v18, :pswitch_data_0

    .line 2100
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 2101
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2102
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2111
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-gez v18, :cond_12

    .line 2112
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 2113
    return-void

    .line 2006
    .end local v4    # "dotCount":I
    .end local v12    # "isDotPosition":Z
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 2008
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2009
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2010
    add-int/lit8 v15, v15, 0x1

    .line 2012
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    div-int v18, v14, v18

    add-int/lit8 v8, v18, 0x1

    .line 2015
    .restart local v8    # "gapOfDot":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_6

    .line 2016
    const/4 v8, 0x2

    .line 2018
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    .line 2020
    .restart local v16    # "remainDotCount":I
    const/4 v11, 0x0

    .line 2022
    .restart local v11    # "indexShift":I
    :cond_7
    if-eqz v16, :cond_0

    .line 2023
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 2024
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    .line 2027
    :cond_8
    move/from16 v10, p3

    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_9

    .line 2028
    sub-int v18, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    aput-object v19, v2, v18

    .line 2027
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2031
    :cond_9
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 2032
    mul-int v18, v8, v9

    mul-int v19, v11, v9

    sub-int v17, v18, v19

    .line 2034
    .local v17, "targetIndex":I
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 2035
    add-int/lit8 v18, p2, -0x1

    add-int v17, v17, v18

    .line 2038
    :cond_a
    if-lez v17, :cond_c

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 2039
    const-string/jumbo v18, "."

    aput-object v18, v2, v17

    .line 2040
    add-int/lit8 v16, v16, -0x1

    .line 2031
    :cond_b
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2041
    :cond_c
    move/from16 v0, v17

    if-lt v0, v14, :cond_b

    if-lez v16, :cond_b

    .line 2042
    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    move/from16 v0, v18

    if-ge v0, v14, :cond_d

    .line 2043
    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    const-string/jumbo v19, "."

    aput-object v19, v2, v18

    .line 2044
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 2046
    :cond_d
    const/4 v11, 0x1

    goto :goto_5

    .line 2062
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v8    # "gapOfDot":I
    .end local v9    # "i":I
    .end local v11    # "indexShift":I
    .end local v16    # "remainDotCount":I
    .end local v17    # "targetIndex":I
    .restart local v4    # "dotCount":I
    .restart local v12    # "isDotPosition":Z
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2063
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2064
    add-int/lit8 v15, v15, 0x1

    .line 2065
    goto/16 :goto_2

    .line 2067
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2068
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto/16 :goto_2

    .line 2072
    :pswitch_2
    if-eqz p2, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 2073
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2074
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2075
    const/4 v12, 0x1

    .line 2087
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 2088
    goto/16 :goto_2

    .line 2078
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 2079
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 2080
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 2084
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2085
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 2090
    :pswitch_3
    if-lez p4, :cond_10

    .line 2091
    add-int/lit8 p4, p4, -0x1

    .line 2092
    goto/16 :goto_2

    .line 2094
    :cond_10
    if-lez p2, :cond_3

    .line 2095
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_2

    .line 2104
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 2105
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 2106
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 2111
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    if-ltz v18, :cond_4

    .line 2116
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    .line 2119
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2120
    .local v3, "averageElementsEachDot":I
    const/4 v6, 0x0

    .line 2122
    .local v6, "extraMissingElements":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-lez v18, :cond_13

    .line 2123
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    div-int v3, v15, v18

    .line 2124
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    rem-int v6, v15, v18

    .line 2127
    :cond_13
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v10, v0, :cond_14

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    aput-object v18, v2, v10

    .line 2127
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2132
    :cond_14
    move/from16 v17, p2

    .line 2134
    .restart local v17    # "targetIndex":I
    move/from16 v10, p2

    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v18

    if-ge v10, v0, :cond_18

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    .line 2136
    if-nez v12, :cond_16

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v17, p3

    aget-object v18, v18, v19

    aput-object v18, v2, v10

    .line 2139
    add-int/lit8 v17, v17, 0x1

    .line 2140
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_15

    .line 2141
    const/4 v12, 0x1

    .line 2134
    :cond_15
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2144
    :cond_16
    const-string/jumbo v18, "."

    aput-object v18, v2, v10

    .line 2145
    add-int/lit8 v4, v4, 0x1

    .line 2147
    add-int v17, v17, v3

    .line 2149
    if-lez v6, :cond_17

    .line 2150
    add-int/lit8 v6, v6, -0x1

    .line 2151
    add-int/lit8 v17, v17, 0x1

    .line 2153
    :cond_17
    const/4 v12, 0x0

    goto :goto_9

    .line 2158
    :cond_18
    if-lez p4, :cond_19

    .line 2159
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v19, v19, v20

    aput-object v19, v2, v18

    .line 2162
    :cond_19
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_1

    .line 1986
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v3    # "averageElementsEachDot":I
    .end local v4    # "dotCount":I
    .end local v6    # "extraMissingElements":I
    .end local v7    # "fullDotCount":I
    .end local v12    # "isDotPosition":Z
    .end local v14    # "langCount":I
    .end local v17    # "targetIndex":I
    :cond_1a
    return-void

    .line 2060
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
    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, "calculatedShift":I
    move v2, p2

    .line 2382
    .local v2, "upperGap":I
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, p3

    .line 2385
    .local v1, "lowerGap":I
    sub-int v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2388
    if-le v1, p2, :cond_1

    .line 2391
    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2400
    :cond_0
    :goto_0
    return v0

    .line 2397
    :cond_1
    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

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
    .line 3012
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3013
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3014
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 3015
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v7, :cond_2

    .line 3016
    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 3017
    .local v2, "startPosY":F
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_2

    .line 3021
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v7, :cond_0

    .line 3022
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v3, v7, v0

    .line 3023
    .local v3, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 3028
    .local v1, "separatorHeight":F
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3029
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 3030
    .local v6, "width":F
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v6

    sub-float v4, v7, v8

    .line 3033
    .local v4, "textPosX":F
    const-string/jumbo v7, "."

    if-ne v3, v7, :cond_1

    .line 3034
    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    .line 3035
    .local v5, "textPosY":F
    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 3040
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3025
    .end local v1    # "separatorHeight":F
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textPosX":F
    .end local v5    # "textPosY":F
    .end local v6    # "width":F
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v8, v0, v8

    aget-object v3, v7, v8

    .line 3026
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .restart local v1    # "separatorHeight":F
    goto :goto_1

    .line 3037
    .restart local v4    # "textPosX":F
    .restart local v6    # "width":F
    :cond_1
    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    .line 3038
    .restart local v5    # "textPosY":F
    add-float/2addr v2, v1

    goto :goto_2

    .line 3010
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
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2985
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 2986
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 2987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 2989
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2990
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get13(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2991
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2983
    :cond_1
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1828
    const/4 v3, 0x0

    .line 1829
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1830
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1831
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1832
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1833
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1835
    return v3
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14
    .param p1, "y"    # I

    .prologue
    .line 2765
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    .line 2766
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2767
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    .line 2766
    if-ge v7, v6, :cond_0

    .line 2769
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    return-object v6

    .line 2772
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    .line 2776
    .local v4, "numberOfElements":I
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemIndexScrollView;->-get2(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 2778
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemIndexScrollView;->-get3(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->-set4(Lcom/samsung/android/widget/SemIndexScrollView;I)I

    .line 2779
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 2780
    .local v5, "selectedIndexTop":I
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v1, v6, v7

    .line 2789
    .local v1, "generalHeight":F
    :goto_0
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    .line 2790
    .local v3, "internalHeight":F
    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    .line 2791
    .local v0, "floatIndex":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 2794
    .local v2, "index":I
    if-lt v2, v4, :cond_3

    .line 2796
    add-int/lit8 v2, v4, -0x1

    .line 2802
    :cond_1
    :goto_1
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2803
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2804
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    return-object v6

    .line 2784
    .end local v0    # "floatIndex":F
    .end local v1    # "generalHeight":F
    .end local v2    # "index":I
    .end local v3    # "internalHeight":F
    .end local v5    # "selectedIndexTop":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->-set4(Lcom/samsung/android/widget/SemIndexScrollView;I)I

    .line 2785
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 2786
    .restart local v5    # "selectedIndexTop":I
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .restart local v1    # "generalHeight":F
    goto :goto_0

    .line 2798
    .restart local v0    # "floatIndex":F
    .restart local v2    # "index":I
    .restart local v3    # "internalHeight":F
    :cond_3
    if-gez v2, :cond_1

    .line 2800
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getIndex(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 2674
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 2677
    .local v0, "firstLangCount":F
    int-to-float v3, p1

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 2678
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v2, v3, v0

    .line 2679
    .local v2, "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 2686
    .local v1, "index":I
    :goto_0
    if-gez v1, :cond_2

    .line 2687
    const/4 v1, 0x0

    .line 2692
    :cond_0
    :goto_1
    return v1

    .line 2681
    .end local v1    # "index":I
    .end local v2    # "indexTouchBoundary":F
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 2682
    .restart local v2    # "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 2683
    .restart local v1    # "index":I
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_0

    .line 2688
    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v3, :cond_0

    .line 2689
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_1
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 2708
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 2710
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    .line 2712
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2729
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2731
    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2734
    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2736
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_8

    .line 2738
    :cond_5
    const-string/jumbo v0, ""

    return-object v0

    .line 2714
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    .line 2716
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2720
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2722
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    .line 2724
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2736
    :cond_8
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-gt v0, v1, :cond_5

    .line 2742
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 2747
    :cond_9
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1760
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1761
    .local v8, "rsrc":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 1762
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1764
    invoke-static {}, Lcom/samsung/android/widget/SemIndexScrollView;->-get11()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1765
    const-string/jumbo v0, "sec-roboto-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-set3(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/android/widget/SemIndexScrollView;->-get11()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1771
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 1772
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 1774
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1775
    .local v7, "outValue":Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010434

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1776
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-set2(Lcom/samsung/android/widget/SemIndexScrollView;I)I

    .line 1779
    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1780
    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 1783
    const v0, 0x105037a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1784
    const v0, 0x105037b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    .line 1785
    const v0, 0x105037c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1786
    const v0, 0x105037d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1787
    const v0, 0x105037e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    .line 1788
    const v0, 0x105037f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    .line 1789
    const v0, 0x1050380

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    .line 1790
    const v0, 0x1050377

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    .line 1791
    const v0, 0x1050379

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    .line 1794
    const v0, 0x1060187

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mEffectTextColor:I

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010433

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1796
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-set1(Lcom/samsung/android/widget/SemIndexScrollView;I)I

    .line 1798
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1799
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1800
    const v0, 0x1050382

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    .line 1801
    const v0, 0x1050383

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    .line 1802
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get7(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get5(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 1804
    const v0, 0x10807d2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get5(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1806
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get5(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1811
    const v0, 0x1060188

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 1812
    const v0, 0x1060189

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    .line 1813
    const v0, 0x10807d1

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1814
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1819
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1758
    return-void
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 23

    .prologue
    .line 2175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 2177
    return-void

    .line 2179
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_1

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 2185
    return-void

    .line 2188
    :cond_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 2189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    .line 2191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    if-gez v20, :cond_2

    .line 2192
    return-void

    .line 2195
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    .line 2197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    .line 2199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 2201
    .local v14, "numberOfMissingElements":I
    int-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x1

    .line 2206
    .local v11, "numberOfDots":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2208
    const/4 v10, 0x1

    .line 2218
    .local v10, "lastIndexShift":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 2220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x2

    .line 2222
    if-nez v11, :cond_3

    .line 2223
    const/4 v11, 0x1

    .line 2234
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x3

    .line 2239
    if-nez v11, :cond_4

    .line 2240
    const/4 v11, 0x1

    .line 2248
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 2249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 2250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    div-int v11, v20, v21

    .line 2255
    :cond_5
    if-gtz v11, :cond_6

    .line 2256
    const/4 v11, 0x1

    .line 2259
    :cond_6
    move v15, v11

    .line 2263
    .local v15, "numberOfRemainingDots":I
    add-int v20, v14, v11

    div-int v20, v20, v11

    add-int/lit8 v12, v20, 0x1

    .line 2270
    .local v12, "numberOfElementsRepresentedByEachDot":I
    :goto_1
    add-int/lit8 v20, v12, -0x1

    mul-int v20, v20, v11

    add-int v21, v14, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 2272
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 2212
    .end local v10    # "lastIndexShift":I
    .end local v12    # "numberOfElementsRepresentedByEachDot":I
    .end local v15    # "numberOfRemainingDots":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    add-int/lit8 v10, v20, 0x1

    .restart local v10    # "lastIndexShift":I
    goto/16 :goto_0

    .line 2274
    .restart local v12    # "numberOfElementsRepresentedByEachDot":I
    .restart local v15    # "numberOfRemainingDots":I
    :cond_8
    const/4 v8, 0x0

    .line 2275
    .local v8, "index":I
    const/4 v4, 0x0

    .line 2281
    .local v4, "alphabetIndex":I
    add-int v20, v14, v11

    rem-int v13, v20, v12

    .line 2283
    .local v13, "numberOfElementsRepresentedByLastDot":I
    const/4 v5, 0x0

    .line 2285
    .local v5, "bPerfectDotsSpreadingExists":Z
    const/4 v9, 0x0

    .line 2289
    .local v9, "indexShift":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_c

    .line 2291
    add-int/lit8 v20, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    .line 2292
    .local v5, "bPerfectDotsSpreadingExists":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    div-int v6, v20, v11

    .line 2301
    .local v6, "distanceBetweenConsecutiveDots":I
    :goto_2
    const/16 v16, 0x0

    .line 2302
    .local v16, "origFirstDotLocation":I
    const/16 v17, 0x0

    .line 2303
    .local v17, "origLastDotLocation":I
    if-nez v5, :cond_a

    .line 2305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v6, v20, v11

    .line 2307
    if-nez v6, :cond_9

    .line 2308
    const/4 v6, 0x1

    .line 2310
    :cond_9
    add-int/lit8 v16, v6, -0x1

    .line 2311
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_d

    add-int/lit8 v20, v11, -0x1

    mul-int v20, v20, v6

    add-int/lit8 v17, v20, -0x1

    .line 2312
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v10, v1, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v9

    .line 2315
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_13

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v20, v0

    aput v4, v20, v8

    .line 2321
    if-eqz v5, :cond_e

    add-int/lit8 v20, v8, 0x1

    rem-int v20, v20, v6

    if-lez v20, :cond_e

    .line 2332
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v4

    aput-object v21, v20, v8

    .line 2333
    add-int/lit8 v4, v4, 0x1

    .line 2360
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2297
    .end local v6    # "distanceBetweenConsecutiveDots":I
    .end local v16    # "origFirstDotLocation":I
    .end local v17    # "origLastDotLocation":I
    .local v5, "bPerfectDotsSpreadingExists":Z
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    .line 2298
    .local v5, "bPerfectDotsSpreadingExists":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v11, 0x1

    div-int v6, v20, v21

    .restart local v6    # "distanceBetweenConsecutiveDots":I
    goto :goto_2

    .line 2311
    .restart local v16    # "origFirstDotLocation":I
    .restart local v17    # "origLastDotLocation":I
    :cond_d
    mul-int v20, v6, v11

    add-int/lit8 v17, v20, -0x1

    goto :goto_3

    .line 2322
    :cond_e
    if-nez v5, :cond_10

    .line 2323
    if-lez v9, :cond_f

    move/from16 v0, v16

    if-le v8, v0, :cond_b

    .line 2327
    :cond_f
    add-int/lit8 v20, v8, 0x1

    sub-int v20, v20, v9

    rem-int v20, v20, v6

    if-gtz v20, :cond_b

    .line 2328
    if-eqz v15, :cond_b

    .line 2329
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_b

    .line 2337
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "."

    aput-object v21, v20, v8

    .line 2338
    move/from16 v18, v4

    .line 2340
    .local v18, "prevAlphabetIndex":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_11

    .line 2342
    add-int/2addr v4, v12

    .line 2352
    :goto_6
    sub-int v20, v4, v18

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2353
    .local v19, "tempDotAlphaBet":[Ljava/lang/String;
    move/from16 v7, v18

    .local v7, "i":I
    :goto_7
    if-ge v7, v4, :cond_12

    .line 2354
    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aput-object v21, v19, v20

    .line 2353
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2348
    .end local v7    # "i":I
    .end local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    sub-int v21, v21, v8

    sub-int v4, v20, v21

    goto :goto_6

    .line 2356
    .restart local v7    # "i":I
    .restart local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_5

    .line 2363
    .end local v7    # "i":I
    .end local v18    # "prevAlphabetIndex":I
    .end local v19    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 2172
    return-void
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 10
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2814
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_1

    .line 2816
    :cond_0
    return v1

    .line 2818
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-get12(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemIndexScrollView;->-get1(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2820
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    .line 2821
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-gt p1, v2, :cond_2

    .line 2820
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2821
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2820
    goto :goto_0

    .line 2825
    :cond_4
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    .line 2826
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-gt p1, v2, :cond_5

    move v1, v0

    .line 2825
    :cond_5
    return v1
.end method

.method private isSelectedIndexDot(I)Z
    .locals 2
    .param p1, "mSelectedIndex"    # I

    .prologue
    .line 2663
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    .line 1927
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get9(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 1928
    :cond_0
    return-void

    .line 1932
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v1, v3, :cond_2

    .line 1933
    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1936
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v1, v3, :cond_3

    .line 1937
    iput v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1941
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1942
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1943
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1944
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1945
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1946
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1947
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1948
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1950
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1951
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1953
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1954
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 1956
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1958
    const/4 v0, 0x0

    .line 1961
    .local v0, "digitIndexCount":I
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get8(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isUseDigitIndex()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1962
    const/4 v0, 0x1

    .line 1967
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-get9(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1968
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1925
    :goto_0
    return-void

    .line 1970
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1971
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto :goto_0
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 4
    .param p1, "numberOfDots"    # I
    .param p2, "lastIndexShift"    # I

    .prologue
    const/4 v1, 0x0

    .line 2414
    if-gez p1, :cond_0

    .line 2415
    const/4 p1, 0x1

    .line 2418
    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 2420
    return v1

    .line 2422
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    .line 2426
    .local v0, "dotsGap":I
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v2, v3, :cond_2

    .line 2427
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    .line 2426
    :cond_2
    return v1
.end method

.method private setBgRectParams()V
    .locals 2

    .prologue
    .line 3001
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 3002
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3003
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2999
    return-void
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 13
    .param p1, "alphabetArray"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2437
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_0

    .line 2439
    return-void

    .line 2442
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    if-ne v0, v1, :cond_1

    .line 2444
    return-void

    .line 2447
    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_3

    .line 2449
    :cond_2
    return-void

    .line 2452
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_4

    .line 2454
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    .line 2455
    return-void

    .line 2459
    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 2461
    return-void

    .line 2464
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2465
    array-length v12, p1

    .line 2468
    .local v12, "alphabetSize":I
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v12

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2475
    .local v7, "height":I
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    mul-double/2addr v2, v8

    double-to-int v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2477
    .local v5, "scrollTop":I
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 2478
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 2479
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    iget v10, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v11, v4, 0x1

    move-object v4, p1

    .line 2477
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;-><init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;I[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    .line 2434
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2845
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_0

    .line 2847
    return-void

    .line 2849
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    .line 2850
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_1

    .line 2851
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    .line 2843
    :cond_1
    return-void
.end method

.method public drawEffect(F)V
    .locals 14
    .param p1, "effectPositionY"    # F

    .prologue
    .line 2894
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 2895
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    .line 2896
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2897
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 2898
    .local v5, "width":F
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v3, v6, v7

    .line 2900
    .local v3, "textPosX":F
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 2904
    .local v2, "smallTextPositionY":F
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float v4, v6, v7

    .line 2905
    .local v4, "topDrawY":F
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float v0, v6, v7

    .line 2908
    .local v0, "bottomDrawY":F
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 2909
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float v4, v6, v7

    .line 2910
    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    sub-float v0, v6, v7

    .line 2914
    :cond_0
    const v1, -0x39e3c400    # -9999.0f

    .line 2916
    .local v1, "drawY":F
    cmpl-float v6, p1, v4

    if-lez v6, :cond_3

    cmpg-float v6, p1, v0

    if-gez v6, :cond_3

    .line 2917
    move v1, p1

    .line 2928
    :cond_1
    :goto_0
    const v6, -0x39e3c400    # -9999.0f

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_2

    .line 2929
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemIndexScrollView;->-get7(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    .line 2931
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemIndexScrollView;->-get10(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2932
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemIndexScrollView;->-get10(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    .line 2893
    .end local v0    # "bottomDrawY":F
    .end local v1    # "drawY":F
    .end local v2    # "smallTextPositionY":F
    .end local v3    # "textPosX":F
    .end local v4    # "topDrawY":F
    .end local v5    # "width":F
    :cond_2
    return-void

    .line 2919
    .restart local v0    # "bottomDrawY":F
    .restart local v1    # "drawY":F
    .restart local v2    # "smallTextPositionY":F
    .restart local v3    # "textPosX":F
    .restart local v4    # "topDrawY":F
    .restart local v5    # "width":F
    :cond_3
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_4

    .line 2921
    move v1, v4

    goto :goto_0

    .line 2923
    :cond_4
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_1

    .line 2925
    move v1, v0

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2861
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 2862
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 2863
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_2

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get7(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2865
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get7(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    .line 2868
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get10(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2869
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-get10(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    .line 2859
    :cond_2
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1606
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 1608
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    return v0

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1672
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2565
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 2566
    const-string/jumbo v3, ""

    return-object v3

    .line 2568
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v3, :cond_1

    .line 2570
    const-string/jumbo v3, ""

    return-object v3

    .line 2572
    :cond_1
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v3, v4

    if-ge p1, v3, :cond_3

    .line 2574
    :cond_2
    const-string/jumbo v3, ""

    return-object v3

    .line 2573
    :cond_3
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    .line 2575
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_9

    .line 2578
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_8

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2580
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2582
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v3, :cond_6

    .line 2583
    :cond_5
    const-string/jumbo v3, ""

    return-object v3

    .line 2582
    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 2585
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2588
    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2592
    :cond_8
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2597
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v3, :cond_11

    .line 2599
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    if-gt v3, v4, :cond_c

    .line 2600
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v3, :cond_b

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_b

    .line 2603
    :cond_a
    return-object v6

    .line 2601
    :cond_b
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-ne v3, v7, :cond_c

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_a

    .line 2608
    :cond_c
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_10

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2610
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2612
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v3, :cond_e

    .line 2613
    :cond_d
    const-string/jumbo v3, ""

    return-object v3

    .line 2612
    :cond_e
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_d

    .line 2615
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    return-object v3

    .line 2618
    :cond_f
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2622
    :cond_10
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2630
    :cond_11
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    .line 2631
    const-string/jumbo v0, ""

    .line 2649
    .local v0, "currentSubIndexString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    .line 2650
    .local v2, "nextSubIndexStrings":Ljava/lang/String;
    if-nez v2, :cond_16

    .line 2651
    return-object v6

    .line 2634
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v2    # "nextSubIndexStrings":Ljava/lang/String;
    :cond_12
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2637
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_13

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v3, :cond_14

    .line 2638
    :cond_13
    const-string/jumbo v3, ""

    return-object v3

    .line 2637
    :cond_14
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_13

    .line 2640
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_0

    .line 2641
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2642
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, ""

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_0

    .line 2645
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_0

    .line 2653
    .restart local v2    # "nextSubIndexStrings":Ljava/lang/String;
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    .prologue
    .line 1597
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1587
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    .line 1588
    .local v0, "xCord":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1587
    .end local v0    # "xCord":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    .restart local v0    # "xCord":I
    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1622
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1637
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v0, :cond_0

    .line 1639
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-gez v0, :cond_2

    .line 1644
    :cond_1
    return v2

    .line 1643
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1646
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v0, v2, :cond_3

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    return v0

    .line 1652
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public hasSubIndex()Z
    .locals 1

    .prologue
    .line 2534
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2509
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2510
    return-void

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2513
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2514
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2515
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2516
    iput-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    .line 2507
    :goto_0
    return-void

    .line 2520
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 2521
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2522
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2523
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2524
    iput-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2487
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2489
    return-void

    .line 2491
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2493
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2494
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    .line 2485
    :goto_0
    return-void

    .line 2500
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    .prologue
    .line 2835
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2833
    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 1848
    if-nez p1, :cond_0

    .line 1850
    return-void

    .line 1852
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1853
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1854
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1855
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1859
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1860
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1862
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1863
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    .line 1846
    return-void
.end method

.method public setDimensionns(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_0

    .line 1733
    return-void

    .line 1736
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_3

    .line 1740
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    .line 1741
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 1742
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 1744
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1745
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1746
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1747
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1748
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_2

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1750
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1751
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    .line 1729
    :cond_2
    return-void

    .line 1738
    :cond_3
    return-void
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectText"    # Ljava/lang/String;

    .prologue
    .line 2881
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    .line 2880
    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 1706
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 1707
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 1705
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .prologue
    .line 1697
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1695
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1716
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 1718
    return-void

    .line 1720
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1721
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1714
    return-void
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 1683
    if-gtz p1, :cond_0

    .line 1684
    return-void

    .line 1686
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1687
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1688
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1680
    return-void
.end method
