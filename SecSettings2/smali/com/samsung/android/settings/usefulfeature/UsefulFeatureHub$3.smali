.class Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;
.super Landroid/database/ContentObserver;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "smart_capture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "multi_window_setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "onInteractionConrol":I
    if-ne v0, v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 158
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
