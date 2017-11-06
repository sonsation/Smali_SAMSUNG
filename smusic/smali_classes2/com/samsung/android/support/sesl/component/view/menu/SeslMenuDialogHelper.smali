.class Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;
.super Ljava/lang/Object;
.source "SeslMenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# instance fields
.field private mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

.field private mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

.field private mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 44
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 167
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 168
    return-void
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 150
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->dismiss()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 156
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 146
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 93
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 94
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 97
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 101
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 124
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 107
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 109
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 111
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 113
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 124
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 130
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 53
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 56
    .local v3, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "builder":Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    new-instance v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    .line 61
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 62
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 63
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 66
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->create()Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    .line 80
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 83
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->show()V

    .line 90
    return-void

    .line 72
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    goto :goto_0
.end method
