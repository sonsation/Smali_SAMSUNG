.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 885
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 889
    .local v1, "userId":I
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent recevied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    if-ne v1, v5, :cond_2

    .line 892
    return-void

    .line 887
    .end local v1    # "userId":I
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "userId":I
    goto :goto_0

    .line 893
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 894
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/misc/tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap3(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 895
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 896
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "KeystoreReceiver: Unable to remove user keys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/misc/fips_tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap3(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 900
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 901
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "KeystoreReceiver: Unable to remove user keys from FipsTimaKeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_4
    :goto_1
    return-void

    .line 904
    :cond_5
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 905
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "KeystoreReceiver: Intent.ACTION_USER_ADDED received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap4(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 908
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v3, "defaultpackage"

    invoke-static {v2, v1, v3, v6}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 909
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "KeystoreReceiver: Error enabling TimaKeyStore on container creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 911
    :cond_6
    const-string/jumbo v2, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 912
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACTION_DEVICE_OWNER_CHANGED received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap4(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 915
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v3, "defaultpackage"

    invoke-static {v2, v1, v3, v6}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 916
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error enabling TimaKeyStore on container creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
