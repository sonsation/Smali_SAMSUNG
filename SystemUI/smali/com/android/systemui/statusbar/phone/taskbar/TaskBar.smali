.class public Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;
.super Ljava/lang/Object;
.source "TaskBar.java"


# virtual methods
.method public addTaskBar(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 39
    return-void
.end method

.method public clearTaskBar()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public getDeskContextMenuType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getDeskKeyguardStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskNotificationIconsArea()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskQuickSettingViewToggleButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskStatusBarContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public showDeskContextMenu(IFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "rawX"    # F
    .param p3, "rawY"    # F

    .prologue
    .line 88
    return-void
.end method
