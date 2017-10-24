.class Lcom/samsung/android/share/SShareBixby$2;
.super Ljava/lang/Object;
.source "SShareBixby.java"

# interfaces
.implements Lcom/samsung/android/share/executor/IExecutorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SShareBixby;->createExecutorCommandHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareBixby;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SShareBixby;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/share/executor/data/ParamFilling;)Z
    .locals 2
    .param p1, "pf"    # Lcom/samsung/android/share/executor/data/ParamFilling;

    .prologue
    .line 160
    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "onParamFillingReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 2
    .param p1, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "onRuleCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "onScreenStatesRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    const-string/jumbo v1, "ShareVia"

    invoke-direct {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/share/executor/data/State;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/share/executor/data/State;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ShareVia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v1, v1, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 174
    const-string/jumbo v2, "success"

    .line 173
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CrossShareVia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/Parameter;

    .line 177
    .local v0, "appNameParam":Lcom/samsung/android/share/executor/data/Parameter;
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-set0(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSlotAppName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get2(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get1(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get2(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    .line 184
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get1(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get1(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v5, :cond_3

    .line 189
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get1(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->startBixbySelection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 191
    return-void

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get2(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get2(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->startBixbySelection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 199
    return-void

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v5}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "appNameParam":Lcom/samsung/android/share/executor/data/Parameter;
    :cond_5
    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "Invalid State Command"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$2;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v1, v1, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 207
    const-string/jumbo v2, "failure"

    .line 206
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
