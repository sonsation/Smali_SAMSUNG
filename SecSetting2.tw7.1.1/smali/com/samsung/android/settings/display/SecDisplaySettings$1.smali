.class Lcom/samsung/android/settings/display/SecDisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const-string/jumbo v1, "Fragment"

    const-string/jumbo v2, "Detached from activity, so stopping update."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_outdoor_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 331
    .local v0, "mIsOutdoorValue":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 332
    if-eqz v0, :cond_2

    .line 333
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    .line 324
    :goto_1
    return-void

    .line 330
    .end local v0    # "mIsOutdoorValue":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mIsOutdoorValue":Z
    goto :goto_0

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto :goto_1
.end method
