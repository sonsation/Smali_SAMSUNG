.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1867
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I

    .line 1871
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    neg-int v4, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .line 1872
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v5, 0x359

    :goto_0
    move v2, v1

    move v3, v1

    .line 1871
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1873
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 1874
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    return-void

    .line 1872
    :cond_1
    const/16 v5, 0x22d

    goto :goto_0
.end method
