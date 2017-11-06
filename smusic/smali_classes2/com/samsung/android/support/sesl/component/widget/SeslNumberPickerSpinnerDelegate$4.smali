.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1849
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1850
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$502(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 1894
    :goto_0
    return-void

    .line 1854
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$602(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 1855
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$702(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 1856
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    .line 1857
    .local v0, "ampmDistance":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    .line 1858
    .local v1, "backwardDistance":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    .line 1859
    .local v2, "forwardDistance":I
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1860
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 1861
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;I)V

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1856
    .end local v0    # "ampmDistance":I
    .end local v1    # "backwardDistance":I
    .end local v2    # "forwardDistance":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    neg-int v0, v3

    goto :goto_1

    .line 1857
    .restart local v0    # "ampmDistance":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    mul-int/lit8 v1, v3, 0x5

    goto :goto_2

    .line 1858
    .restart local v1    # "backwardDistance":I
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x401599999999999aL    # 5.4

    mul-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_3
.end method
