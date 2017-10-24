.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2864
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v0, :cond_0

    .line 2865
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get28(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    .line 2867
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2866
    const v2, 0x50002

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2868
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2870
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2871
    return-void

    .line 2874
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap13(Lcom/android/server/connectivity/Tethering;)V

    .line 2877
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2862
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x50002

    .line 2881
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p0, v2}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    .line 2882
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StartingState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const/4 v0, 0x1

    .line 2884
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2919
    :pswitch_0
    const/4 v0, 0x0

    .line 2921
    :goto_0
    return v0

    .line 2888
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get28(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 2889
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2888
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2890
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v1, :cond_0

    .line 2891
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2893
    const/16 v2, 0xa

    .line 2892
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto :goto_0

    .line 2898
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x50078

    if-ne v1, v2, :cond_1

    .line 2899
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap16(Lcom/android/server/connectivity/Tethering;)V

    .line 2902
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2910
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2911
    const/4 v2, 0x5

    .line 2910
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto :goto_0

    .line 2914
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get28(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 2915
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2914
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2916
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2884
    :pswitch_data_0
    .packed-switch 0x50067
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
