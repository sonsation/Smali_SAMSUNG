.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;
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
    .line 872
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 875
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "remote_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.remotecontrol_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FindMyMobileSettings"

    const-string/jumbo v2, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 880
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    sput-boolean v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-set1(I)I

    .line 884
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->-get1()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 874
    return-void
.end method
