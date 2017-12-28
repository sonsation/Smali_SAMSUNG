.class public Lcom/android/launcher3/home/AutoAlignConfirmDialog;
.super Landroid/app/DialogFragment;
.source "AutoAlignConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AutoAlignConfirm"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mUpward:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher3/home/HomeController;Z)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "homeController"    # Lcom/android/launcher3/home/HomeController;
    .param p2, "upward"    # Z

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;-><init>()V

    .line 50
    .local v0, "dialog":Lcom/android/launcher3/home/AutoAlignConfirmDialog;
    invoke-direct {v0, p1}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->setHomeController(Lcom/android/launcher3/home/HomeController;)V

    .line 51
    invoke-direct {v0, p2}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->setAlignDirection(Z)V

    .line 52
    const-string v1, "AutoAlignConfirm"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 68
    const-string v1, "AutoAlignConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 69
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 56
    const-string v0, "AutoAlignConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlignDirection(Z)V
    .locals 0
    .param p1, "upward"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mUpward:Z

    .line 65
    return-void
.end method

.method private setHomeController(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p1, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 61
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const v3, 0x7f0901bb

    const/4 v5, 0x0

    .line 107
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 108
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-boolean v2, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mUpward:Z

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZ)Z

    .line 118
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.showdialog.prefs"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 112
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 113
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 83
    .local v1, "context":Landroid/content/Context;
    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "layout":Landroid/view/View;
    const v3, 0x7f11005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 87
    const v3, 0x7f09001e

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    const v3, 0x7f090031

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0x15

    .line 93
    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x5

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 103
    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 129
    .local v0, "t":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 130
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 132
    .end local v0    # "t":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
