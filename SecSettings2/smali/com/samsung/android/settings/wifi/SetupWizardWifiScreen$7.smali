.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->animateWiFiEffect(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get13(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get13(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;JZ)V

    .line 410
    return-void
.end method
