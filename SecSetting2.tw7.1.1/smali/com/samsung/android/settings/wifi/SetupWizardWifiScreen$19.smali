.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->hideSoftKeysOnKeyboardDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
    .param p2, "val$activityRootView"    # Landroid/view/View;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    .line 959
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 960
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 961
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 962
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 964
    .local v0, "heightDiff":I
    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screen height change:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    int-to-double v4, v0

    int-to-double v6, v2

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 966
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$19;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/app/Activity;)V

    .line 958
    :cond_0
    return-void
.end method
