.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;
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
    .line 651
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 654
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 656
    const-string/jumbo v3, "fingerprint_gesture_quick"

    .line 655
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 657
    .local v0, "fingerSensorGestureCheck":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const-string/jumbo v1, ""

    .line 659
    .local v1, "summary":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 660
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f0b1d08

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 669
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 670
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    .end local v0    # "fingerSensorGestureCheck":Z
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    return-void

    .line 655
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fingerSensorGestureCheck":Z
    goto :goto_0

    .line 662
    .restart local v1    # "summary":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get3()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap7(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f0b0503

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f0b0504

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
