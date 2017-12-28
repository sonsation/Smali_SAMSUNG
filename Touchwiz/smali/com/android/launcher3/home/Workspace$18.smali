.class Lcom/android/launcher3/home/Workspace$18;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->onConfigurationChangedIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$18;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2691
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$18;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/Workspace;->access$1502(Lcom/android/launcher3/home/Workspace;Z)Z

    .line 2692
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$18;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$1600(Lcom/android/launcher3/home/Workspace;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$18;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/Workspace;->access$1702(Lcom/android/launcher3/home/Workspace;I)I

    .line 2694
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$18;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$000(Lcom/android/launcher3/home/Workspace;)V

    .line 2696
    :cond_0
    return-void
.end method
