.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandedNotificationPreview(Z)V

    .line 190
    :cond_0
    return-void
.end method
