.class Lcom/android/server/am/ActivityManagerService$CooldownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CooldownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 16916
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 16919
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 16920
    :cond_0
    return-void

    .line 16923
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16924
    const/4 v2, -0x1

    .line 16925
    .local v2, "siopLevel":I
    const/4 v0, -0x1

    .line 16926
    .local v0, "battOverheatLevel":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 16927
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 16928
    const-string/jumbo v3, "check_cooldown_level"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 16929
    if-eq v2, v6, :cond_2

    .line 16930
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->-set6(Lcom/android/server/am/ActivityManagerService;I)I

    .line 16932
    :cond_2
    const-string/jumbo v3, "batt_temp_level"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 16933
    if-eq v0, v6, :cond_3

    .line 16934
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, v0}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;I)I

    .line 16936
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "overheat_id"

    const v5, 0x10406d2

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerService;->-set5(Lcom/android/server/am/ActivityManagerService;I)I

    .line 16937
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get9(Lcom/android/server/am/ActivityManagerService;)I

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 16938
    :cond_4
    const-string/jumbo v3, "check_cooldown_list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16939
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 16940
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "check_cooldown_list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v4, v3}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 16943
    :cond_5
    const-string/jumbo v3, "checkingSIOP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VZWLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->-get9(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", OverheatLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$CooldownReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16918
    .end local v0    # "battOverheatLevel":I
    .end local v1    # "mExtras":Landroid/os/Bundle;
    .end local v2    # "siopLevel":I
    :cond_6
    return-void
.end method
