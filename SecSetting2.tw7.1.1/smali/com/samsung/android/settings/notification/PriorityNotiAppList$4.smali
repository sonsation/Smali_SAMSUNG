.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "PriorityAppNotificationsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    const-string/jumbo v1, "PriorityAppNotificationsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 606
    if-eqz v1, :cond_1

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 609
    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$4;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    :cond_1
    return-void
.end method
