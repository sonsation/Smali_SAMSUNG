.class Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;
.super Ljava/lang/Object;
.source "ForceUpdateChecker.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/update/HttpGetDataTask$MethodResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->httpGetServerTime()V
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
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

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
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$000(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCurTime is null or empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$400(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$302(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;J)J

    .line 142
    invoke-static {}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVER_TIME onResult mServerTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$300(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;->access$600(Lcom/samsung/android/app/music/common/update/ForceUpdateChecker;)V

    goto :goto_0
.end method
