.class Lcom/android/launcher3/allapps/controller/AppsController$1;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->loggingPageCount()V

    .line 205
    :cond_0
    return-void
.end method
