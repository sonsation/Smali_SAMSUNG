.class Lcom/android/server/policy/GlobalActions$9;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 4764
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 4775
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 4776
    :cond_0
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHasTelephony : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    return-void

    .line 4782
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4783
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 4789
    .local v0, "inAirplaneMode":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    .line 4790
    .local v1, "inAirplaneModeOn":Z
    :goto_1
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " inAirplaneModeOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    if-eq v0, v1, :cond_6

    .line 4792
    return-void

    .line 4783
    .end local v0    # "inAirplaneMode":Z
    .end local v1    # "inAirplaneModeOn":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "inAirplaneMode":Z
    goto :goto_0

    .line 4785
    .end local v0    # "inAirplaneMode":Z
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "inAirplaneMode":Z
    goto :goto_0

    .end local v0    # "inAirplaneMode":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "inAirplaneMode":Z
    goto :goto_0

    .line 4789
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "inAirplaneModeOn":Z
    goto :goto_1

    .line 4796
    :cond_6
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    invoke-static {v3, v2}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4798
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mAirplaneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "single"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4800
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4766
    :cond_7
    return-void

    .line 4796
    :cond_8
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method
