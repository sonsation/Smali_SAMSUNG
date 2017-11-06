.class public final Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;
.super Landroid/app/DialogFragment;
.source "PlayerBottomDialogFragment.java"


# static fields
.field private static final ARGS_CP_ATTRS:Ljava/lang/String; = "args_cp_attrs"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-PlayerDialog"

.field private static final SUB_TAG:Ljava/lang/String; = "PlayerBottomDialogFragment: "

.field private static final TAG:Ljava/lang/String; = "PlayerDialog"


# instance fields
.field private mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private composeView(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .prologue
    const/4 v11, 0x0

    .line 73
    const-string v10, "layout_inflater"

    .line 74
    invoke-virtual {p1, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 75
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getLayout()I

    move-result v4

    .line 76
    .local v4, "layout":I
    if-gtz v4, :cond_0

    .line 78
    const v4, 0x7f04002a

    .line 81
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 82
    .local v9, "root":Landroid/view/View;
    const v10, 0x7f120106

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 83
    .local v5, "main":Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 84
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getPositiveText()Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "positiveText":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 89
    const v10, 0x7f120107

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 90
    .local v7, "positive":Landroid/widget/TextView;
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v10, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;

    invoke-direct {v10, p0, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v7    # "positive":Landroid/widget/TextView;
    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "negativeText":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 104
    const v10, 0x7f120104

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "close":Landroid/widget/ImageView;
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    new-instance v10, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$2;

    invoke-direct {v10, p0, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment$2;-><init>(Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .end local v0    # "close":Landroid/widget/ImageView;
    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getIcon()I

    move-result v1

    .line 117
    .local v1, "drawableRes":I
    if-lez v1, :cond_4

    .line 118
    const v10, 0x7f120105

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 119
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    .end local v2    # "icon":Landroid/widget/ImageView;
    :cond_4
    return-object v9
.end method

.method public static newInstance(Landroid/os/Bundle;I)Landroid/app/DialogFragment;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "cpAttrs"    # I

    .prologue
    .line 39
    const-string v1, "args_cp_attrs"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;-><init>()V

    .line 41
    .local v0, "fg":Landroid/app/DialogFragment;
    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method private resizingDialog()V
    .locals 9

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 127
    .local v1, "dialog":Landroid/app/Dialog;
    if-nez v1, :cond_0

    .line 128
    const-string v7, "SMUSIC-PlayerDialog"

    const-string v8, "PlayerBottomDialogFragment: resizingDialog dialog is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 133
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0d032f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 134
    .local v2, "miniPlayerHeight":I
    const v7, 0x7f0d045b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 135
    .local v3, "offsetY":I
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 136
    .local v6, "window":Landroid/view/Window;
    if-nez v6, :cond_1

    .line 137
    const-string v7, "SMUSIC-PlayerDialog"

    const-string v8, "PlayerBottomDialogFragment: resizingDialog window is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 141
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x50

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    sub-int v7, v2, v3

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    const-string v0, "PlayerDialog"

    const-string v1, "PlayerBottomDialogFragment: onCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->cancel()V

    .line 70
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 50
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "args_cp_attrs"

    .line 51
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v0, v2}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->obtainMessage(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .line 52
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->mPlayerMessage:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->composeView(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/view/View;

    move-result-object v4

    .line 53
    .local v4, "root":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 55
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->create()V

    .line 56
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->resizingDialog()V

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
