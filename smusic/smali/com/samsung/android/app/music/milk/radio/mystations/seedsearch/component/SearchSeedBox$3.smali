.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;
.super Ljava/lang/Object;
.source "SearchSeedBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->expandSearchBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

.field final synthetic val$homeLayoutwidth:F

.field final synthetic val$searchBoxLeftmargin:F

.field final synthetic val$seedboxTopmargin:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;FFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$homeLayoutwidth:F

    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$seedboxTopmargin:F

    iput p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$searchBoxLeftmargin:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 213
    .local v2, "value":F
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .line 215
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    .local v1, "searchBoxparams":Landroid/view/ViewGroup$MarginLayoutParams;
    cmpl-float v3, v2, v5

    if-nez v3, :cond_0

    .line 217
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    sub-float v4, v5, v2

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 231
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$seedboxTopmargin:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$searchBoxLeftmargin:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 233
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void

    .line 227
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->val$homeLayoutwidth:F

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
