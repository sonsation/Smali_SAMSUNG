.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;
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
    .line 629
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const v1, 0x7f0b04fd

    .line 632
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get29(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 634
    const-string/jumbo v3, "swipe_to_call_message"

    const/4 v4, 0x1

    .line 633
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 635
    .local v0, "swipeToCallCheck":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get29(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 637
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get29(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 638
    if-eqz v0, :cond_2

    .line 639
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get29(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    const v2, 0x7f0b1d08

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 631
    .end local v0    # "swipeToCallCheck":Z
    :cond_0
    :goto_1
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "swipeToCallCheck":Z
    goto :goto_0

    .line 641
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get29(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 642
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x7f0b04fe

    goto :goto_2

    .line 643
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v3

    if-eqz v3, :cond_3

    const v1, 0x7f0b04ff

    goto :goto_2
.end method
