.class Lcom/android/launcher3/home/OverviewPanel$4;
.super Ljava/lang/Object;
.source "OverviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/OverviewPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/OverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel$4;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel$4;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v0}, Lcom/android/launcher3/home/OverviewPanel;->access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel$4;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v0}, Lcom/android/launcher3/home/OverviewPanel;->access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isReorderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel$4;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v0}, Lcom/android/launcher3/home/OverviewPanel;->access$400(Lcom/android/launcher3/home/OverviewPanel;)V

    .line 145
    :cond_0
    return-void
.end method
