.class public Lcom/android/settings/fingerprint/FingerprintSettings_Utils;
.super Ljava/lang/Object;
.source "FingerprintSettings_Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixel(ILandroid/content/Context;)I
    .locals 4
    .param p0, "dp"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertEvtToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "eventName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 81
    const-string/jumbo v0, "MSG_DEFAULT"

    .line 83
    .local v0, "eventName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 66
    .local v0, "eventName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "MSG_REFRESH_FINGERPRINT_TEMPLATES"

    .local v0, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 69
    .local v0, "eventName":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "MSG_FINGER_AUTH_SUCCESS"

    .local v0, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 72
    .local v0, "eventName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "MSG_FINGER_AUTH_FAIL"

    .local v0, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 75
    .local v0, "eventName":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "MSG_FINGER_AUTH_ERROR"

    .local v0, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 78
    .local v0, "eventName":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "MSG_FINGER_AUTH_HELP"

    .local v0, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMaxFingerEnroll()I
    .locals 9

    .prologue
    .line 32
    const/4 v3, 0x4

    .line 34
    .local v3, "maxNum":I
    const-string/jumbo v0, "google_touch_rear,navi=1"

    .line 36
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 40
    aget-object v6, v5, v2

    const-string/jumbo v7, "settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "settings"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 41
    aget-object v6, v5, v2

    const-string/jumbo v7, "settings"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "num":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 52
    .end local v2    # "i":I
    .end local v4    # "num":Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v6, "FpstFingerprintSettings_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getMaxFingerEnroll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v3

    .line 44
    .restart local v2    # "i":I
    .restart local v4    # "num":Ljava/lang/String;
    .restart local v5    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "FpstFingerprintSettings_Utils"

    const-string/jumbo v7, "getMaxFingerEnroll NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 39
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "num":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isRearSesnor()Z
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "google_touch_rear,navi=1"

    .line 58
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "touch_rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pActivity"    # Landroid/app/Activity;
    .param p1, "errStr"    # Ljava/lang/String;
    .param p2, "isFinish"    # Z

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const-string/jumbo v1, "FpstFingerprintSettings_Utils"

    const-string/jumbo v2, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_0
    const v1, 0x7f0b07cc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 100
    const v1, 0x7f0b07cd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const v2, 0x7f0b07c9

    .line 103
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$1;

    invoke-direct {v2}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$1;-><init>()V

    .line 106
    const v3, 0x104000a

    .line 103
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;

    invoke-direct {v1, p2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method
