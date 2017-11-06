.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentPosition"
.end annotation


# instance fields
.field mClockwise:Z

.field mIndex:I

.field mIsInit:Z

.field mSectorCenterRadAngle:D

.field mSectorRadius:F

.field mStartRadAngle:D

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/view/View;DIZDF[I)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "sectorCenterRadAngle"    # D
    .param p5, "index"    # I
    .param p6, "clockwise"    # Z
    .param p7, "startRadAngle"    # D
    .param p9, "radius"    # F
    .param p10, "reservedBlankSegmentIndices"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2617
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2606
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIsInit:Z

    .line 2618
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    .line 2619
    iput-wide p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorCenterRadAngle:D

    .line 2620
    iput p5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIndex:I

    .line 2622
    if-eqz p10, :cond_1

    .line 2623
    array-length v3, p10

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p10, v2

    .line 2624
    .local v0, "currReservedIndex":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIndex:I

    if-lt v4, v0, :cond_0

    .line 2625
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIndex:I

    .line 2623
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2630
    .end local v0    # "currReservedIndex":I
    :cond_1
    iput-boolean p6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mClockwise:Z

    .line 2631
    iput-wide p7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mStartRadAngle:D

    .line 2633
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 2634
    .local v1, "viewPadding":F
    sub-float v2, p9, v1

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorRadius:F

    .line 2635
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    .prologue
    .line 2639
    iget-boolean v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIsInit:Z

    if-eqz v10, :cond_0

    .line 2693
    :goto_0
    return-void

    .line 2642
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mIsInit:Z

    .line 2645
    iget-boolean v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mClockwise:Z

    if-eqz v10, :cond_1

    iget-wide v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorCenterRadAngle:D

    neg-double v10, v10

    :goto_1
    iget-wide v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mStartRadAngle:D

    add-double v4, v10, v12

    .line 2649
    .local v4, "radAngle":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-lez v10, :cond_2

    .line 2650
    :goto_2
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_3

    .line 2651
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v4, v10

    goto :goto_2

    .line 2645
    .end local v4    # "radAngle":D
    :cond_1
    iget-wide v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorCenterRadAngle:D

    goto :goto_1

    .line 2653
    .restart local v4    # "radAngle":D
    :cond_2
    const-wide/16 v10, 0x0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_3

    .line 2654
    :goto_3
    const-wide v10, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_3

    .line 2655
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, v10

    goto :goto_3

    .line 2659
    :cond_3
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-gez v10, :cond_4

    const-wide v10, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_6

    :cond_4
    const/4 v3, 0x1

    .line 2661
    .local v3, "isTxtConvex":Z
    :goto_4
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    instance-of v10, v10, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    if-eqz v10, :cond_5

    .line 2662
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    check-cast v10, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    invoke-virtual {v10, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setIsTextConvex(Z)V

    .line 2666
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorRadius:F

    mul-float v8, v10, v11

    .line 2667
    .local v8, "x":F
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mSectorRadius:F

    mul-float v9, v10, v11

    .line 2674
    .local v9, "y":F
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v10, v11

    .line 2675
    .local v7, "widthMidpt":F
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v2, v10, v11

    .line 2676
    .local v2, "heightMidpt":F
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    .line 2677
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v11, v12

    mul-float v1, v10, v11

    .line 2678
    .local v1, "heightCorrectToTangent":F
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    .line 2679
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v11, v12

    mul-float v6, v10, v11

    .line 2683
    .local v6, "widthCorrectToTangent":F
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 2684
    invoke-static {v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v12, v10

    add-float/2addr v10, v8

    sub-float/2addr v10, v7

    add-float/2addr v10, v6

    .line 2683
    invoke-virtual {v11, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 2686
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 2687
    invoke-static {v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v12, v10

    sub-float/2addr v10, v9

    sub-float/2addr v10, v2

    sub-float/2addr v10, v1

    .line 2686
    invoke-virtual {v11, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 2691
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    neg-float v11, v10

    if-eqz v3, :cond_7

    const/16 v10, 0x5a

    :goto_5
    int-to-float v10, v10

    add-float v0, v11, v10

    .line 2692
    .local v0, "degAngle":F
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;->mView:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_0

    .line 2659
    .end local v0    # "degAngle":F
    .end local v1    # "heightCorrectToTangent":F
    .end local v2    # "heightMidpt":F
    .end local v3    # "isTxtConvex":Z
    .end local v6    # "widthCorrectToTangent":F
    .end local v7    # "widthMidpt":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2691
    .restart local v1    # "heightCorrectToTangent":F
    .restart local v2    # "heightMidpt":F
    .restart local v3    # "isTxtConvex":Z
    .restart local v6    # "widthCorrectToTangent":F
    .restart local v7    # "widthMidpt":F
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    :cond_7
    const/16 v10, -0x5a

    goto :goto_5
.end method
