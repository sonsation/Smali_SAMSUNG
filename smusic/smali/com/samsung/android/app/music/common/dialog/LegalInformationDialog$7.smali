.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->dismiss()V

    .line 272
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$7;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .line 273
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method
