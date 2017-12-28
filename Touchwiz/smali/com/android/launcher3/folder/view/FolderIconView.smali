.class public Lcom/android/launcher3/folder/view/FolderIconView;
.super Lcom/android/launcher3/common/view/IconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;,
        Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final ALPHA_SCAN_AREA:I = 0x14

.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x12c

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final IMPROVE_PREVIEW_DENSITY_THRESHOLD:I = 0x190

.field private static final IMPROVE_PREVIEW_ENLARGE_RATIO:I = 0x2

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x122

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final INVALID_INT_VALUE:I = -0x1

.field public static final NUM_ITEMS_IN_PREVIEW:I = 0x9

.field private static final TAG:Ljava/lang/String; = "FolderIconView"

.field private static sNeedToImprovePreviewImage:Z

.field private static sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

.field private mFolderView:Lcom/android/launcher3/folder/view/FolderView;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMiniIconCol:I

.field private mMiniIconGap:F

.field private mOldBounds:Landroid/graphics/Rect;

.field private mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewFactorChanged:Z

.field private mPreviewIcons:Landroid/widget/ImageView;

.field private mPreviewLocalOffsetX:I

.field private mPreviewLocalOffsetY:I

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mPreviewPaddingRatio:F

.field private mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 143
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    .line 146
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 152
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 153
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    .line 166
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 143
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    .line 146
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 152
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 153
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    .line 161
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    .line 162
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderIconView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    return p1
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "reverse"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1088
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v4

    .line 1090
    .local v4, "finalParams":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 1091
    .local v6, "scale0":F
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v3, v0, v2

    .line 1092
    .local v3, "transX0":F
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    .line 1093
    .local v5, "transY0":F
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1095
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1096
    .local v7, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView$3;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;ZFLcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1110
    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$4;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/folder/view/FolderIconView$4;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1124
    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1125
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1126
    return-void

    .line 1095
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 12
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 739
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 740
    .local v0, "drawableSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v7

    .line 742
    .local v7, "totalSize":I
    new-instance v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v8, v11}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    .line 743
    .local v4, "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v8, v0, :cond_0

    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v8, v7, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v8, :cond_1

    .line 747
    :cond_0
    move v1, v0

    .line 748
    .local v1, "mLockedIntrinsicIconSize":I
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 749
    .local v6, "previewSize":I
    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPaddingRatio:F

    int-to-float v9, v6

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 750
    .local v5, "previewPadding":I
    mul-int/lit8 v8, v5, 0x2

    sub-int v2, v6, v8

    .line 751
    .local v2, "mLockedmAvailableSpaceInPreview":I
    int-to-float v8, v2

    int-to-float v9, v1

    div-float v3, v8, v9

    .line 753
    .local v3, "mLockedmBaselineIconScale":F
    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 754
    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 755
    iput v11, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    .line 756
    iput v3, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    .line 757
    iput-object p1, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 759
    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 761
    .end local v1    # "mLockedIntrinsicIconSize":I
    .end local v2    # "mLockedmAvailableSpaceInPreview":I
    .end local v3    # "mLockedmBaselineIconScale":F
    .end local v5    # "previewPadding":I
    .end local v6    # "previewSize":I
    :cond_1
    return-object v4
.end method

