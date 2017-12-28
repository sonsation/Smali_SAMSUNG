.class Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher3/common/model/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;->this$0:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method
