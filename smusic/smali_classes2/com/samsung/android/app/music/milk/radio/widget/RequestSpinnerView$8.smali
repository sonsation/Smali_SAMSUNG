.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RequestSpinnerView.java"


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
    .line 585
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 590
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 591
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f12035a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 592
    .local v0, "stationAnchor":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f120324

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 593
    .local v1, "stationTxt":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$8;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 594
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    return-void
.end method
