.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;
.super Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeslCompatWindowCallbackBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .line 2259
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 2260
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2265
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2264
    :goto_0
    return v0

    .line 2265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2270
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .line 2271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2270
    :goto_0
    return v0

    .line 2271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2288
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2276
    if-nez p1, :cond_0

    instance-of v0, p2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v0, :cond_0

    .line 2279
    const/4 v0, 0x0

    .line 2281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2319
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2320
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2321
    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2326
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2328
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 2292
    instance-of v2, p3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-object v1, v2

    .line 2294
    .local v1, "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :goto_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    move v0, v3

    .line 2314
    :cond_0
    :goto_1
    return v0

    .line 2292
    .end local v1    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2304
    .restart local v1    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_2
    if-eqz v1, :cond_3

    .line 2305
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setOverrideVisibleItems(Z)V

    .line 2308
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 2310
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 2311
    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setOverrideVisibleItems(Z)V

    goto :goto_1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 2337
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2346
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2350
    .local v0, "callbackWrapper":Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$SeslCompatWindowCallbackBase;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .line 2351
    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->startSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    move-result-object v1

    .line 2353
    .local v1, "supportActionMode":Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    if-eqz v1, :cond_0

    .line 2355
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    .line 2357
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
