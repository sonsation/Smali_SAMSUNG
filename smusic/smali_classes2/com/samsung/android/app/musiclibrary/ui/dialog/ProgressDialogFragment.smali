.class public Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final EXTRA_PROGRESS_DIALOG_MESSAGE:Ljava/lang/String; = "progress_message"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static hideProgressDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 41
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->TAG:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;

    .line 43
    .local v0, "fg":Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->dismiss()V

    .line 46
    :cond_0
    return-void
.end method

.method private static newInstance(I)Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;
    .locals 3
    .param p0, "progressMessage"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 19
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;-><init>()V

    .line 20
    .local v1, "fg":Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "progress_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 23
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->setCancelable(Z)V

    .line 24
    return-object v1
.end method

.method public static showProgressDialog(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "progressMessage"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 29
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 30
    .local v1, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 31
    .local v2, "prevFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->newInstance(I)Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 37
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress_message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "titleRes":I
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/dialog/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    return-object v0
.end method