.method private computeMiniIconSize(I)V
    .locals 3
    .param p1, "itemCount"    # I

    .prologue
    .line 721
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 722
    .local v0, "oldIconCol":I
    if-lez p1, :cond_1

    .line 724
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:F

    .line 732
    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    if-eq v0, v1, :cond_0

    .line 733
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 735
    :cond_0
    return-void

    .line 728
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:F

    goto :goto_0
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 765
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/view/FolderIconView;->computeMiniIconSize(I)V

    .line 767
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v3, :cond_1

    .line 769
    :cond_0
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    .line 770
    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    .line 771
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 772
    .local v1, "previewPosY":I
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 773
    .local v2, "previewSize":I
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPaddingRatio:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 774
    .local v0, "previewPadding":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    .line 776
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    .line 777
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 779
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    .line 780
    add-int v3, v1, v0

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    .line 781
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    .line 782
    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    .line 783
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 785
    .end local v0    # "previewPadding":I
    .end local v1    # "previewPosY":I
    .end local v2    # "previewSize":I
    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 789
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 9
    .param p1, "index"    # I
    .param p2, "params"    # Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .prologue
    const/4 v8, 0x0

    .line 822
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v7, p1, v7

    sub-int v1, v6, v7

    .line 823
    .local v1, "posX":I
    :goto_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    div-int v2, p1, v6

    .line 824
    .local v2, "posY":I
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:F

    add-float/2addr v6, v7

    int-to-float v7, v1

    mul-float v4, v6, v7

    .line 825
    .local v4, "transX":F
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:F

    add-float/2addr v6, v7

    int-to-float v7, v2

    mul-float v5, v6, v7

    .line 826
    .local v5, "transY":F
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 827
    .local v3, "totalScale":F
    const/4 v0, 0x0

    .line 829
    .local v0, "overlayAlpha":I
    if-nez p2, :cond_1

    .line 830
    new-instance p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .end local p2    # "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    invoke-direct {p2, v4, v5, v3, v8}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    .line 837
    .restart local p2    # "params":Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    :goto_1
    return-object p2

    .line 822
    .end local v0    # "overlayAlpha":I
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    .end local v3    # "totalScale":F
    .end local v4    # "transX":F
    .end local v5    # "transY":F
    :cond_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v1, p1, v6

    goto :goto_0

    .line 832
    .restart local v0    # "overlayAlpha":I
    .restart local v1    # "posX":I
    .restart local v2    # "posY":I
    .restart local v3    # "totalScale":F
    .restart local v4    # "transX":F
    .restart local v5    # "transY":F
    :cond_1
    iput v4, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 833
    iput v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 834
    iput v3, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    .line 835
    iput v8, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_1
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v10, 0xff

    const/high16 v9, 0x40000000    # 2.0f

    .line 841
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 842
    iget-object v1, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 843
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 844
    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    add-int v3, v6, v7

    .line 845
    .local v3, "l":I
    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    add-int v5, v6, v7

    .line 847
    .local v5, "t":I
    sget-boolean v6, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    if-eqz v6, :cond_1

    .line 848
    invoke-virtual {p1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 850
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 851
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 852
    invoke-virtual {p1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 853
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v7, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 855
    invoke-virtual {p1, v0, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 856
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 877
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "l":I
    .end local v5    # "t":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 878
    return-void

    .line 858
    .restart local v3    # "l":I
    .restart local v5    # "t":I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 860
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v3

    .line 861
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v5

    .line 859
    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 862
    instance-of v6, v1, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v6, :cond_2

    move-object v2, v1

    .line 863
    check-cast v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 864
    .local v2, "fd":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBrightness()I

    move-result v4

    .line 865
    .local v4, "oldBrightness":I
    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    .line 866
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 867
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    .line 874
    .end local v2    # "fd":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .end local v4    # "oldBrightness":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 869
    :cond_2
    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v6, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 871
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 872
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private drawPreviews()V
    .locals 23

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 929
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 932
    :cond_1
    sget-boolean v20, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    move/from16 v20, v0

    mul-int/lit8 v5, v20, 0x2

    .line 933
    .local v5, "bitmapSize":I
    :goto_1
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 934
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 936
    .local v18, "previewCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v14

    .line 946
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 947
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 948
    .local v8, "f":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v17, 0x0

    .line 949
    .local v17, "pkg":Ljava/lang/String;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 950
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 953
    :cond_2
    if-eqz v8, :cond_a

    .line 954
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 957
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 958
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 969
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 975
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v7, 0x0

    .line 976
    .local v7, "drawDone":Z
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 977
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v9

    .line 978
    .local v9, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v20

    if-nez v20, :cond_4

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200fb

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 980
    .local v15, "lockedD":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/folder/view/FolderIconView;->computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    .line 981
    const/4 v7, 0x1

    .line 985
    .end local v9    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    .end local v15    # "lockedD":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v7, :cond_13

    .line 986
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 987
    .local v16, "nItemsInPreview":I
    add-int/lit8 v10, v16, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_13

    .line 988
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/common/view/IconView;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 989
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/view/IconView;

    .line 990
    .local v19, "v":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 991
    .restart local v8    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v8, :cond_b

    .line 992
    const-string v20, "FolderIconView"

    const-string v21, "ignore drawPreviewItem because IconInfo is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v8    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v19    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_5
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 932
    .end local v5    # "bitmapSize":I
    .end local v7    # "drawDone":Z
    .end local v10    # "i":I
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "nItemsInPreview":I
    .end local v18    # "previewCanvas":Landroid/graphics/Canvas;
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    goto/16 :goto_1

    .line 959
    .restart local v5    # "bitmapSize":I
    .restart local v8    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v17    # "pkg":Ljava/lang/String;
    .restart local v18    # "previewCanvas":Landroid/graphics/Canvas;
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 960
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v6

    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 962
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 963
    .local v11, "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 964
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 966
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 967
    .restart local v11    # "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 971
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_a
    const-string v20, "FolderIconView"

    const-string v21, "ignore computePreviewDrawingParams because IconInfo is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 995
    .end local v17    # "pkg":Ljava/lang/String;
    .restart local v7    # "drawDone":Z
    .restart local v10    # "i":I
    .restart local v16    # "nItemsInPreview":I
    .restart local v19    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_b
    const/16 v17, 0x0

    .line 996
    .restart local v17    # "pkg":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 997
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 999
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1000
    if-eqz v17, :cond_12

    .line 1001
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1002
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1013
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_6
    const/4 v4, 0x0

    .line 1014
    .local v4, "backupIconScale":F
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 1016
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    .line 1020
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v6, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    .line 1024
    const/16 v20, 0x0

    cmpl-float v20, v4, v20

    if-lez v20, :cond_5

    .line 1025
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    goto/16 :goto_5

    .line 1003
    .end local v4    # "backupIconScale":F
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_e
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1004
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v12

    .line 1005
    .local v12, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v20

    if-nez v20, :cond_f

    iget v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move/from16 v20, v0

    if-eqz v20, :cond_10

    :cond_f
    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 1006
    move-object v6, v12

    .line 1007
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 1005
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/16 v20, 0x0

    goto :goto_7

    .line 1008
    .end local v12    # "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 1011
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 1036
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "f":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "i":I
    .end local v16    # "nItemsInPreview":I
    .end local v17    # "pkg":Ljava/lang/String;
    .end local v19    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_13
    sget-object v20, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v20, v0

    sget-object v21, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/4 v13, 0x0

    .line 1038
    .local v13, "index":I
    :goto_8
    sget-object v20, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v20, v13

    .line 1039
    .local v3, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 1042
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v13    # "index":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->setShadow()V

    goto/16 :goto_0

    .line 1037
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    goto :goto_8
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 12
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p3, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p6, "iconDisplay"    # I

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 212
    .local v2, "error":Z
    const-class v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p2, v7}, Lcom/android/launcher3/folder/FolderInfo;->getBoundView(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 213
    .local v4, "icon":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v7, :cond_1

    .line 215
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 216
    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderInfo;->unbind()V

    .line 217
    const/4 v4, 0x0

    .line 220
    :cond_1
    if-eqz v4, :cond_3

    .line 221
    const-string v7, "FolderIconView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "already view bound. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 223
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 287
    :goto_0
    return-object v4

    .line 228
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040028

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 229
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_6

    move-object v4, v6

    .line 230
    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 234
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setClipToPadding(Z)V

    .line 235
    const v7, 0x7f11001e

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mTitleView:Landroid/widget/TextView;

    .line 236
    iget-object v7, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v7, 0x7f11001d

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    .line 240
    const v7, 0x7f11008e

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    .line 241
    const v7, 0x7f11008d

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mShadow:Landroid/widget/ImageView;

    .line 242
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconDisplay(I)V

    .line 244
    move-object v5, v4

    .line 245
    .local v5, "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    iget-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/launcher3/folder/view/FolderIconView$1;

    invoke-direct {v8, v5}, Lcom/android/launcher3/folder/view/FolderIconView$1;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 256
    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v7

    if-nez v7, :cond_5

    .line 257
    :cond_4
    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 260
    :cond_5
    invoke-virtual {v4, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->setTag(Ljava/lang/Object;)V

    .line 261
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 263
    iput-object p2, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    .line 264
    const v7, 0x7f090045

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {p0}, Lcom/android/launcher3/folder/view/FolderView;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    .line 268
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 270
    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderView;->setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 272
    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/folder/view/FolderView;->bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 273
    iput-object v3, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    .line 274
    invoke-direct {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 275
    new-instance v7, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v8

    invoke-direct {v7, p0, v4, v8}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/view/FolderIconView;I)V

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 276
    invoke-virtual {p2, v4}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    .line 278
    const v7, 0x7f110091

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    .line 279
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 281
    iget-wide v8, p2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    .line 282
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->changeTextColorForBg(Z)V

    goto/16 :goto_0

    .line 232
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v5    # "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid resid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    .restart local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v5    # "parentFolderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->changeTextColorForBg(Z)V

    goto/16 :goto_0
.end method

.method private getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "v"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 1081
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v1

    .line 1082
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1083
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1076
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    invoke-static {v0, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v1

    .line 1077
    .local v1, "iconDrawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    return-object v1
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "center"    # [I

    .prologue
    const/16 v3, 0x9

    const/high16 v6, 0x40000000    # 2.0f

    .line 807
    if-lt p1, v3, :cond_0

    const/4 v2, 0x4

    .line 808
    .local v2, "targetIndex":I
    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    .line 810
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 811
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 812
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v0, v3, v4

    .line 813
    .local v0, "offsetX":F
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v1, v3, v4

    .line 815
    .local v1, "offsetY":F
    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    .line 816
    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    .line 817
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    return v3

    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    .end local v2    # "targetIndex":I
    :cond_0
    move v2, p1

    .line 807
    goto :goto_0
.end method

.method private getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "plate"    # Landroid/graphics/Bitmap;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "recycle"    # Z

    .prologue
    const/4 v7, 0x0

    .line 899
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->needMaskedIcon(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 921
    .end local p2    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object p2

    .line 902
    .restart local p2    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 903
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 904
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 905
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 906
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 907
    .local v1, "maskScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2

    .line 908
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 909
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 910
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 915
    :goto_1
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 916
    invoke-virtual {v0, p2, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 918
    if-eqz p3, :cond_1

    .line 919
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p2, v3

    .line 921
    goto :goto_0

    .line 913
    :cond_2
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "v"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 1047
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1048
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 170
    sget-boolean v1, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 171
    :cond_0
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    .line 172
    .local v0, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v0, :cond_1

    .line 173
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    .line 174
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    .line 175
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    .line 176
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 177
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 178
    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_2

    .line 182
    sput-boolean v3, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    .line 187
    .end local v0    # "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    :cond_2
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 188
    new-instance v1, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPaddingRatio:F

    .line 191
    return-void
.end method

.method private final needMaskedIcon(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "plate"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 881
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v2

    .line 882
    .local v2, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 895
    :cond_0
    :goto_0
    return v7

    .line 886
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v3, v9, 0x2

    .line 887
    .local v3, "startX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v4, v9, 0x2

    .line 888
    .local v4, "startY":I
    move v5, v3

    .local v5, "x":I
    add-int/lit8 v0, v3, 0x14

    .local v0, "endX":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 889
    move v6, v4

    .local v6, "y":I
    add-int/lit8 v1, v4, 0x14

    .local v1, "endY":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 890
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    .line 889
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 888
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "endY":I
    .end local v6    # "y":I
    :cond_3
    move v7, v8

    .line 895
    goto :goto_0
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "animateView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 547
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    .line 548
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V
    .locals 24
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "animateView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p8, "postDropRunnable"    # Ljava/lang/Runnable;
    .param p9, "immediateAdd"    # Z

    .prologue
    .line 554
    const/16 v20, 0x0

    .line 555
    .local v20, "disallowFolderRingAnimation":Z
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v14, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v12, v14

    if-nez v5, :cond_1

    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v12, v14

    if-nez v5, :cond_6

    .line 557
    const/16 v20, 0x1

    .line 563
    :cond_0
    :goto_0
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 571
    :cond_1
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-eqz v5, :cond_2

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 574
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 575
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 580
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v5

    if-nez v5, :cond_8

    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    .line 582
    .local v4, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 583
    .local v6, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 584
    move-object/from16 v7, p3

    .line 585
    .local v7, "to":Landroid/graphics/Rect;
    if-nez v7, :cond_3

    .line 586
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "to":Landroid/graphics/Rect;
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 587
    .restart local v7    # "to":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleX()F

    move-result v22

    .line 588
    .local v22, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleY()F

    move-result v23

    .line 589
    .local v23, "scaleY":F
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    .line 590
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 593
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    .line 594
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    .line 598
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 600
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 601
    .local v19, "center":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getLocalCenterForIndex(I[I)F

    move-result v21

    .line 602
    .local v21, "scale":F
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 603
    const/4 v5, 0x1

    const/4 v9, 0x1

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 605
    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    aget v9, v19, v9

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 605
    invoke-virtual {v7, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 608
    const/16 v5, 0x9

    move/from16 v0, p5

    if-ge v0, v5, :cond_7

    const/high16 v8, 0x3f000000    # 0.5f

    .line 610
    .local v8, "finalAlpha":F
    :goto_1
    mul-float v11, v21, p4

    .line 611
    .local v11, "finalScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v13, 0x12c

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v17, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    move-object/from16 v18, p0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 615
    if-eqz p9, :cond_4

    .line 616
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 618
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 621
    new-instance v5, Lcom/android/launcher3/folder/view/FolderIconView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v5, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$2;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/Runnable;)V

    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    .end local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v8    # "finalAlpha":F
    .end local v11    # "finalScale":F
    .end local v19    # "center":[I
    .end local v21    # "scale":F
    :cond_5
    :goto_2
    return-void

    .line 558
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x66

    cmp-long v5, v12, v14

    if-nez v5, :cond_0

    .line 559
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v9, v9, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    if-ge v5, v9, :cond_0

    .line 560
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 608
    .restart local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .restart local v6    # "from":Landroid/graphics/Rect;
    .restart local v7    # "to":Landroid/graphics/Rect;
    .restart local v19    # "center":[I
    .restart local v21    # "scale":F
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 632
    .end local v4    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v19    # "center":[I
    .end local v21    # "scale":F
    :cond_8
    if-eqz p9, :cond_9

    .line 633
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 635
    :cond_9
    if-eqz p7, :cond_a

    .line 636
    const/4 v5, 0x0

    move-object/from16 v0, p7

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 639
    :cond_a
    if-eqz p6, :cond_b

    .line 640
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 643
    :cond_b
    if-eqz p8, :cond_5

    .line 644
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    .line 197
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 1419
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 1422
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 459
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    .line 460
    .local v0, "itemType":I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 463
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    .line 464
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 468
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 469
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 475
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    .line 480
    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 11
    .param p1, "prevGridIconInfo"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1392
    if-nez p1, :cond_0

    .line 1404
    :goto_0
    return-void

    .line 1396
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v2

    .line 1397
    .local v2, "preIconSize":I
    int-to-float v3, v2

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1399
    .local v1, "iconScale":F
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    .line 1400
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    .line 1401
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1399
    invoke-static {v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1403
    .local v0, "animator":Landroid/animation/Animator;
    invoke-super {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public applyStyle()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle(Z)V

    .line 293
    return-void
.end method

.method public applyStyle(Z)V
    .locals 4
    .param p1, "drawPreviews"    # Z

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 298
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    if-eq v2, v3, :cond_0

    .line 301
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    .line 303
    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 304
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 305
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 306
    .local v1, "topMargin":I
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 308
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 309
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 310
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 313
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "topMargin":I
    :cond_1
    if-eqz p1, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 316
    :cond_2
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1268
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    .line 1270
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 1271
    return-void
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 3

    .prologue
    .line 1162
    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public getFolderIconBitmapWithPlate()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1052
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v1, v9, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1054
    .local v1, "index":I
    if-lez v1, :cond_0

    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030001

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1060
    .local v4, "plate":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1061
    .local v8, "size":I
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1062
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1063
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1064
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1065
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1066
    .local v2, "matrix":Landroid/graphics/Matrix;
    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 1067
    .local v6, "scaleX":F
    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 1068
    .local v7, "scaleY":F
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1069
    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1070
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1071
    return-object v5

    .line 1057
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "plate":Landroid/graphics/Bitmap;
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v8    # "size":I
    :cond_1
    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v9, v1

    .restart local v4    # "plate":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1131
    sget-boolean v1, Lcom/android/launcher3/folder/view/FolderIconView;->sNeedToImprovePreviewImage:Z

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    invoke-static {v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 1133
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1137
    :goto_0
    return-object v0

    .line 1135
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getIconBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isGreyIcon()Z
    .locals 6

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1372
    .local v2, "item":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    .line 1373
    .local v3, "sUserManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    iget-object v0, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1374
    .local v0, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1375
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    .line 1376
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1377
    const/4 v4, 0x0

    .line 1381
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1262
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onAttachedToWindow()V

    .line 1263
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    .line 1264
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 483
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    .end local p1    # "dragInfo":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 486
    .restart local p1    # "dragInfo":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 487
    .local v1, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 488
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCell(II)V

    .line 489
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 490
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToAcceptState(I)V

    .line 491
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 492
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local p1    # "dragInfo":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V

    .line 542
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDragExit()V

    .line 538
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 496
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V

    .line 651
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dstRect"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v4, -0x66

    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v7, 0x0

    .line 656
    .local v7, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_3

    .line 657
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 658
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_0
    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 661
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 662
    new-instance v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .end local v7    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-direct {v7}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 663
    .restart local v7    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iput-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 664
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v0, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 667
    :cond_2
    if-nez v7, :cond_3

    .line 668
    move-object v7, p1

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->notifyDrop()V

    .line 672
    if-eqz v1, :cond_4

    .line 673
    iget-object v2, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 675
    :cond_4
    return-void
.end method

.method public onDrop(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 17
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 679
    .local v3, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v15, "dragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 681
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 682
    .local v14, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/4 v9, 0x0

    .line 683
    .local v9, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_3

    .line 684
    iget-object v3, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .end local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 685
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 686
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 688
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 689
    new-instance v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-direct {v9}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 690
    .restart local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iput-object v3, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 691
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 692
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 695
    :cond_1
    if-nez v9, :cond_2

    .line 696
    move-object v9, v14

    .line 698
    :cond_2
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 702
    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v12, "animateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 704
    .restart local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 707
    .end local v14    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressOnAdd(Z)V

    .line 708
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 709
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 712
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 713
    .local v13, "contentSize":I
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 714
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 715
    .restart local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v6, 0x3f800000    # 1.0f

    add-int v7, v13, v16

    iget-object v8, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    .line 713
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 718
    .end local v9    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_7
    return-void
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1168
    return-void
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 1178
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 1182
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1183
    return-void
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1173
    return-void
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    .line 1188
    .local v0, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 1192
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1193
    return-void
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "opened"    # Ljava/lang/Boolean;

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1224
    return-void
.end method

.method public onOrderingChanged(Z)V
    .locals 0
    .param p1, "alphabeticalOrder"    # Z

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    .line 1219
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    .line 321
    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const v4, 0x7f090045

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1200
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget v0, v1, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1201
    .local v0, "badge":I
    if-le v0, v5, :cond_1

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090078

    .line 1204
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1203
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1202
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1214
    .end local v0    # "badge":I
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1205
    .restart local v0    # "badge":I
    .restart local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    if-ne v0, v5, :cond_2

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1207
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090077

    .line 1208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1210
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->cancelLongPress()V

    move v0, v1

    .line 1257
    :cond_0
    :goto_0
    return v0

    .line 1234
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1237
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1238
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v0, v1

    .line 1239
    goto :goto_0

    .line 1242
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1244
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 1248
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setAlpha(F)V

    .line 1249
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1252
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 10
    .param p1, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p4, "srcView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F
    .param p7, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 503
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 504
    .local v8, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 505
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 504
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 509
    const/16 v0, 0x122

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 514
    .local v9, "parentView":Landroid/view/ViewGroup;
    if-eqz v9, :cond_0

    .line 515
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 516
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 520
    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 521
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "finalView"    # Landroid/view/View;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 524
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 525
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    .local v0, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 526
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    .line 531
    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 534
    .end local v0    # "animateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public refreshBadge()V
    .locals 1

    .prologue
    .line 1275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge(Z)V

    .line 1276
    return-void
.end method

.method public refreshBadge(Z)V
    .locals 27
    .param p1, "promiseStateChange"    # Z

    .prologue
    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v15

    .line 1282
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 1283
    .local v11, "icon":Landroid/view/View;
    instance-of v0, v11, Lcom/android/launcher3/common/view/IconView;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1284
    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    .end local v11    # "icon":Landroid/view/View;
    invoke-virtual {v11}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    goto :goto_0

    .line 1289
    .end local v15    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v20

    .line 1290
    .local v20, "tag":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1291
    .local v19, "sum":I
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v14, v20

    .line 1292
    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    .line 1297
    .local v14, "item":Lcom/android/launcher3/folder/FolderInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v7, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;>;"
    iget-object v0, v14, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1299
    .local v12, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1300
    .local v6, "cn":Landroid/content/ComponentName;
    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    .line 1301
    .local v21, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v5, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    move-object/from16 v0, v21

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1302
    .local v5, "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    if-eqz v6, :cond_2

    if-eqz v21, :cond_2

    .line 1303
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1304
    iget v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    move/from16 v23, v0

    add-int v19, v19, v23

    .line 1305
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1309
    .end local v5    # "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v12    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v21    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_3
    move/from16 v0, v19

    iput v0, v14, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1311
    .end local v7    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;>;"
    .end local v14    # "item":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1312
    const/16 v18, 0x0

    .line 1313
    .local v18, "shouldHideBadge":Z
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1314
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v10

    .line 1315
    .local v10, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v22

    if-nez v22, :cond_5

    .line 1316
    const/16 v18, 0x1

    .line 1319
    .end local v10    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v16

    .line 1320
    .local v16, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v17, 0x1

    .line 1321
    .local v17, "multiSelectMode":Z
    :goto_2
    if-nez p1, :cond_6

    if-nez v17, :cond_e

    :cond_6
    if-eqz v19, :cond_e

    if-nez v18, :cond_e

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/folder/FolderInfo;

    .line 1323
    .local v9, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget v2, v9, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    .line 1324
    .local v2, "badge":I
    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-lt v2, v0, :cond_7

    .line 1325
    const/16 v2, 0x3e7

    .line 1328
    :cond_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_c

    .line 1329
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090045

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090077

    .line 1331
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1329
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1339
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, "badgeCount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, "currentLanguage":Ljava/lang/String;
    const-string v22, "ar"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "fa"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1342
    :cond_8
    invoke-static {v4, v8}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1346
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getBadgeBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1348
    .local v3, "badgeBgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_9

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateBadgeLayout()V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    .end local v2    # "badge":I
    .end local v3    # "badgeBgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "badgeCount":Ljava/lang/String;
    .end local v8    # "currentLanguage":Ljava/lang/String;
    .end local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v16    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .end local v17    # "multiSelectMode":Z
    .end local v18    # "shouldHideBadge":Z
    :cond_a
    :goto_5
    return-void

    .line 1320
    .restart local v16    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .restart local v18    # "shouldHideBadge":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1333
    .restart local v2    # "badge":I
    .restart local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v17    # "multiSelectMode":Z
    :cond_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090045

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090078

    .line 1335
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1334
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1333
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1344
    .restart local v4    # "badgeCount":Ljava/lang/String;
    .restart local v8    # "currentLanguage":Ljava/lang/String;
    :cond_d
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 1354
    .end local v2    # "badge":I
    .end local v4    # "badgeCount":Ljava/lang/String;
    .end local v8    # "currentLanguage":Ljava/lang/String;
    .end local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/folder/FolderInfo;

    .line 1357
    .local v13, "info":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v17, :cond_10

    .line 1358
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090045

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v13, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f0900b4

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1360
    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1360
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v24, 0x7f09007e

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    .line 1362
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090045

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v13, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public refreshCountBadge(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1407
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1408
    if-lez p1, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshFolderIcon()V
    .locals 0

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 1386
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    .line 1387
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->invalidate()V

    .line 1388
    return-void
.end method

.method public setIconBackgroundColor(I)V
    .locals 2
    .param p1, "colorIndex"    # I

    .prologue
    .line 1145
    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1146
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1147
    :cond_0
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/theme/OpenThemeManager;->isKellyPreloadIconTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result p1

    .line 1154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1158
    :goto_1
    return-void

    .line 1151
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 1156
    :cond_3
    const-string v0, "FolderIconView"

    const-string v1, "setIconBackgroundColor : sSharedIconBgBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
