.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 1527
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1528
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1531
    :cond_0
    return-void
.end method
