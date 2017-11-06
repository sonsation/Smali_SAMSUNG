.class Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 72
    .local v0, "res":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$000(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$100(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    .line 79
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignBlurBackground ignored, req = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], mFixedBackgroundRequest = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .line 76
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$400(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], mLastRequest = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$1;->this$0:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .line 77
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->access$500(Lcom/samsung/android/app/music/common/util/BlurBackgroundController;)Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
