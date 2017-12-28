.class public Lcom/android/launcher3/widget/controller/WidgetStateNormal;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetStateNormal.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;


# instance fields
.field private mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleBar"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected changeColorForBg(Z)V
    .locals 1
    .param p1, "whitBg"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->changeColorAndBackground(Z)V

    .line 99
    return-void
.end method

.method public changeStateToUninstall()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 121
    :cond_0
    return-void
.end method

.method public enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->enter(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V

    .line 58
    return-void
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->onStageExit()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->exit(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    .line 70
    :cond_1
    return-void
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 3
    .param p1, "titleBar"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " titlebar is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    check-cast p1, Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .end local p1    # "titleBar":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .line 89
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onConfigurationChangedIfNeeded()V

    .line 149
    return-void
.end method

.method protected onStageEnter()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onStageEnter()V

    .line 104
    return-void
.end method

.method protected onStageExit()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onStageExit()V

    .line 109
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onVoiceSearch(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0901c4

    .line 25
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->openFolder(Landroid/view/View;Z)V

    .line 28
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->clickNotAllowed(Landroid/view/View;)V

    .line 34
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "b"

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->startDrag(Landroid/view/View;)V

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocus()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setFocus()V

    .line 134
    return-void
.end method

.method public setFocusToSearchEditText()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setFocusToSearchEditText()V

    .line 139
    return-void
.end method

.method protected setHasInstallableApp(Z)V
    .locals 1
    .param p1, "has"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setHasInstallableApp(Z)V

    .line 94
    return-void
.end method

.method protected showPopupMenu()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->showPopupMenu()Z

    move-result v0

    return v0
.end method

.method public startContactUs()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 114
    return-void
.end method
