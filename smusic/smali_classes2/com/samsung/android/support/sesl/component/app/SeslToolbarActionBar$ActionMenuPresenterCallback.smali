.class final Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;
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
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 508
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->dismissPopupMenus()V

    .line 509
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 512
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 496
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
