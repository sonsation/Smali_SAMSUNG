.class public Lcom/android/launcher3/widget/controller/WidgetStateUninstall;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetStateUninstall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTitleBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleBar"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method private uninstallWidget(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 91
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 92
    .local v0, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 95
    invoke-static {v3, v1}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v3, v1}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v3, v1, v4}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 103
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 99
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->slideIn(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 42
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x16

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 44
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 49
    if-eqz p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->slideOut(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 5
    .param p1, "titleBar"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " titlebar is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    .line 68
    const v2, 0x7f110116

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "backButton":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    .line 73
    .local v1, "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v1, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 77
    .end local v1    # "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110116

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->uninstallWidget(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public setFocus()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const v2, 0x7f110116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "backButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 118
    return-void
.end method
