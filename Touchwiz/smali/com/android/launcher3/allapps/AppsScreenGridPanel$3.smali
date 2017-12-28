.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->cancelChangeScreenGrid()V

    .line 239
    const-string v0, "AppsScreenGridPanel"

    const-string v1, "ScreenGrid cancel button clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .line 241
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
