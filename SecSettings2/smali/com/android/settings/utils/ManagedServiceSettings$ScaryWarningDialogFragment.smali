.class public Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaryWarningDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/ManagedServiceSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/utils/ManagedServiceSettings;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 168
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v5, "c"

    .line 171
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 174
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    invoke-static {v6}, Lcom/android/settings/utils/ManagedServiceSettings;->-get0(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    invoke-static {v6}, Lcom/android/settings/utils/ManagedServiceSettings;->-get0(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "summary":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v6, v6, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 181
    new-instance v6, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V

    .line 180
    const v7, 0x7f0b112c

    .line 176
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 187
    new-instance v6, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;)V

    .line 186
    const v7, 0x7f0b1399

    .line 176
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    return-object p0
.end method
