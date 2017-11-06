.class Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;
.super Ljava/lang/Thread;
.source "BigPondModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->downloadBigPondImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

.field final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->val$first:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "BigPondModel"

    const-string v1, "Thread start! downloadBigPondImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$100(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->val$first:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;->setNextImage(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$002(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;I)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$202(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$300(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$400(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->this$0:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    const-string v0, "BigPondModel"

    const-string v1, "Thread end! downloadBigPondImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method
