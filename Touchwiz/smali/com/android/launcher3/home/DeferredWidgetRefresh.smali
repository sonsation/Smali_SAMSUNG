.class Lcom/android/launcher3/home/DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "DeferredWidgetRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private final mHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;Lcom/android/launcher3/home/LauncherAppWidgetHost;)V
    .locals 4
    .param p1, "homeController"    # Lcom/android/launcher3/home/HomeController;
    .param p3, "host"    # Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/HomeController;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher3/home/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 38
    iput-object p2, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mRefreshPending:Z

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->addProviderChangeListener(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 51
    iget-object v3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->removeProviderChangeListener(Ljava/lang/Runnable;)V

    .line 52
    iget-object v3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-boolean v3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v3, :cond_1

    .line 71
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mRefreshPending:Z

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 61
    .local v1, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v4, v4, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v4, :cond_2

    .line 62
    iget-object v2, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .line 63
    .local v2, "view":Lcom/android/launcher3/home/PendingAppWidgetHostView;
    iget-object v4, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 65
    invoke-virtual {v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 67
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 68
    iget-object v4, p0, Lcom/android/launcher3/home/DeferredWidgetRefresh;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto :goto_0
.end method
