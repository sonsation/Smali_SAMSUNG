.class Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonalPageEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "PersonalPageEnabler"

    const-string/jumbo v2, "com.samsung.settings.PERSONALPAGE_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method
