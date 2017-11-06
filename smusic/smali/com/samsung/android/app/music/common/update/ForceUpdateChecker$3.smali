.class Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;
.super Ljava/lang/Object;
.source "ForceUpdateChecker.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/update/HttpGetDataTask$MethodResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->httpGetStoreData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STORE_DATA onResult mConfigGoogleUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mConfigGoogleUpdate is null or empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$700(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;->onCompleted(Ljava/lang/String;Z)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$700(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$3;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$1000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$ResultListener;->onCompleted(Ljava/lang/String;Z)V

    goto :goto_0
.end method
