.class Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 459
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGridViewTouchListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 532
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 463
    :pswitch_0
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGridViewTouchListener - ACTION_MOVE_X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 475
    const-string/jumbo v2, ", ACTION_MOVE_Y: "

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 475
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get12(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v1

    .line 491
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 492
    const-wide/16 v2, 0x1f4

    .line 489
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 500
    :cond_1
    :goto_1
    return v4

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto :goto_1

    .line 512
    :pswitch_2
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 516
    return v4

    .line 521
    :pswitch_3
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 527
    :cond_3
    return v4

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
