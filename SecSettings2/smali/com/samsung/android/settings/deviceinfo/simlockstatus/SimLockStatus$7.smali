.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string/jumbo v2, "persist.sys.shutdown"

    const-string/jumbo v3, "SCSR"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "startIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
