.class Lcom/samsung/android/settings/DockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DockSettings;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/DockSettings$1;->this$0:Lcom/samsung/android/settings/DockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings$1;->this$0:Lcom/samsung/android/settings/DockSettings;

    invoke-static {v1, p2}, Lcom/samsung/android/settings/DockSettings;->-wrap2(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V

    .line 119
    :cond_0
    return-void
.end method