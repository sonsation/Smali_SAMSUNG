.class public Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field private mAtmRemain:I

.field private mErrorState:I

.field mInputPin:Ljava/lang/String;

.field mInputPuk:Ljava/lang/String;

.field private mState:I

.field final synthetic this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttemptsRemaining()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return v0
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 929
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    iget v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return v0
.end method

.method public next(Ljava/lang/String;)V
    .locals 10
    .param p1, "mInput"    # Ljava/lang/String;

    .prologue
    const v9, 0x10002

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v1

    .line 940
    .local v1, "mCurState":I
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "next mCurState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    const/4 v3, 0x0

    .line 942
    .local v3, "taskInput":[Ljava/lang/String;
    const/16 v2, 0x63

    .line 943
    .local v2, "opCode":I
    packed-switch v1, :pswitch_data_0

    .line 974
    .end local v3    # "taskInput":[Ljava/lang/String;
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v5, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v5}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v2}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    .line 975
    .local v0, "asyncTask":Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;
    invoke-virtual {v0, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 938
    return-void

    .line 945
    .end local v0    # "asyncTask":Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;
    .restart local v3    # "taskInput":[Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    .line 946
    new-array v3, v8, [Ljava/lang/String;

    .line 947
    .local v3, "taskInput":[Ljava/lang/String;
    aput-object p1, v3, v7

    goto :goto_0

    .line 950
    .local v3, "taskInput":[Ljava/lang/String;
    :pswitch_2
    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    .line 951
    iput v9, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 955
    :pswitch_3
    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    .line 956
    const v4, 0x10003

    iput v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 960
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 961
    const/4 v2, 0x2

    .line 962
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 963
    .local v3, "taskInput":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 964
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    aput-object v4, v3, v8

    goto :goto_0

    .line 966
    .local v3, "taskInput":[Ljava/lang/String;
    :cond_1
    iput v9, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 967
    const v4, 0x10006

    iput v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public setAttemptsRemaining(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 925
    iput p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    .line 924
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 913
    iput p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 912
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 934
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    iput p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 933
    return-void
.end method

.method public setState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "remainCnt"    # I

    .prologue
    .line 894
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_1
    iput p2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    .line 897
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 899
    packed-switch p1, :pswitch_data_0

    .line 908
    const v0, 0x10005

    iput v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 893
    :goto_0
    return-void

    .line 902
    :pswitch_0
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 905
    :pswitch_1
    const v0, 0x10001

    iput v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
