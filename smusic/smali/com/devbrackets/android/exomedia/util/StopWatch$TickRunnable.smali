.class Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;
.super Ljava/lang/Object;
.source "StopWatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TickRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/util/StopWatch;Lcom/devbrackets/android/exomedia/util/StopWatch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;
    .param p2, "x1"    # Lcom/devbrackets/android/exomedia/util/StopWatch$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V

    return-void
.end method


# virtual methods
.method public performTick()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$800(Lcom/devbrackets/android/exomedia/util/StopWatch;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$600(Lcom/devbrackets/android/exomedia/util/StopWatch;)Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    move-result-object v1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v2}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$700(Lcom/devbrackets/android/exomedia/util/StopWatch;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$200(Lcom/devbrackets/android/exomedia/util/StopWatch;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$102(Lcom/devbrackets/android/exomedia/util/StopWatch;J)J

    .line 194
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$300(Lcom/devbrackets/android/exomedia/util/StopWatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->performTick()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$400(Lcom/devbrackets/android/exomedia/util/StopWatch;)Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$400(Lcom/devbrackets/android/exomedia/util/StopWatch;)Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$100(Lcom/devbrackets/android/exomedia/util/StopWatch;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;->access$500(Lcom/devbrackets/android/exomedia/util/StopWatch;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;->onStopWatchTick(J)V

    .line 201
    :cond_1
    return-void
.end method
