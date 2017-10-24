.class Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;
.super Ljava/lang/Object;
.source "ClearCoverNotificationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClickHandler"
.end annotation


# instance fields
.field mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
    .param p2, "action"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    .line 331
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;)Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$OnCoverOpenAction;

    .line 338
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    .line 339
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_notification_details:I

    const/16 v2, 0x8

    .line 340
    const/4 v3, 0x0

    .line 338
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 336
    return-void
.end method
