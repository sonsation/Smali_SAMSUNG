.class Lcom/samsung/android/settings/bixby/EmSettingsManager$1;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bixby/EmSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)Z
    .locals 2
    .param p1, "pf"    # Lcom/samsung/android/app/executor/data/ParamFilling;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set5(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set4(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;->onParamFillingReceived()Z

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRuleCanceled() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;->onRuleCanceled()V

    .line 138
    :cond_0
    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    const-string/jumbo v3, "EmSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onScreenStatesRequested() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;->onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    move-result-object v3

    return-object v3

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 167
    const-string/jumbo v3, "EmSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onScreenStatesRequested() return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "ret":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .end local v1    # "ret":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "temp":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 174
    new-instance v1, Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/executor/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    .local v1, "ret":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    goto :goto_0

    .line 176
    .end local v1    # "ret":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->addState(Ljava/lang/String;)Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    goto :goto_0

    .line 179
    .end local v2    # "temp":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 181
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    return-object v4
.end method

.method public onStateReceived(Lcom/samsung/android/app/executor/data/State;)V
    .locals 3
    .param p1, "arg0"    # Lcom/samsung/android/app/executor/data/State;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/app/executor/data/State;)Lcom/samsung/android/app/executor/data/State;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set3(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;

    .line 154
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateReceived() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;->onStateReceived()V

    .line 157
    :cond_0
    return-void
.end method
