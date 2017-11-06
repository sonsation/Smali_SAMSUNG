.class Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1


# instance fields
.field private mAdditionalSpace:I

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentMinHeight:F

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDotHeight:I

.field mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHeight:I

.field private mIndexScrollPreviewRadius:F

.field private mIsAlphabetInit:Z

.field private mIsSetDimensions:Z

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

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

.field mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSeparatorHeight:F

.field private mSmallText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/content/Context;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 819
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 710
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 718
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 755
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 763
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 766
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 773
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 787
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 794
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 820
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 821
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 822
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 823
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 824
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 825
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 826
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->init()V

    .line 828
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/content/Context;III)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 837
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 710
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 718
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 755
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 763
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 766
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 773
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 787
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 794
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 838
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 839
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 840
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 841
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 842
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 843
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 844
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 845
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 846
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->init()V

    .line 847
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    .prologue
    .line 682
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
    .param p1, "x1"    # I

    .prologue
    .line 682
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
    .param p1, "x1"    # I

    .prologue
    .line 682
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;IF)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 682
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v0

    return v0
.end method

.method private adjustSeparatorHeight()V
    .locals 11

    .prologue
    const v10, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1068
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1070
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1072
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    .line 1063
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    .line 1073
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private allocateBgRectangle()V
    .locals 8

    .prologue
    .line 1575
    const/4 v1, 0x0

    .line 1576
    .local v1, "left":I
    const/4 v2, 0x0

    .line 1577
    .local v2, "right":I
    const/4 v3, 0x0

    .line 1578
    .local v3, "top":I
    const/4 v0, 0x0

    .line 1580
    .local v0, "bottom":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1581
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v2, v4, v5

    .line 1582
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v2, v4

    .line 1588
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 1589
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1594
    :goto_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    .line 1595
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v4

    .line 1596
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v2, v4

    .line 1597
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 1598
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1600
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 1602
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 1603
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 1612
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_7

    .line 1613
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    .line 1617
    :goto_3
    return-void

    .line 1584
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v2, v4, v5

    .line 1585
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    goto/16 :goto_0

    .line 1591
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 1604
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 1605
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    .line 1606
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v0, v3, v4

    goto :goto_2

    .line 1607
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_2

    .line 1608
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    .line 1609
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v3, v0, v4

    goto :goto_2

    .line 1615
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3
.end method

