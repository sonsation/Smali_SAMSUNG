.class public Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static IS_ACTION_BUTTON:Z

.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateDialogHeight()V

    .line 102
    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 107
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f0b04b8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f0b18b3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 110
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040058

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "headerView":Landroid/view/View;
    const v2, 0x7f11019f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f11014a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->setupAlert()V

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    .line 121
    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private updateDialogHeight()V
    .locals 8

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f1101ae

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 218
    .local v2, "mFragment":Landroid/app/Fragment;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 220
    :cond_0
    const-string/jumbo v4, "BluetoothScanDialog"

    const-string/jumbo v5, "updateDialogHeight :: Can\'t find BT fragment"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 222
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 227
    .local v3, "screenHeight":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 228
    .local v0, "dialogHeight":I
    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 203
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 204
    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "onBluetoothStateChanged :: BluetoothScanDialog will finish by bluetooth disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 202
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateDialogHeight()V

    .line 210
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 83
    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "onCreate :: Can\'t lunch Scandialog, Bluetooth is not ON state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 232
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 235
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    .line 172
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 198
    const-string/jumbo v0, "BluetoothScanDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    .line 197
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 183
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 184
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 178
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 165
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b1356

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 168
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    .line 162
    return-void
.end method

.method public updateScanStateView()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b18b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b1356

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
