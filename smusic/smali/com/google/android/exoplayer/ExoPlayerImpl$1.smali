.class Lcom/google/android/exoplayer/ExoPlayerImpl$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;->this$0:Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;->this$0:Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImpl;->handleEvent(Landroid/os/Message;)V

    .line 67
    return-void
.end method