.method private calcDotPosition(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 23
    .param p1, "language"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;
    .param p2, "specialIndexCount"    # I
    .param p3, "startIndexPosition"    # I
    .param p4, "digitIndexCount"    # I

    .prologue
    .line 1147
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    sub-int v5, v20, p2

    .line 1148
    .local v5, "earlyLangCount":I
    const/16 v17, 0x0

    .line 1149
    .local v17, "numberOfMissingElements":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int v6, v20, p3

    .line 1150
    .local v6, "endIndexPosition":I
    const/4 v15, 0x0

    .line 1153
    .local v15, "isFullCountState":Z
    move/from16 v11, p3

    .local v11, "index":I
    :goto_0
    if-ge v11, v6, :cond_1

    .line 1154
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    sub-int v21, v11, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    aput-object v22, v20, v21

    .line 1153
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1212
    .local v2, "alphabetArrWithDots":[Ljava/lang/String;
    .local v8, "fullDotCount":I
    .local v9, "gapOfDot":I
    .local v13, "indexShift":I
    .local v16, "langCount":I
    .local v18, "remainDotCount":I
    :cond_0
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1326
    .end local v9    # "gapOfDot":I
    .end local v13    # "indexShift":I
    .end local v18    # "remainDotCount":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1161
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v8    # "fullDotCount":I
    .end local v16    # "langCount":I
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_d

    .line 1162
    sub-int v16, v5, p4

    .line 1163
    .restart local v16    # "langCount":I
    div-int/lit8 v20, v16, 0x2

    add-int/lit8 v8, v20, -0x1

    .line 1166
    .restart local v8    # "fullDotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v8, :cond_a

    if-nez v15, :cond_a

    .line 1167
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v2, v0, [Ljava/lang/String;

    .line 1169
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1170
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1171
    add-int/lit8 v17, v17, 0x1

    .line 1173
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    div-int v20, v16, v20

    add-int/lit8 v9, v20, 0x1

    .line 1176
    .restart local v9    # "gapOfDot":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_2

    .line 1177
    const/4 v9, 0x2

    .line 1179
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    .line 1181
    .restart local v18    # "remainDotCount":I
    const/4 v13, 0x0

    .line 1183
    .restart local v13    # "indexShift":I
    :cond_3
    if-eqz v18, :cond_0

    .line 1184
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1185
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    .line 1188
    :cond_4
    move/from16 v11, p3

    :goto_2
    if-ge v11, v6, :cond_5

    .line 1189
    sub-int v20, v11, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v11

    aput-object v21, v2, v20

    .line 1188
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1192
    :cond_5
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_3

    .line 1193
    mul-int v20, v9, v10

    mul-int v21, v13, v10

    sub-int v19, v20, v21

    .line 1195
    .local v19, "targetIndex":I
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 1196
    add-int/lit8 v20, p2, -0x1

    add-int v19, v19, v20

    .line 1199
    :cond_6
    if-lez v19, :cond_8

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 1200
    const-string v20, "."

    aput-object v20, v2, v19

    .line 1201
    add-int/lit8 v18, v18, -0x1

    .line 1192
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1202
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    if-lez v18, :cond_7

    .line 1203
    div-int/lit8 v20, v9, 0x2

    sub-int v20, v19, v20

    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1204
    div-int/lit8 v20, v9, 0x2

    sub-int v20, v19, v20

    const-string v21, "."

    aput-object v21, v2, v20

    .line 1205
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 1207
    :cond_9
    const/4 v13, 0x1

    goto :goto_4

    .line 1215
    .end local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v9    # "gapOfDot":I
    .end local v10    # "i":I
    .end local v13    # "indexShift":I
    .end local v18    # "remainDotCount":I
    .end local v19    # "targetIndex":I
    :cond_a
    const/4 v15, 0x1

    .line 1217
    const/4 v14, 0x0

    .line 1218
    .local v14, "isDotPosition":Z
    const/4 v4, 0x0

    .line 1221
    .local v4, "dotCount":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    sub-int v20, v20, p2

    sub-int v20, v20, p4

    packed-switch v20, :pswitch_data_0

    .line 1261
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p2

    sub-int v20, v20, p4

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1262
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1263
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1272
    :cond_b
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    if-lez v20, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    if-ltz v20, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    if-gez v20, :cond_12

    .line 1273
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1328
    .end local v4    # "dotCount":I
    .end local v8    # "fullDotCount":I
    .end local v14    # "isDotPosition":Z
    .end local v16    # "langCount":I
    :cond_d
    return-void

    .line 1223
    .restart local v4    # "dotCount":I
    .restart local v8    # "fullDotCount":I
    .restart local v14    # "isDotPosition":Z
    .restart local v16    # "langCount":I
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1224
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1225
    add-int/lit8 v17, v17, 0x1

    .line 1226
    goto :goto_5

    .line 1228
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1229
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    .line 1233
    :pswitch_2
    if-eqz p2, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 1234
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1235
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1236
    const/4 v14, 0x1

    .line 1248
    :goto_6
    add-int/lit8 v17, v17, 0x1

    .line 1249
    goto/16 :goto_5

    .line 1239
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1240
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1241
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 1245
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1246
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 1251
    :pswitch_3
    if-lez p4, :cond_10

    .line 1252
    add-int/lit8 p4, p4, -0x1

    .line 1253
    goto/16 :goto_5

    .line 1255
    :cond_10
    if-lez p2, :cond_b

    .line 1256
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_5

    .line 1265
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1266
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1267
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 1277
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v2, v0, [Ljava/lang/String;

    .line 1280
    .restart local v2    # "alphabetArrWithDots":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1281
    .local v3, "averageElementsEachDot":I
    const/4 v7, 0x0

    .line 1283
    .local v7, "extraMissingElements":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    if-lez v20, :cond_13

    .line 1284
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    div-int v3, v17, v20

    .line 1285
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    rem-int v7, v17, v20

    .line 1288
    :cond_13
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v11, v0, :cond_14

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v2, v11

    .line 1288
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1293
    :cond_14
    move/from16 v19, p2

    .line 1294
    .restart local v19    # "targetIndex":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v20, v0

    sub-int v12, v20, p4

    .line 1296
    .local v12, "indexCount":I
    move/from16 v11, p2

    :goto_8
    if-ge v11, v12, :cond_18

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, p4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1298
    if-nez v14, :cond_16

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    add-int v21, v19, p3

    aget-object v20, v20, v21

    aput-object v20, v2, v11

    .line 1301
    add-int/lit8 v19, v19, 0x1

    .line 1302
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_15

    .line 1303
    const/4 v14, 0x1

    .line 1296
    :cond_15
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1306
    :cond_16
    const-string v20, "."

    aput-object v20, v2, v11

    .line 1307
    add-int/lit8 v4, v4, 0x1

    .line 1309
    add-int v19, v19, v3

    .line 1311
    if-lez v7, :cond_17

    .line 1312
    add-int/lit8 v7, v7, -0x1

    .line 1313
    add-int/lit8 v19, v19, 0x1

    .line 1315
    :cond_17
    const/4 v14, 0x0

    goto :goto_9

    .line 1320
    :cond_18
    if-lez p4, :cond_19

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    aput-object v20, v2, v12

    .line 1324
    :cond_19
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_1

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1649
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1650
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1651
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v8, :cond_2

    .line 1652
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 1653
    .local v3, "startPosY":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v1, v8, v9

    .line 1654
    .local v1, "indexCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1658
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v8, :cond_0

    .line 1659
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v4, v8, v0

    .line 1660
    .local v4, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1665
    .local v2, "separatorHeight":F
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v9, v10, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1666
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1667
    .local v7, "width":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v7, v12

    sub-float v5, v8, v9

    .line 1670
    .local v5, "textPosX":F
    const-string v8, "."

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1671
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    sub-float/2addr v8, v9

    add-float v6, v3, v8

    .line 1672
    .local v6, "textPosY":F
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 1677
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    .end local v2    # "separatorHeight":F
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textPosX":F
    .end local v6    # "textPosY":F
    .end local v7    # "width":F
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v9, v0, v9

    aget-object v4, v8, v9

    .line 1663
    .restart local v4    # "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .restart local v2    # "separatorHeight":F
    goto :goto_1

    .line 1674
    .restart local v5    # "textPosX":F
    .restart local v7    # "width":F
    :cond_1
    mul-float v8, v2, v12

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    sub-float/2addr v8, v9

    add-float v6, v3, v8

    .line 1675
    .restart local v6    # "textPosY":F
    add-float/2addr v3, v2

    goto :goto_2

    .line 1680
    .end local v0    # "index":I
    .end local v1    # "indexCount":I
    .end local v2    # "separatorHeight":F
    .end local v3    # "startPosY":F
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textPosX":F
    .end local v6    # "textPosY":F
    .end local v7    # "width":F
    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 1625
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    :cond_1
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1007
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1008
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 1009
    .local v3, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1010
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1012
    .local v1, "b":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private getIndex(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 1404
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 1407
    .local v0, "firstLangCount":F
    int-to-float v3, p1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1408
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v2, v3, v0

    .line 1409
    .local v2, "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 1416
    .local v1, "index":I
    :goto_0
    if-gez v1, :cond_2

    .line 1417
    const/4 v1, 0x0

    .line 1422
    :cond_0
    :goto_1
    return v1

    .line 1411
    .end local v1    # "index":I
    .end local v2    # "indexTouchBoundary":F
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1412
    .restart local v2    # "indexTouchBoundary":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 1413
    .restart local v1    # "index":I
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_0

    .line 1418
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v3, :cond_0

    .line 1419
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_1
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 1436
    :cond_0
    const-string v0, ""

    .line 1457
    :goto_0
    return-object v0

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    .line 1438
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1450
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1451
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1454
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le v0, v1, :cond_8

    .line 1455
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 1439
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    .line 1440
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    .line 1442
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1444
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    .line 1445
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    .line 1457
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 950
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 951
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 952
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 954
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$502(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 961
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 962
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 964
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    .line 965
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 967
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_width:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 968
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_text_size:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    .line 969
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_margin_top:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 970
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_margin_horizontal:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 971
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_content_padding:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    .line 972
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_content_min_height:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    .line 973
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_additional_touch_boundary:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    .line 974
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    .line 975
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_index_scroll_preview_ypos_limit:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    .line 977
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 978
    .local v8, "outValue":Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 979
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    const v0, 0x1010433

    invoke-virtual {v10, v0, v8, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 980
    iget v0, v8, Landroid/util/TypedValue;->resourceId:I

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 982
    .local v7, "colorPrimary":I
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    .line 983
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    .line 984
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_thumb_padding:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    .line 985
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_indexbar_dot_separator_height:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    .line 986
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 988
    sget v0, Lcom/samsung/android/support/sesl/R$drawable;->sesl_index_bar_thumb_shape:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 990
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 992
    sget v0, Lcom/samsung/android/support/sesl/R$color;->sesl_index_bar_text_color:I

    invoke-static {v9, v0, v10}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 993
    sget v0, Lcom/samsung/android/support/sesl/R$color;->sesl_index_bar_background_tint_color:I

    invoke-static {v9, v0, v10}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    .line 994
    sget v0, Lcom/samsung/android/support/sesl/R$drawable;->sesl_index_bar_bg:I

    invoke-virtual {v9, v0, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 995
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 996
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 998
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 999
    return-void
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1468
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v2, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1087
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v1, v3, :cond_2

    .line 1093
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1096
    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v1, v3, :cond_3

    .line 1097
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1101
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1102
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1103
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1104
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1105
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1106
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1107
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1108
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1111
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1114
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 1116
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1118
    const/4 v0, 0x0

    .line 1121
    .local v0, "digitIndexCount":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->isUseDigitIndex()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1122
    const/4 v0, 0x1

    .line 1127
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1128
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0

    .line 1130
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1131
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0
.end method

.method private setBgRectParams()V
    .locals 2

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1642
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    .line 1493
    :goto_0
    return-void

    .line 1492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawEffect(F)V
    .locals 9
    .param p1, "effectPositionY"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1529
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1530
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    .line 1531
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1539
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 1540
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    mul-float/2addr v4, v8

    add-float v2, v3, v4

    .line 1541
    .local v2, "topDrawY":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    mul-float/2addr v4, v8

    sub-float v0, v3, v4

    .line 1548
    .local v0, "bottomDrawY":F
    :goto_0
    const v1, -0x39e3c400    # -9999.0f

    .line 1550
    .local v1, "drawY":F
    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    .line 1551
    move v1, p1

    .line 1560
    :cond_0
    :goto_1
    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    .line 1561
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    .line 1563
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1564
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    .line 1568
    .end local v0    # "bottomDrawY":F
    .end local v1    # "drawY":F
    .end local v2    # "topDrawY":F
    :cond_1
    return-void

    .line 1543
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float v2, v3, v4

    .line 1544
    .restart local v2    # "topDrawY":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float v0, v3, v4

    .restart local v0    # "bottomDrawY":F
    goto :goto_0

    .line 1552
    .restart local v1    # "drawY":F
    :cond_3
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_4

    .line 1554
    move v1, v2

    goto :goto_1

    .line 1555
    :cond_4
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_0

    .line 1557
    move v1, v0

    goto :goto_1
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 1502
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 1503
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_2

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->close()V

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    .line 1512
    :cond_2
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1358
    const-string v0, ""

    .line 1390
    :goto_0
    return-object v0

    .line 1361
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 1362
    const-string v0, ""

    goto :goto_0

    .line 1364
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_4

    .line 1366
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 1367
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_8

    .line 1369
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 1372
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 1374
    :cond_6
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1376
    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1379
    :cond_8
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v2, :cond_b

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    .line 1381
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 1383
    :cond_b
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 1386
    :cond_c
    const-string v0, ""

    goto/16 :goto_0

    .line 1388
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 1390
    :cond_e
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return v0
.end method

.method public resetSelectedIndex()V
    .locals 1

    .prologue
    .line 1480
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1481
    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 1023
    if-nez p1, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1026
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1028
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1029
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1033
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1034
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1036
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 1037
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    goto :goto_0
.end method

.method public setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    if-nez v0, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    .line 932
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 933
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 935
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 936
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    .line 937
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 938
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 941
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 942
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    goto :goto_0
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectText"    # Ljava/lang/String;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    .line 1522
    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 908
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 909
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 910
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 917
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 918
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 919
    return-void
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 893
    if-gtz p1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 897
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    .line 898
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 899
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
