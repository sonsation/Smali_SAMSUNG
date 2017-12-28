.class Lcom/android/launcher3/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/launcher3/Launcher$1;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/launcher3/Launcher$1;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    .line 267
    .local v0, "ws":Lcom/android/launcher3/home/Workspace;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->buildPageHardwareLayers()V

    .line 270
    :cond_0
    return-void
.end method
