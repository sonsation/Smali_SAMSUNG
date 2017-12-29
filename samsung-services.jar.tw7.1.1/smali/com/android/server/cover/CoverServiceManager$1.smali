.class Lcom/android/server/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverServiceManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 78
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 86
    .local v1, "added":Z
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 88
    .local v2, "changed":Z
    sget-boolean v8, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v8, :cond_2

    .line 89
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive : action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkgName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 91
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 92
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_4

    if-eqz v4, :cond_6

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 93
    :cond_4
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8, v5}, Lcom/android/server/cover/CoverServiceManager;->-wrap2(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v6

    .line 97
    .local v6, "success":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8}, Lcom/android/server/cover/CoverServiceManager;->-get4(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 98
    .local v3, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 99
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 75
    .end local v3    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v6    # "success":Z
    :cond_5
    return-void

    .line 95
    .restart local v4    # "extras":Landroid/os/Bundle;
    :cond_6
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8, v5}, Lcom/android/server/cover/CoverServiceManager;->-wrap0(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "success":Z
    goto :goto_0
.end method
