.class final Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get23(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set8(Lcom/android/systemui/volume/SecVolumeDialog;F)F

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set26(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get23(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-set13(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    return v4

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-set13(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get37(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get36(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get53()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get48(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isTaskBarTouched()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v2

    return v3

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "dispatchTouchEvent: dismissH"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v4

    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set27(Lcom/android/systemui/volume/SecVolumeDialog;F)F

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get51(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get16(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get50(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get49(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get53()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get25(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get21(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-set26(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set13(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dispatchTouchEvent: SWIPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get51(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get16(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get51(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get16(Lcom/android/systemui/volume/SecVolumeDialog;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V

    goto/16 :goto_0

    :cond_6
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get30(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set19(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get37(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get36(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v3

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
