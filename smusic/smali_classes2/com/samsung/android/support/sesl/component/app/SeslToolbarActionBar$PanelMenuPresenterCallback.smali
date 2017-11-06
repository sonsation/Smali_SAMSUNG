.class final Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "SeslToolbarActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 525
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 529
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 532
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
