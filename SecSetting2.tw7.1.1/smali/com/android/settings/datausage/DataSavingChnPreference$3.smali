.class Lcom/android/settings/datausage/DataSavingChnPreference$3;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->updateChecked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSavingChnPreference;
    .param p2, "val$checked"    # Z

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-boolean p2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get2(Lcom/android/settings/datausage/DataSavingChnPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get2(Lcom/android/settings/datausage/DataSavingChnPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->val$checked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "opera_max_china_state"

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->val$checked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get1(Lcom/android/settings/datausage/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get1(Lcom/android/settings/datausage/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "mSwitchView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
