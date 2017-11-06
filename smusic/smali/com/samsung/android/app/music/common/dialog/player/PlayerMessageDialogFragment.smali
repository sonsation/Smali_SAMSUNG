.class public final Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;
.super Landroid/app/DialogFragment;
.source "PlayerMessageDialogFragment.java"


# static fields
.field private static final ARGS_CP_ATTRS:Ljava/lang/String; = "args_cp_attrs"

.field private static final SUB_TAG:Ljava/lang/String; = "PlayerMessageDialogFragment: "

.field private static final TAG:Ljava/lang/String; = "PlayerDialog"


# instance fields
.field private mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private create(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .prologue
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getPositiveText()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "positive":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 52
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "negative":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 62
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment$2;-><init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static newInstance(Landroid/os/Bundle;I)Landroid/app/DialogFragment;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "cpAttrs"    # I

    .prologue
    .line 25
    const-string v1, "args_cp_attrs"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;-><init>()V

    .line 27
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 42
    const-string v0, "PlayerDialog"

    const-string v1, "PlayerMessageDialogFragment: onCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->cancel()V

    .line 44
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "args_cp_attrs"

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->obtainMessage(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->create(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method
