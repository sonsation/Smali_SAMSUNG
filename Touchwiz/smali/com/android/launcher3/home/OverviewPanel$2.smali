.class Lcom/android/launcher3/home/OverviewPanel$2;
.super Ljava/lang/Object;
.source "OverviewPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-static {}, Lcom/android/launcher3/Utilities;->checkHomeHiddenDir()I

    move-result v0

    .line 103
    .local v0, "extractType":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v2}, Lcom/android/launcher3/home/OverviewPanel;->access$200(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->startLCExtractor(I)V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v2}, Lcom/android/launcher3/home/OverviewPanel;->access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v1

    .line 109
    .local v1, "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->checkHiddenDirectory()V

    .line 112
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
