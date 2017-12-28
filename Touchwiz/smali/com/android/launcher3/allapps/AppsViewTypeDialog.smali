.class public Lcom/android/launcher3/allapps/AppsViewTypeDialog;
.super Landroid/app/DialogFragment;
.source "AppsViewTypeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;
    }
.end annotation


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "MenuViewTypeDialog"


# instance fields
.field private final choices:[Ljava/lang/String;

.field private onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->choices:[Ljava/lang/String;

    return-void
.end method

.method public static createAndShow(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V
    .locals 5
    .param p0, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "listener"    # Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/AppsViewTypeDialog;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;-><init>()V

    .line 48
    .local v1, "df":Lcom/android/launcher3/allapps/AppsViewTypeDialog;
    const/4 v2, -0x1

    .line 49
    .local v2, "selected":I
    sget-object v3, Lcom/android/launcher3/allapps/AppsViewTypeDialog$1;->$SwitchMap$com$android$launcher3$allapps$controller$AppsController$ViewType:[I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 57
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "selected"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 60
    const-string v3, "MenuViewTypeDialog"

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p2}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->setOnAppsViewTypeChagnedListener(Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V

    goto :goto_0

    .line 51
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_0
    const/4 v2, 0x0

    .line 52
    goto :goto_1

    .line 54
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 69
    const-string v1, "MenuViewTypeDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 70
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 65
    const-string v0, "MenuViewTypeDialog"

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


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;->onDismiss()V

    .line 118
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 127
    const/4 v2, -0x2

    if-eq p2, v2, :cond_1

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 134
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 139
    .local v1, "viewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    invoke-interface {v2, v1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;->onResult(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 142
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    .end local v1    # "viewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :goto_1
    return-void

    .line 131
    :pswitch_0
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 132
    .restart local v1    # "viewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    goto :goto_0

    .line 144
    .end local v1    # "viewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;->onDismiss()V

    .line 148
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090122

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0900e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->choices:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0900e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 96
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 110
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :goto_0
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "selectedItem":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090088

    .line 104
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->choices:[Ljava/lang/String;

    .line 105
    invoke-virtual {v4, v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09005f

    .line 106
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 110
    .local v1, "dialog":Landroid/app/Dialog;
    goto :goto_0
.end method

.method public setOnAppsViewTypeChagnedListener(Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->onViewTypeChagnedListener:Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;

    .line 78
    return-void
.end method
