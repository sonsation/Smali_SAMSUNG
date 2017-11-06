.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$6;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 542
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 545
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 546
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    .line 549
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
