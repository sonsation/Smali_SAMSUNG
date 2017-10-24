.class Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;
.super Ljava/lang/Object;
.source "ClearCoverNotificationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandRunnable"
.end annotation


# instance fields
.field sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 385
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 384
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v1

    .line 391
    const-string/jumbo v2, "statusbar"

    .line 390
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 392
    .local v0, "mStatusbarManager":Landroid/app/StatusBarManager;
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->requestExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V

    .line 389
    return-void
.end method
