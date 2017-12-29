.class Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;
.super Landroid/database/ContentObserver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForceImmersiveModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8094
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    .line 8095
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8094
    return-void
.end method


# virtual methods
.method observe()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8099
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8100
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "navigationbar_hide_bar"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8101
    const-string v3, "navigationbar_hide_bar_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8103
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigationbar_hide_bar"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-static {v3, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set12(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    .line 8104
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateForceImmersiveMode()V

    .line 8106
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isDomesticOtaStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8107
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigationbar_hide_bar_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8098
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 8103
    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 8112
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateForceImmersiveMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 8115
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 8111
    return-void

    .line 8112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
