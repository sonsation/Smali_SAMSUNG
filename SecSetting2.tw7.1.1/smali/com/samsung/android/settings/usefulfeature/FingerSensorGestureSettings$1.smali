.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "FingerSensorGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "fingerprint_gesture_quick"

    .line 55
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "fingerSensorGestureCheck":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 59
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "fingerSensorGestureCheck":Z
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 54
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fingerSensorGestureCheck":Z
    goto :goto_0

    :cond_1
    move v0, v1

    .line 59
    goto :goto_1
.end method
