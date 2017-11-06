.class Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollTextEnd()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->stop()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->access$100(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)V

    .line 197
    const-string v0, "ScrollTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollTextEnd : next index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->access$200(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->access$300(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;Z)V

    .line 199
    return-void
.end method
