.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;
.super Ljava/lang/Object;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SecuredLockSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screenlock"

    const-string/jumbo v3, "AlreadyConfirmed"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LockscreenAndSecurity"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1123
    return-void

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-wrap1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;Ljava/lang/String;)V

    .line 1127
    return-void
.end method
