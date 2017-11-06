.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;
.super Ljava/lang/Object;
.source "RequestSpinnerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->touchUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 572
    .local v3, "val":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 573
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const v5, 0x7f12035a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 574
    .local v0, "stationAnchor":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const v5, 0x7f120324

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 576
    .local v2, "stationTxt":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 577
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$7;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v3

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 579
    .local v1, "stationSize":F
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 580
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    return-void
.end method
