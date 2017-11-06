.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RequestSpinnerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->touchDown()V
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
    .line 524
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 529
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f120324

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 530
    .local v1, "stationTxt":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 531
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f12035a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 532
    .local v0, "stationAnchor":Landroid/widget/ImageView;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$6;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 533
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    return-void
.end method
