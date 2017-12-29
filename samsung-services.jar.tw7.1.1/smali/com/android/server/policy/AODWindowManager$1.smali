.class Lcom/android/server/policy/AODWindowManager$1;
.super Ljava/lang/Object;
.source "AODWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/AODWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/AODWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/AODWindowManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/policy/AODWindowManager$1;->this$0:Lcom/android/server/policy/AODWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "aodIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/AODWindowManager$1;->this$0:Lcom/android/server/policy/AODWindowManager;

    iget v3, v3, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    packed-switch v3, :pswitch_data_0

    .line 103
    return-void

    .line 91
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 106
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .local v0, "aodIntent":Landroid/content/Intent;
    :goto_0
    sget-boolean v3, Lcom/android/server/policy/AODWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AODWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .line 110
    const-string v4, "com.samsung.android.app.aodservice"

    .line 111
    const-string v5, "com.samsung.android.app.aodservice.AODService"

    .line 109
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/android/server/policy/AODWindowManager$1;->this$0:Lcom/android/server/policy/AODWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 86
    .end local v0    # "aodIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 95
    .local v0, "aodIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 96
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .local v0, "aodIntent":Landroid/content/Intent;
    goto :goto_0

    .line 99
    .local v0, "aodIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "aodIntent":Landroid/content/Intent;
    move-object v0, v1

    .line 100
    .end local v1    # "aodIntent":Landroid/content/Intent;
    .local v0, "aodIntent":Landroid/content/Intent;
    goto :goto_0

    .line 113
    .end local v0    # "aodIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
