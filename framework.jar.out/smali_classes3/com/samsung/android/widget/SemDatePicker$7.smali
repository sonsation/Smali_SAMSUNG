.class Lcom/samsung/android/widget/SemDatePicker$7;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$7;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 569
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$7;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->-get9(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$7;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->setEditTextMode(Z)V

    .line 568
    :cond_0
    return-void
.end method
