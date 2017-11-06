.class Lcom/google/android/exoplayer/DefaultLoadControl$1;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/DefaultLoadControl;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/DefaultLoadControl;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->this$0:Lcom/google/android/exoplayer/DefaultLoadControl;

    iput-boolean p2, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->val$loading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->this$0:Lcom/google/android/exoplayer/DefaultLoadControl;

    invoke-static {v0}, Lcom/google/android/exoplayer/DefaultLoadControl;->access$000(Lcom/google/android/exoplayer/DefaultLoadControl;)Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->val$loading:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;->onLoadingChanged(Z)V

    .line 256
    return-void
.end method
