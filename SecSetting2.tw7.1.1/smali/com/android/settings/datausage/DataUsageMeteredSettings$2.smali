.class Lcom/android/settings/datausage/DataUsageMeteredSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageMeteredSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageMeteredSettings;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$2;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$2;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    invoke-static {v1, p1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->-wrap0(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method
