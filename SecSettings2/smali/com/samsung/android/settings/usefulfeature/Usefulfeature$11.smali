.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 544
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 546
    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    .line 545
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 547
    .local v0, "smartStayCheck":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 549
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f0b1952

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 543
    .end local v0    # "smartStayCheck":Z
    :cond_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "smartStayCheck":Z
    goto :goto_0

    .line 550
    :cond_2
    const v1, 0x7f0b0423

    goto :goto_1
.end method
