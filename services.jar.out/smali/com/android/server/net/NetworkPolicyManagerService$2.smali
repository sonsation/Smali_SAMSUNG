.class Lcom/android/server/net/NetworkPolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 619
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "rrEnabled"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 620
    .local v1, "rrEnabledInCscChameleon":Z
    :goto_0
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: rrEnabledInCscChameleon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 622
    const-string/jumbo v4, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    .line 621
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get14()Z

    move-result v3

    if-eq v3, v1, :cond_1

    .line 625
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-set5(Z)Z

    .line 626
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get14()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 627
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-get15(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 618
    :cond_1
    :goto_2
    return-void

    .line 619
    .end local v0    # "cscAllowRRList":Ljava/lang/String;
    .end local v1    # "rrEnabledInCscChameleon":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "rrEnabledInCscChameleon":Z
    goto :goto_0

    .line 628
    .restart local v0    # "cscAllowRRList":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 631
    :cond_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    goto :goto_2
.end method
