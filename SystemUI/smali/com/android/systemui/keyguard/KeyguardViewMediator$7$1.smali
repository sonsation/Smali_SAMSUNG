.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;
.super Ljava/lang/Thread;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

.field final synthetic val$fIntent:Landroid/content/Intent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
    .param p2, "val$pIntent"    # Landroid/app/PendingIntent;
    .param p3, "val$notificationKey"    # Ljava/lang/String;
    .param p4, "val$fIntent"    # Landroid/content/Intent;

    .prologue
    .line 3065
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3069
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 3070
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3071
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 3073
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 3075
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$notificationKey:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 3076
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$fIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 3080
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3081
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3089
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$notificationKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3090
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notificationKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3091
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 3094
    .local v0, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3067
    .end local v0    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    :goto_2
    return-void

    .line 3078
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->val$pIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3084
    :catch_0
    move-exception v1

    .line 3085
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error onDismiss(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3086
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3087
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Cannot send pending intent due to : "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3095
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_2
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method
