.class Lcom/samsung/android/settings/ConnectionsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ConnectionsSettings;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "wificalling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 144
    if-eqz v1, :cond_1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap1(Lcom/samsung/android/settings/ConnectionsSettings;)Z

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap2(Lcom/samsung/android/settings/ConnectionsSettings;)V

    .line 141
    :cond_1
    return-void
.end method
