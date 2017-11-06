.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;
.super Ljava/lang/Object;
.source "MilkSearchBaseResultFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->reload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

.field final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 283
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;"
    iget v0, p1, Landroid/os/Message;->what:I

    .line 288
    .local v0, "what":I
    if-lez v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reload : Thread Fail)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment is added Start internal Reload ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->val$keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;->val$keyword:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$400(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
