.class final Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "SeslToolbarActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    const/16 v3, 0x6c

    .line 548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
