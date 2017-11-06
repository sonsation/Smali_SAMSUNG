.class public Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;
.super Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
.source "SeslStandaloneActionMode.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;
    .param p3, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 55
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setDefaultShowAsAction(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 58
    iput-boolean p4, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mFocusable:Z

    .line 59
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mFinished:Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->sendAccessibilityEvent(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onPrepareActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z

    .line 101
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public onCloseSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 156
    return-void
.end method

.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onActionItemClicked(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->invalidate()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->showOverflowMenu()Z

    .line 161
    return-void
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return v2

    .line 151
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 95
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTitleOptionalHint(Z)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslStandaloneActionMode;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setTitleOptional(Z)V

    .line 85
    return-void
.end method
