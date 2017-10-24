.class public Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxLayoutChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 2963
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2964
    .local v0, "mAction":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2965
    .local v1, "mBundle":Landroid/os/Bundle;
    const/4 v2, -0x1

    .line 2967
    .local v2, "mPersonaID":I
    if-eqz v0, :cond_0

    const-string/jumbo v5, "com.sec.knox.action.KNOX_LAYOUT_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2968
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Received com.sec.knox.action.KNOX_LAYOUT_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    const-string/jumbo v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2972
    const-string/jumbo v5, "persona"

    .line 2971
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2973
    .local v4, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v3

    .line 2975
    .local v3, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v3, :cond_0

    iget-boolean v5, v3, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v5, :cond_1

    .line 2962
    .end local v3    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v4    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    :goto_0
    return-void

    .line 2976
    .restart local v3    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v4    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Persona ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , isLightWeightContainer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const-string/jumbo v5, "action"

    const-string/jumbo v6, "RequestUpdateBadgeCount"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    const-string/jumbo v5, "userid"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2979
    iget-object v5, p0, Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/RCPManagerService;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method
