.class Lcom/android/launcher3/home/HomeController$5;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$hostView:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$layout:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$5;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$5;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$5;->val$layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$5;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$5;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$5;->val$layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->access$1500(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$5;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    .line 1366
    return-void
.end method
