.class Lcom/android/launcher3/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 1897
    iput-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    .prologue
    .line 1901
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher$7;->mStarted:Z

    if-eqz v2, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1902
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1904
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Launcher$7;->mStarted:Z

    .line 1910
    iget-object v2, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v1

    .line 1911
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->access$200(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1912
    move-object v0, p0

    .line 1913
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnDrawListener;
    new-instance v2, Lcom/android/launcher3/Launcher$7$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/Launcher$7$1;-><init>(Lcom/android/launcher3/Launcher$7;Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
