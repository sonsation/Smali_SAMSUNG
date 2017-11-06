.class public Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.super Landroid/app/DialogFragment;
.source "MilkAlertDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;,
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;,
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NeturalButtonClickAdapter;,
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;,
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;
    }
.end annotation


# instance fields
.field private mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPostiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mPostiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->setAlertParams(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;)V

    return-void
.end method

.method private setAlertParams(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;)V
    .locals 0
    .param p1, "params"    # Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-nez p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mEnableService:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->apply(Landroid/app/AlertDialog$Builder;)V

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 53
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleable:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 55
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleableOnTouchOutside:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleable:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    .line 62
    :goto_0
    return-object v1

    .line 58
    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 98
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    return-void
.end method

.method public setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    return-void
.end method

.method public setOnNeturalButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    return-void
.end method

.method public setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mPostiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 77
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 79
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 80
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v2, v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->mAlertParams:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 89
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
