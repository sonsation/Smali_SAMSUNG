.class public Lcom/android/settings/KnoxActiveProtectionEulaActivity;
.super Landroid/app/Activity;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnNextReboot:Landroid/widget/Button;

.field private btnRebootNow:Landroid/widget/Button;

.field private chkConfirm:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private tvEula:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 46
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 48
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method private isKoreaCountryCode()Z
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "ret":Z
    const-string/jumbo v1, "KOREA"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 106
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_reboot_now : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    .line 112
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;-><init>(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)V

    .line 123
    const-wide/16 v4, 0x3e8

    .line 112
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    goto :goto_0

    .line 137
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 142
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 149
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f1104fe
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f04016c

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 65
    const v2, 0x7f0b1208

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :cond_0
    new-instance v2, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    .line 72
    const v2, 0x7f1104fb

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->isKoreaCountryCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    const v3, 0x7f0b120b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :cond_1
    const v2, 0x7f110500

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 78
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const v3, 0x7f0b08df

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_2
    :goto_0
    const v2, 0x7f110501

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 90
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    const v2, 0x7f1104ff

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f1104fe

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 98
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    const-string/jumbo v1, "kapCheckBox"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    .line 172
    .local v2, "isKapEnforced":Z
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    .line 174
    .local v1, "isDeviceTampered":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "isDeviceTampered":Z
    .end local v2    # "isKapEnforced":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxActiveProtectionEulaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    const-string/jumbo v0, "kapCheckBox"

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    return-void
.end method
