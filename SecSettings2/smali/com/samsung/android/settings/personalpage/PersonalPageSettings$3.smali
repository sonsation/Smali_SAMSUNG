.class Lcom/samsung/android/settings/personalpage/PersonalPageSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "PersonalPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->finish()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v1, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->-wrap1(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;I)V

    goto :goto_0
.end method
