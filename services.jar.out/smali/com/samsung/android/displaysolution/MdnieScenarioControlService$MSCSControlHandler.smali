.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 879
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 885
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 884
    :goto_0
    return-void

    .line 887
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    goto :goto_0

    .line 892
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 898
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 906
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 910
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 914
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 918
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 922
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "LOW"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "MID"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "HIGH"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "OUT"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 942
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 946
    :pswitch_e
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 950
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    .line 954
    :pswitch_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    .line 958
    :pswitch_11
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    .line 962
    :pswitch_12
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    .line 966
    :pswitch_13
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
