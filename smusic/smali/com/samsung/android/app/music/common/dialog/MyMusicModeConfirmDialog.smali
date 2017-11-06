.class public Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;
.super Landroid/app/DialogFragment;
.source "MyMusicModeConfirmDialog.java"


# static fields
.field private static final ARGS_IS_MY_MUSIC_ON:Ljava/lang/String; = "args_is_offline_mode_on"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;
    .locals 3
    .param p0, "isOn"    # Z

    .prologue
    .line 30
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;-><init>()V

    .line 31
    .local v1, "fg":Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_is_offline_mode_on"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_is_offline_mode_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 42
    .local v5, "isMyMusicModeOn":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 43
    .local v3, "a":Landroid/app/Activity;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04024c

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 45
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f1200b8

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 46
    .local v9, "title":Landroid/widget/TextView;
    const v0, 0x7f120417

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 47
    .local v8, "message":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 48
    const v0, 0x7f0a0427

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v0, 0x7f0a0428

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const-string v4, "my_music_mode_show_confirm_on"

    .line 57
    .local v4, "doNotShowAgainKey":Ljava/lang/String;
    :goto_0
    const v0, 0x7f1200c9

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 59
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0146

    new-instance v0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a008a

    new-instance v0, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 84
    .local v7, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v7, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 85
    invoke-virtual {v7, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    invoke-virtual {p0, v13}, Lcom/samsung/android/app/music/common/dialog/MyMusicModeConfirmDialog;->setCancelable(Z)V

    .line 87
    return-object v7

    .line 52
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v4    # "doNotShowAgainKey":Ljava/lang/String;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v0, 0x7f0a0424

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 53
    const v0, 0x7f0a0425

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const-string v4, "my_music_mode_show_confirm_off"

    .restart local v4    # "doNotShowAgainKey":Ljava/lang/String;
    goto :goto_0
.end method
