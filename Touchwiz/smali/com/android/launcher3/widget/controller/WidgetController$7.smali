.class Lcom/android/launcher3/widget/controller/WidgetController$7;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$7;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 530
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 531
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$7;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1500(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 532
    .local v3, "screenHeight":I
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$7;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1500(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 533
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 534
    .local v0, "heightDiff":I
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$7;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1500(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 535
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v3, v0

    if-eq v4, v5, :cond_0

    .line 536
    sub-int v4, v3, v0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 537
    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController$7;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v4}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1500(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :cond_0
    return-void
.end method
