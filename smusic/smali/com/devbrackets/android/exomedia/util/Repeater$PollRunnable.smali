.class Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/util/Repeater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/util/Repeater;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/util/Repeater;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/util/Repeater;Lcom/devbrackets/android/exomedia/util/Repeater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;
    .param p2, "x1"    # Lcom/devbrackets/android/exomedia/util/Repeater$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/Repeater;)V

    return-void
.end method


# virtual methods
.method public performPoll()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$500(Lcom/devbrackets/android/exomedia/util/Repeater;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$300(Lcom/devbrackets/android/exomedia/util/Repeater;)Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    move-result-object v1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v2}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$400(Lcom/devbrackets/android/exomedia/util/Repeater;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$100(Lcom/devbrackets/android/exomedia/util/Repeater;)Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$100(Lcom/devbrackets/android/exomedia/util/Repeater;)Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;->onRepeat()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->access$200(Lcom/devbrackets/android/exomedia/util/Repeater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->performPoll()V

    .line 143
    :cond_1
    return-void
.end method
