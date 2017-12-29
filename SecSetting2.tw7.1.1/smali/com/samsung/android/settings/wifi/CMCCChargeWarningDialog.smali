.class public Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "CMCCChargeWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;
    }
.end annotation


# static fields
.field static mEnableWarningDialog:Landroid/app/AlertDialog;


# instance fields
.field private ShowPopUpTime:I

.field private donotshowagain:Z

.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReceiverRegistered:Z

.field private mcheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mEnableWarningDialog:Landroid/app/AlertDialog;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mIsReceiverRegistered:Z

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->donotshowagain:Z

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->ShowPopUpTime:I

    .line 38
    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v0, "CMCC_wifi_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 129
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->overridePendingTransition(II)V

    .line 127
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 101
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, "edit_boolean":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "cmccap_do_not_show"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    packed-switch p2, :pswitch_data_0

    .line 99
    return-void

    .line 107
    :pswitch_0
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    const-string/jumbo v3, "Selected button is Yes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mBeforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    const-string/jumbo v3, "donotshow checked. - BUTTON_POSITIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string/jumbo v2, "cmccap_value"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    .line 116
    return-void

    .line 105
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f1102df

    const/4 v7, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    const-string/jumbo v5, "CMCC Charge Waring DialogStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mBeforeValue:Landroid/content/SharedPreferences;

    .line 61
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "cmccap_do_not_show"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    .local v1, "do_not_show_again":Z
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "cmccap_value"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    .local v2, "mValue":Z
    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v2, :cond_0

    .line 67
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    const-string/jumbo v5, "Setted button is Connect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    .line 69
    return-void

    .line 71
    :cond_0
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    const-string/jumbo v5, "Setted button is Disconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    .line 73
    return-void

    .line 76
    :cond_1
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 78
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0403bb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0eda

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0eca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0ed8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 85
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mcheckbox:Landroid/widget/CheckBox;

    .line 87
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    const-string/jumbo v5, "setupAlert "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->setupAlert()V

    .line 90
    const-string/jumbo v4, "CMCCChargeWaringDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timer start. delay time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->ShowPopUpTime:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 92
    .local v3, "timer":Ljava/util/Timer;
    new-instance v4, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog$UpdateTimeTask;-><init>(Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;)V

    iget v5, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->ShowPopUpTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 134
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "cmccap_do_not_show"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, "do_not_show_again":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "cmccap_value"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "mValue":Z
    if-eqz v0, :cond_1

    .line 137
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    const-string/jumbo v3, "Setted button is Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    .line 141
    return-void

    .line 143
    :cond_0
    const-string/jumbo v2, "CMCCChargeWaringDialog"

    const-string/jumbo v3, "Setted button is Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CMCCChargeWarningDialog;->finish()V

    .line 145
    return-void

    .line 132
    :cond_1
    return-void
.end method
