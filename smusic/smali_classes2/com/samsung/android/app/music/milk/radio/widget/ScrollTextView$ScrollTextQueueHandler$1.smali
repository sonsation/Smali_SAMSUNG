.class Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postDelayed : after delay start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->start()V

    .line 178
    return-void
.end method
