.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;
.super Ljava/lang/Object;
.source "DeskPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView$Listener;

    .prologue
    .line 66
    return-void
.end method

.method public collapseAll(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public getDeskPanelView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationPositionX()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    .line 117
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 0
    .param p1, "changedRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expanded"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public onGroupsChanged()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public registerNotificationListener()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setNotificationPositionX(I)V
    .locals 0
    .param p1, "notificationPositionX"    # I

    .prologue
    .line 94
    return-void
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public toggleDeskQuickSettingView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 54
    return-void
.end method
