.class public Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;
.super Landroid/app/Activity;
.source "LowBatteryPopup.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mBatteryMessageBox:Landroid/app/AlertDialog;

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;-><init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mBatteryMessageBox:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mBatteryMessageBox:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->exitMusic()V

    return-void
.end method

.method private exitMusic()V
    .locals 2

    .prologue
    .line 106
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->isInLockTaskMode(Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->stopLockTask()V

    .line 111
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->moveTaskToBack(Z)Z

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->finish()V

    .line 114
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    .line 115
    return-void
.end method

.method private showLowBatteryMsg(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryLevel"    # I

    .prologue
    .line 75
    sget-object v1, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->CLASSNAME:Ljava/lang/String;

    const-string/jumbo v2, "showLowBatteryMsg() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$2;-><init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$3;-><init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v1, 0x7f0a0224

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const v1, 0x7f0a00ec

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;-><init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mBatteryMessageBox:Landroid/app/AlertDialog;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mBatteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 103
    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v1, 0x1

    invoke-direct {p0, p0, v1}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->showLowBatteryMsg(Landroid/content/Context;I)V

    .line 36
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->setVolumeControlStream(I)V

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    return-void
.end method
