.class Lcom/android/systemui/settings/BrightnessDetail$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "4006"

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "4006"

    if-eqz v0, :cond_3

    :goto_2
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/settings/BrightnessDetail$Callback;->setAutoBrightness(Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get1(Lcom/android/systemui/settings/BrightnessDetail$1;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
