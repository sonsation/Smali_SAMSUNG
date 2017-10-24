.class Lcom/android/systemui/settings/BrightnessDetail$1$3;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/settings/BrightnessDetail$1;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get2(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get3(Lcom/android/systemui/settings/BrightnessDetail$1;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get2(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 234
    .local v0, "newCheck":Z
    :goto_0
    const-string/jumbo v1, "BrightnessDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mQuickAccess set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get2(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "brightness_on_top"

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 237
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v4, "QS21"

    .line 239
    const-string/jumbo v5, "brightness_on_top"

    if-eqz v0, :cond_1

    const/16 v2, 0x3e8

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    :cond_2
    return-void

    .line 233
    .end local v0    # "newCheck":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "newCheck":Z
    goto :goto_0

    :cond_4
    move v1, v2

    .line 236
    goto :goto_1
.end method
