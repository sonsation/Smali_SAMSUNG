.class Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1133
    const/4 v2, 0x0

    .line 1134
    .local v2, "targetTop":I
    const/4 v0, 0x0

    .line 1135
    .local v0, "endTarget":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v3, :cond_0

    .line 1136
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1140
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 1141
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1142
    .local v1, "offset":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1143
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setArrowScale(F)V

    .line 1144
    return-void

    .line 1138
    .end local v1    # "offset":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v0, v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0
.end method
