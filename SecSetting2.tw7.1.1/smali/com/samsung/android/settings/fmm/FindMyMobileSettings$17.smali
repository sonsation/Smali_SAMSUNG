.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
    .param p2, "val$chkbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 890
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 891
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.remotecontrol_off"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "FindMyMobileSettings"

    const-string/jumbo v4, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0290

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-set1(I)I

    .line 896
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get1()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 899
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get7(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 900
    const-string/jumbo v5, "remote_control"

    .line 899
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 902
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 903
    sput-boolean v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    .line 889
    :cond_2
    return-void
.end method
