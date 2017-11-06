.class final Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V
    .locals 0

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2420
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 6
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2424
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v2

    .line 2425
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 2426
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_0
    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->findMenuPanel(Landroid/view/Menu;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v1

    .line 2427
    .local v1, "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 2428
    if-eqz v0, :cond_3

    .line 2429
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget v5, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->callOnPanelClosed(ILcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 2430
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    .line 2437
    :cond_1
    :goto_1
    return-void

    .line 2425
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    .restart local p1    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2434
    .end local p1    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v3, v1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 2441
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 2442
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2443
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2444
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2447
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
