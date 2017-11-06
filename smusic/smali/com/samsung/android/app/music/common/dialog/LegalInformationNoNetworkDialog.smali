.class public Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "LegalInformationNoNetworkDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$4;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method private setPositiveButton(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 27
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 28
    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 31
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a042d

    .line 32
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0244

    .line 33
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a008a

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;)V

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a046c

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 42
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->setPositiveButton(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->setCancelable(Z)V

    .line 52
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->mNetworkStateListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;->onStop()V

    .line 69
    return-void
.end method
