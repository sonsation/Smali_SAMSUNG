.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    const-string/jumbo v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1381
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1410
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1411
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1407
    return-void
.end method

.method private isPending()Z
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1399
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1396
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->run()V

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1414
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1390
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1391
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1392
    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1393
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1388
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1427
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1426
    const/16 v4, 0xa

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap2(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1428
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1430
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1434
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1436
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1421
    return-void
.end method
