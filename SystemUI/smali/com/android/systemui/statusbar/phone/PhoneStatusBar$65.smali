.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onWorkChallengeUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 6933
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6936
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6937
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v1

    .line 6938
    .local v1, "pendingWorkRemoteInputView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6939
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 6940
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 6941
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 6942
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 6943
    .local v4, "viewParent":Landroid/view/ViewParent;
    instance-of v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 6945
    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 6946
    .local v3, "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 6947
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$65;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 6935
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v1    # "pendingWorkRemoteInputView":Landroid/view/View;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .end local v4    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    return-void

    .line 6972
    .restart local v0    # "p":Landroid/view/ViewParent;
    .restart local v1    # "pendingWorkRemoteInputView":Landroid/view/View;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method
