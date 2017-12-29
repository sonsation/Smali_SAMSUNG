.class Lcom/android/server/policy/SamsungPhoneWindowManager$10;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$10;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 946
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    :try_start_0
    const-string v3, "kioskmode"

    .line 949
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v2

    .line 951
    .local v2, "kioskService":Lcom/samsung/android/knox/kiosk/IKioskMode;
    if-eqz v2, :cond_0

    .line 952
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$10;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-interface {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set2(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;

    .line 953
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "Blocked hw keys cache is being refreshed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .end local v2    # "kioskService":Lcom/samsung/android/knox/kiosk/IKioskMode;
    :cond_0
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
