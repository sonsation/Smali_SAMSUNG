.class public Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack$FreeformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;
    }
.end annotation


# static fields
.field private static final HINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final freeformAreaAlpha:I

.field public final freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

.field public final hintTextAlpha:I

.field public final hintTextOrientation:I

.field private mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

.field private mHintAreaPaint:Landroid/graphics/Paint;

.field private mHintAreaRadius:F

.field private mHintStrokePaint:Landroid/graphics/Paint;

.field private mHintText:Ljava/lang/String;

.field private mHintTextAlpha:I

.field private mHintTextBounds:Landroid/graphics/Point;

.field private mHintTextPaint:Landroid/graphics/Paint;

.field private final mHintTextResId:I

.field private mTextFont:Landroid/graphics/Typeface;

.field private mTextPadding:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 634
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;

    const-string/jumbo v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;-><init>(Ljava/lang/String;)V

    .line 633
    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    .line 632
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 5
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I

    .prologue
    const/4 v2, 0x1

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    .line 660
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    .line 662
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    .line 667
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    .line 668
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x6647bbf3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 669
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 670
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    .line 671
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    .line 672
    iput p4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextResId:I

    .line 673
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    .line 674
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    const v1, 0x663bbfeb

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    .line 678
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    const v1, -0x33be4822    # -5.0782072E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 680
    const-string/jumbo v0, "sec-roboto-condensed"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextFont:Landroid/graphics/Typeface;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 666
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)V
    .locals 0
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;-><init>(IIII)V

    return-void
.end method

.method private calculateBound(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 802
    .local v1, "totalTextWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 803
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 804
    .local v0, "centerX":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 805
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 800
    .end local v0    # "centerX":I
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    .line 715
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 716
    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 712
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    .line 718
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    .line 719
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    .line 720
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 721
    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    .line 722
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 717
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 726
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-lez v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 728
    .local v8, "bounds":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v9, v0, v1

    .line 729
    .local v9, "x":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    .line 730
    .local v10, "y":I
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 731
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    if-ne v0, v11, :cond_1

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    int-to-float v1, v9

    int-to-float v2, v10

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 735
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    if-ne v0, v11, :cond_2

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 708
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_2
    return-void
.end method

.method public startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "areaAlpha"    # I
    .param p3, "hintAlpha"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animateAlpha"    # Z
    .param p7, "animateBounds"    # Z

    .prologue
    .line 746
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 747
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 751
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 753
    if-eqz p6, :cond_5

    .line 754
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 755
    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 754
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 755
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p2, v5, v6

    .line 754
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 756
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 757
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 758
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-eq v3, p3, :cond_2

    .line 764
    if-eqz p6, :cond_7

    .line 765
    sget-object v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 766
    const/4 v5, 0x1

    aput p3, v4, v5

    .line 765
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 767
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 768
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-le p3, v3, :cond_6

    .line 769
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 768
    :goto_1
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 778
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->calculateBound(Landroid/graphics/Rect;)V

    .line 779
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 780
    if-eqz p7, :cond_8

    .line 782
    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 781
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Rect;

    .line 783
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 781
    invoke-static {v3, v4, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 784
    .local v2, "prop":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 785
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 786
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 787
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "prop":Landroid/animation/PropertyValuesHolder;
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 794
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    .line 795
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 796
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 745
    :cond_4
    return-void

    .line 760
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 770
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 773
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    .line 774
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    goto :goto_2

    .line 789
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public update(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 689
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 690
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextResId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    .line 692
    const v2, 0x7f0d035c

    .line 691
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 693
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 694
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 695
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f0b0111

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 697
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    .line 698
    const v2, 0x7f0d0340

    .line 697
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 700
    const v1, 0x7f0d0341

    .line 699
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    .line 701
    const v1, 0x7f0d033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextPadding:I

    .line 702
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->calculateBound(Landroid/graphics/Rect;)V

    .line 688
    return-void
.end method
