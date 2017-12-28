.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;
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
    .line 206
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 209
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 214
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->finishSettingsActivity()V

    .line 216
    :cond_1
    const-string v3, "AppsScreenGridPanel"

    const-string v4, "ScreenGrid apply button clicked."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->applyScreenGrid()V

    .line 220
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 221
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    .line 222
    .local v1, "gridX":I
    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    .line 224
    .local v2, "gridY":I
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    .line 226
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$300(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
