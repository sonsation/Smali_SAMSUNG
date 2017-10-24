.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p2, "val$finisher"    # Ljava/lang/Runnable;
    .param p3, "val$statusBarVisible"    # Z
    .param p4, "val$navBarVisible"    # Z

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    move-object v6, p1

    .line 973
    check-cast v6, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 974
    .local v6, "view":Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1004
    return v1

    .line 976
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 977
    return v8

    .line 979
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    .line 980
    return v8

    .line 982
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get11(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 984
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 985
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iget-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1000
    :cond_0
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1001
    return v8

    .line 974
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
