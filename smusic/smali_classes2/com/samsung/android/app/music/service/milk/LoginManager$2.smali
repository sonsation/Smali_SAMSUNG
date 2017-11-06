.class Lcom/samsung/android/app/music/service/milk/LoginManager$2;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/samsung/android/app/music/service/milk/SABundle;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

.field final synthetic val$appId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceLogin:Z

.field final synthetic val$requestId:I

.field final synthetic val$withLoadSetting:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LoginManager;ZIIZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$forceLogin:Z

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    iput p4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$appId:I

    iput-boolean p5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$withLoadSetting:Z

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    check-cast p1, Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->call(Lcom/samsung/android/app/music/service/milk/SABundle;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/samsung/android/app/music/service/milk/SABundle;)Lrx/Observable;
    .locals 11
    .param p1, "bundle"    # Lcom/samsung/android/app/music/service/milk/SABundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 243
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$forceLogin:Z

    if-eqz v1, :cond_2

    .line 245
    :cond_0
    const-string v1, "LoginManager"

    const-string/jumbo v2, "requestLogin call signin API"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$200(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$appId:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    iget-boolean v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$forceLogin:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$withLoadSetting:Z

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;IIZZ)V

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$appId:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    iget-boolean v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$withLoadSetting:Z

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 251
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v6

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/SABundle;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 252
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;->setOnApiInterceptCallback(Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 253
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;->doWork()V

    .line 267
    .end local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/AccountLoginWorker;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    return-object v1

    .line 255
    :cond_2
    const-string v1, "LoginManager"

    const-string/jumbo v2, "requestLogin userInfo is existed (re-use)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 258
    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    move v6, v4

    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->onApiHandled(IIILjava/lang/Object;I)V

    .line 259
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v10, "i":Landroid/content/Intent;
    const-string/jumbo v1, "responseData"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$appId:I

    iget v7, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;->val$requestId:I

    move v8, v3

    move v9, v4

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->invokeBroadcast(IIIILandroid/content/Intent;)V

    goto :goto_0
.end method
