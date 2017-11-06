.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;
.super Landroid/app/DialogFragment;
.source "PrivateFileRenameDialog.java"


# instance fields
.field private mPrivateOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->mPrivateOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;-><init>()V

    .line 48
    .local v1, "renameDialog":Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->mPrivateOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 134
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string v11, "PrivateMode"

    const-string v12, "PrivateFileRenameDialog, onCreate()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 60
    .local v4, "data":Landroid/os/Bundle;
    const-string/jumbo v11, "path"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "targetPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 64
    .local v8, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->mPrivateOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 68
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040053

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "customDialog":Landroid/view/View;
    const v11, 0x7f0a00c0

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "title":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/app/music/common/util/UiUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v11, 0x7f1200c9

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 75
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v11, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v11, 0x7f0a007b

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(I)V

    .line 83
    const v11, 0x7f12016b

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 84
    .local v7, "mainText":Landroid/widget/TextView;
    const v11, 0x7f0a0076

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v11, 0x7f0a008a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$2;

    invoke-direct {v12, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$2;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v11, 0x7f0a016f

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;

    invoke-direct {v12, p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const v11, 0x7f0a016d

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$4;

    invoke-direct {v12, p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$4;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v11, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$5;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method
