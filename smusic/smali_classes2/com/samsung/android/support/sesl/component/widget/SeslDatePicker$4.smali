.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 490
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->setEditTextMode(Z)V

    .line 493
    :cond_0
    return-void
.end method
