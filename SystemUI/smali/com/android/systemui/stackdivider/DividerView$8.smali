.class Lcom/android/systemui/stackdivider/DividerView$8;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowSettingChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$8$-void_run__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$focusedStackId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;
    .param p2, "val$focusedStackId"    # I

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$8;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView$8;->val$focusedStackId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerView$8_lambda$4()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$8;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->moveMultiWindowTasksToFullScreen()V

    .line 0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$8;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView$8;->val$focusedStackId:I

    new-instance v2, Lcom/android/systemui/stackdivider/DividerView$8$-void_run__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/DividerView$8$-void_run__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$8;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->moveMultiWindowTasksToFullScreen()V

    .line 2263
    :cond_0
    return-void
.end method
