.class final Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;
.super Landroid/os/Handler;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConventionalModeControlScheduler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ConventionalModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ConventionalModeController;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 592
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 594
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    monitor-enter v3

    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v2}, Lcom/android/server/wm/ConventionalModeController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 600
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, "pkg":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 602
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/ConventionalModeController;->-wrap1(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;I)V

    goto :goto_0

    .line 606
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "uid":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    new-instance v3, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v4, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v5}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;-><init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/server/wm/ConventionalModeController;->-set0(Lcom/android/server/wm/ConventionalModeController;Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    .line 609
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get1(Lcom/android/server/wm/ConventionalModeController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get10(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v3}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 612
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->resetView()V

    .line 613
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get10(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v3}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v4}, Lcom/android/server/wm/ConventionalModeController;->-wrap0(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/ConventionalModeController;->-set1(Lcom/android/server/wm/ConventionalModeController;Z)Z

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get1(Lcom/android/server/wm/ConventionalModeController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    return-void

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get10(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v3}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/ConventionalModeController;->-set1(Lcom/android/server/wm/ConventionalModeController;Z)Z

    .line 623
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2, v4}, Lcom/android/server/wm/ConventionalModeController;->-set2(Lcom/android/server/wm/ConventionalModeController;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 624
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2, v4}, Lcom/android/server/wm/ConventionalModeController;->-set3(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
