.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 672
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 679
    .local v0, "toolType":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->isAirViewFingerEnabled(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 681
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->isAirViewStylusEnabled(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 683
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 704
    :cond_2
    :goto_0
    :pswitch_0
    return v1

    .line 685
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 686
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_3
    move v1, v2

    .line 688
    goto :goto_0

    .line 691
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 692
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$3100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 693
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2902(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_4
    move v1, v2

    .line 695
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 698
    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
