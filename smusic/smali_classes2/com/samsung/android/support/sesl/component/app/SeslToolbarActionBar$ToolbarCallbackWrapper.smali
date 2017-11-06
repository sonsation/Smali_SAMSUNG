.class Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;
.super Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;
.source "SeslToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    .line 450
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 451
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 473
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    .line 467
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 468
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/view/SeslWindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 456
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setMenuPrepared()V

    .line 458
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mToolbarMenuPrepared:Z

    .line 460
    :cond_0
    return v0
.end method
