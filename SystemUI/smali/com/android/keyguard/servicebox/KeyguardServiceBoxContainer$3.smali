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
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 260
    invoke-static {p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set1(Z)Z

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 259
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 285
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setBouncerShowing(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setKeyguardShowing(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 233
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setCoverShowing(Z)V

    .line 290
    :cond_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 267
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    .line 227
    return-void
.end method
