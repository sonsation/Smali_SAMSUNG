.class Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;
.super Ljava/lang/Object;
.source "DeviceManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->access$000(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->showDeviceDeregisterDialog()V

    .line 66
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "426"

    const-string v2, "5291"

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    const v2, 0x7f0a042f

    .line 63
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
