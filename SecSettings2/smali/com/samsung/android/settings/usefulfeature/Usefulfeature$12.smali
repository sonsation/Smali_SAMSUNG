.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;
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
    .line 555
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 558
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 560
    const-string/jumbo v3, "any_screen_enabled"

    .line 559
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 561
    .local v0, "bOnehandCheck":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 562
    const-string/jumbo v3, "one_handed_op_wakeup_type"

    const/4 v4, 0x1

    .line 561
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 563
    .local v1, "bOnehandType":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 564
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 565
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    const v2, 0x7f0b0be4

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 557
    .end local v0    # "bOnehandCheck":Z
    .end local v1    # "bOnehandType":Z
    :cond_0
    return-void

    .line 559
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bOnehandCheck":Z
    goto :goto_0

    .line 561
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "bOnehandType":Z
    goto :goto_1

    .line 565
    :cond_3
    const v2, 0x7f0b0be2

    goto :goto_2

    :cond_4
    const v2, 0x7f0b0412

    goto :goto_2
.end method
