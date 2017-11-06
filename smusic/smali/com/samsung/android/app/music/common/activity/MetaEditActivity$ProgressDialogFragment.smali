.class public Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "MetaEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# static fields
.field private static final EXTRA_PROGRESS_DIALOG_MESSAGE:Ljava/lang/String; = "progress_message"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 617
    const-class v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(I)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 616
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->newInstance(I)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(I)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;
    .locals 3
    .param p0, "progressMessage"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 622
    new-instance v1, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;-><init>()V

    .line 623
    .local v1, "f":Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "progress_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->setCancelable(Z)V

    .line 627
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "progress_message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 633
    .local v1, "titleRes":I
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 635
    return-object v0
.end method
