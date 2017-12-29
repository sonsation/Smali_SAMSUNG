.class public Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 290
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setRetainInstance(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "p"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 297
    const/4 v7, 0x0

    aput-object v1, v6, v7

    const v7, 0x7f0b1dc2

    .line 296
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 299
    const v6, 0x7f0b1dc3

    .line 298
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "summary":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 305
    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;Ljava/lang/String;)V

    .line 304
    const v7, 0x7f0b08df

    .line 300
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 312
    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;)V

    .line 311
    const v7, 0x7f0b13e7

    .line 300
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "l"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object p0

    .line 283
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
