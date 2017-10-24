.class public Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMessagingTemplateViewWrapper.java"


# instance fields
.field private mContractedMessage:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 35
    return-void
.end method

.method private resolveViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    const v4, 0x102044c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "container":Landroid/view/View;
    instance-of v3, v1, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 44
    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v2, v1

    .line 45
    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout;

    .line 49
    .local v2, "messagingContainer":Lcom/android/internal/widget/MessagingLinearLayout;
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getContractedChildId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 39
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "messagingContainer":Lcom/android/internal/widget/MessagingLinearLayout;
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resolveViews()V

    .line 61
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 57
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 69
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 65
    :cond_0
    return-void
.end method
