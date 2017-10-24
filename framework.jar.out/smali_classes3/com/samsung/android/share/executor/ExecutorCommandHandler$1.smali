.class Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;
.super Ljava/lang/Object;
.source "ExecutorCommandHandler.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/executor/ExecutorCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/executor/ExecutorCommandHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/executor/ExecutorCommandHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;->this$0:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;->this$0:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    check-cast p2, Landroid/content/Intent;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleCommand(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
