.class public Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "DeviceManagementActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/common/help/MuseHelper$MuseLoginRequestReceivable;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeviceManagementActivity"

.field private static final RESULT_CODE_ALREADY_RESET_IN_MONTH:I = 0x22c4


# instance fields
.field private mDeviceDescription1:Landroid/widget/TextView;

.field private mDeviceDescription2:Landroid/widget/TextView;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$1;-><init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setData()V
    .locals 4

    .prologue
    const v3, 0x7f0a042f

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "DeviceManagementActivity"

    const-string/jumbo v1, "setData - device list is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "DeviceManagementActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setData - registered device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showDeviceDeregisterLimitedDialog()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;-><init>()V

    .line 228
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;
    new-instance v2, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;-><init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;->setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 243
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v2, "DeviceManagementActivity"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 244
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 245
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 252
    sget-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/help/MuseHelper;->launchMuse(Landroid/app/Activity;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 155
    packed-switch p2, :pswitch_data_0

    .line 191
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 167
    const-string v1, "DeviceManagementActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled - Get Downloadable Devices API Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    const-string v1, "DeviceManagementActivity"

    const-string v2, "onApiHandled - Get Downloadable Devices API success"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;

    if-eqz v1, :cond_0

    .line 162
    check-cast p4, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceList:Ljava/util/ArrayList;

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->setData()V

    goto :goto_0

    .line 172
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_2
    packed-switch p3, :pswitch_data_2

    .line 181
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 182
    .local v0, "resultCode":I
    const-string v1, "DeviceManagementActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled  - Delete Downloadable Devices API Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v1, 0x22c4

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->showDeviceDeregisterLimitedDialog()V

    goto :goto_0

    .line 174
    .end local v0    # "resultCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_3
    const-string v1, "DeviceManagementActivity"

    const-string v2, "onApiHandled - Delete Downloadable Devices API success, update device info."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getDownloadbleDevices(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 177
    const v1, 0x7f0a044b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x27e8
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 172
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v3, 0x7f0400db

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->setContentView(I)V

    .line 77
    const v3, 0x7f120286

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription1:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f120289

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mDeviceDescription2:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f12028c

    .line 81
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, "ruleDescription":Landroid/widget/TextView;
    const v3, 0x7f0a0263

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a046d

    .line 83
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 82
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v3, 0x7f12028e

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "resetButton":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 90
    if-nez p1, :cond_0

    .line 91
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "426"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 95
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_1

    .line 96
    const-string v3, "DownloadingDevice"

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/LaunchDeviceManagementResponseExecutor;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/LaunchDeviceManagementResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;

    invoke-direct {v5, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/ResetDeviceExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V

    aput-object v5, v4, v7

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 100
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    return-void
.end method

.method public onRequestResult(II)V
    .locals 3
    .param p1, "req"    # I
    .param p2, "result"    # I

    .prologue
    const/4 v2, 0x1

    .line 258
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getDownloadbleDevices(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 117
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    return-void
.end method

.method public showDeviceDeregisterDialog()V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterDialog;-><init>()V

    .line 199
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterDialog;
    new-instance v3, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$2;-><init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterDialog;->setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 219
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "DeviceManagementActivity"

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 220
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
