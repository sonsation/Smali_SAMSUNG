.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/remoteviews/MetadataParser;->loadAllMetadatas(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    const/16 v1, 0x1180

    invoke-static {p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set3(Z)Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setBouncerShowing(Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    const/16 v1, 0x1180

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setKeyguardShowing(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get15(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    goto :goto_0
.end method

.method public onOpenThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->onOpenThemeChanged()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateChildViewsLook()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->onRefreshCarrierInfo()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_INFINITY_WALLPAPER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get16(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;I)V

    :cond_0
    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;I)I

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set2(Z)Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get3()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setCoverShowing(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;->isRemoteViewsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;->resetPageKeyOrder()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method
