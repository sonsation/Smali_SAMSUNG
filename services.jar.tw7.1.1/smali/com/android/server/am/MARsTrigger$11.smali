.class Lcom/android/server/am/MARsTrigger$11;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x63

    const/16 v7, 0x5f

    const/4 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MARsTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast received action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsDBManager;->checkUidColumnExist()V

    const-string/jumbo v3, "userid"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getSecureFolderUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setSecureFolderUserId(I)V

    :cond_0
    const-string v3, "MARsTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserActionReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsTrigger;->registerSecureFolderReceiver(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsDBManager;->insertPackagesAsUserToDB(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "MARsTrigger"

    const-string v4, "RuntimeException occurred in mUserActionReceiver!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v6, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getSecureFolderUserId()I

    move-result v3

    if-ne v2, v3, :cond_3

    const-string v3, "MARsTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserActionReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->unregisterSecureFolderReceiver()V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsDBManager;->deletePackagesAsUserInDB(I)V

    goto :goto_0

    :cond_3
    if-lt v2, v7, :cond_1

    if-gt v2, v8, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->unregisterDualAppReceiver()V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsDBManager;->deletePackagesAsUserInDB(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v6}, Lcom/android/server/am/MARsPolicyManager;->setDualAppUserId(I)V

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v7, :cond_1

    if-gt v2, v8, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsTrigger;->registerDualAppReceiver(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsDBManager;->insertPackagesAsUserToDB(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getDualAppUserId()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$11;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->setDualAppUserId(I)V

    goto/16 :goto_0
.end method
