.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivateMoveDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;


# static fields
.field private static final ABORTDIALOG:Ljava/lang/String; = "privateAbortMoveDialog"

.field private static final RENAMEDIALOG:Ljava/lang/String; = "privateRenameDialog"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private AbortMsg:Ljava/lang/String;

.field private mIsPrivateMode:I

.field private mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mIsPrivateMode:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->AbortMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->sendThreadCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->AbortMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->AbortMsg:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # [J
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "isFolder"    # Z

    .prologue
    .line 81
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;-><init>()V

    .line 82
    .local v1, "moveDialog":Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "list_items"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 84
    const-string v2, "is_folder"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->setCancelable(Z)V

    .line 88
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->initPrivateMode(Landroid/content/Context;[JLjava/lang/String;Z)V

    .line 89
    return-object v1
.end method

.method private initPrivateMode(Landroid/content/Context;[JLjava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listItems"    # [J
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "isFolder"    # Z

    .prologue
    .line 164
    invoke-static {p1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->setPrivateOperationListener(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->startMoveFilesThread([JLjava/lang/String;Z)V

    .line 167
    return-void
.end method

.method private sendThreadCancel()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 292
    :cond_0
    return-void
.end method

.method private setProgress(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 270
    const/16 v0, 0x64

    .line 271
    .local v0, "max":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgressNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgressPercent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_2
    return-void
.end method

.method private setProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->sendThreadCancel()V

    .line 193
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 194
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    sget-object v11, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "onCreateDialog()"

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 96
    .local v2, "data":Landroid/os/Bundle;
    const-string v11, "list_items"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 97
    .local v8, "listItems":[J
    const-string v11, "is_folder"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 98
    .local v6, "isFolder":Z
    const-string/jumbo v11, "path"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "destPath":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 100
    const-string v11, "PrivateMode"

    const-string v12, "PrivateMoveDialogFragment, listItems is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v4, 0x0

    .line 159
    :goto_0
    return-object v4

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 107
    .local v10, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "layout_inflater"

    .line 111
    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 112
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0401f2

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 114
    .local v9, "mainView":Landroid/view/View;
    const v11, 0x7f1202a5

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 115
    const v11, 0x7f120523

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgressNumber:Landroid/widget/TextView;

    .line 116
    const v11, 0x7f120522

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mProgressPercent:Landroid/widget/TextView;

    .line 117
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 121
    .local v4, "dialog":Landroid/app/AlertDialog;
    if-eqz v3, :cond_2

    .line 122
    invoke-static {v0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v7, 0x1

    .line 123
    .local v7, "isMoveToPrivate":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 124
    const v11, 0x7f0a00fd

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 129
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 130
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 131
    const/4 v11, -0x2

    const v12, 0x7f0a008a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$1;

    invoke-direct {v13, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V

    invoke-virtual {v4, v11, v12, v13}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 143
    iget-object v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v11, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->setPrivateOperationListener(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V

    .line 146
    :cond_1
    if-eqz v6, :cond_4

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->getFolderTotalCount(Landroid/content/Context;[J)I

    move-result v11

    mul-int/lit8 v11, v11, 0x64

    .line 147
    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->setProgressMax(I)V

    .line 154
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->isPrivateMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 155
    const/16 v11, 0x1000

    iput v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mIsPrivateMode:I

    goto/16 :goto_0

    .line 122
    .end local v7    # "isMoveToPrivate":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 126
    .restart local v7    # "isMoveToPrivate":Z
    :cond_3
    const v11, 0x7f0a0101

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_2

    .line 151
    :cond_4
    array-length v11, v8

    mul-int/lit8 v11, v11, 0x64

    invoke-direct {p0, v11}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->setProgressMax(I)V

    goto :goto_3

    .line 157
    :cond_5
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mIsPrivateMode:I

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 172
    const-string v0, "PrivateMode"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getPrivateState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getPrivateState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 176
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart() : state changed cancelled or finished. Dialog will be dismissed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->dismissAllowingStateLoss()V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->isPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1000

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mIsPrivateMode:I

    .line 183
    iget v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mIsPrivateMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 184
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getPrivateState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->mPrivateModeFileOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 185
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->getPrivateState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0

    .line 181
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v2, "PrivateMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChanged state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 201
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->sendThreadCancel()V

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 207
    .local v1, "renameDialog":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "privateRenameDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "renameDialog":Landroid/app/DialogFragment;
    :pswitch_2
    iput-object p2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->AbortMsg:Ljava/lang/String;

    .line 211
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$2;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 232
    :pswitch_4
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment$3;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onUpdateProgress(ILjava/lang/String;I)V
    .locals 4
    .param p1, "cnt"    # I
    .param p2, "curFilename"    # Ljava/lang/String;
    .param p3, "curPercent"    # I

    .prologue
    .line 249
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->AbortMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 250
    sget-object v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpdateProgress() AbortMsg != null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-nez p3, :cond_2

    .line 254
    sget-object v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateProgress() cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curFilename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 258
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->setProgress(I)V

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 284
    sget-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 286
    return-void
.end method
