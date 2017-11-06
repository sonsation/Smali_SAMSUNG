.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;
.super Landroid/app/DialogFragment;
.source "PrivateConfirmHelpDialog.java"


# static fields
.field private static final CONFIRM_CHECK_BOX_ENABLED:Z

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->saveShowConfirmPopupPreference(Z)V

    return-void
.end method

.method public static getInstance([JZZ)Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;
    .locals 3
    .param p0, "list"    # [J
    .param p1, "moveToPrivate"    # Z
    .param p2, "isFolder"    # Z

    .prologue
    .line 48
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;-><init>()V

    .line 49
    .local v1, "confirmDialog":Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "list_items"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 51
    const-string v2, "is_folder"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "move_to_private"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method private saveShowConfirmPopupPreference(Z)V
    .locals 4
    .param p1, "moveToPrivate"    # Z

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "confirm_popup_move_to_private"

    :goto_0
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void

    .line 124
    :cond_0
    const-string v1, "confirm_popup_remove_from_private"

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 59
    invoke-virtual {p0, v8, v8}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->setStyle(II)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 61
    .local v3, "data":Landroid/os/Bundle;
    const-string v8, "move_to_private"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 62
    .local v7, "moveToPrivate":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "layout_inflater"

    .line 66
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 67
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040053

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 68
    .local v6, "mainView":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v8, 0x7f12016b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, "help":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    const v8, 0x7f0a0119

    :goto_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v8, 0x7f1200c9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 84
    .local v2, "checkBox":Landroid/widget/CheckBox;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 87
    if-eqz v7, :cond_1

    const v8, 0x7f0a00fd

    :goto_1
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0146

    new-instance v10, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;

    invoke-direct {v10, p0, v7}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Z)V

    .line 89
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a008a

    new-instance v10, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;

    invoke-direct {v10, p0, v2, v7}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Landroid/widget/CheckBox;Z)V

    .line 102
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 71
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    const v8, 0x7f0a011a

    goto :goto_0

    .line 87
    .restart local v2    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    const v8, 0x7f0a0101

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateModeOnWithAutoOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->dismissAllowingStateLoss()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 119
    return-void
.end method
