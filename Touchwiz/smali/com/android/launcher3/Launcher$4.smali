.class Lcom/android/launcher3/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onPause()V
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
    .line 1022
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1024
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 1025
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->resetStartedSFinder()V

    .line 1028
    :cond_0
    return-void
.end method
