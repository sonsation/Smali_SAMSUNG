.class Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;
.super Ljava/lang/Object;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 14
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 256
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f04ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 257
    .local v8, "screenId":I
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f04cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 258
    .local v5, "eventId":I
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v8, v5}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    .line 259
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 260
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    .line 261
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 262
    .local v9, "sharedpre":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    .line 263
    .local v6, "mTotal":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v11}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "max"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "mTotal":Ljava/lang/String;
    const-string/jumbo v10, "max"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 266
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 267
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v12}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 266
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 272
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x42200000    # 40.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    mul-float v1, v10, v11

    .line 273
    .local v1, "dataUsagePercent":F
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v10, "0.00"

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v10, v1

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "dataStr":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v10

    add-int/lit8 v7, v10, 0x28

    .line 276
    .local v7, "percent":I
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v11}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00f7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v11}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00f7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    const v13, 0x7f0b05b6

    invoke-virtual {v12, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 268
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v1    # "dataUsagePercent":F
    .end local v2    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v7    # "percent":I
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "max"

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 282
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "warningValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-wrap0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    .line 285
    return-void
.end method
