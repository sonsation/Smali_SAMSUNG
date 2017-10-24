.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;
.super Landroid/content/BroadcastReceiver;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseDLPpolicyReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "pckgName":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 402
    .local v4, "userHandle":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isMdmActivated(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MDM has activated DLP, doing nothing on package install/update/uninstall and returning !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 408
    :cond_1
    const/4 v3, 0x0

    .line 409
    .local v3, "pkgMetaData":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 410
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 411
    const-string/jumbo v5, "component_type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "pkgMetaData":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 417
    return-void

    .line 413
    .local v3, "pkgMetaData":Ljava/lang/String;
    :cond_2
    return-void

    .line 419
    .local v3, "pkgMetaData":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "dlp_agent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 421
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "EnterpriseDLPpolicyReciever>>> onReceive:  Unknown PackageName!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 424
    :cond_4
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v0, v5, v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 425
    .local v0, "bindSyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    aput-object p2, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    .end local v0    # "bindSyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "pckgName":Ljava/lang/String;
    .end local v3    # "pkgMetaData":Ljava/lang/String;
    .end local v4    # "userHandle":I
    :cond_5
    return-void
.end method
