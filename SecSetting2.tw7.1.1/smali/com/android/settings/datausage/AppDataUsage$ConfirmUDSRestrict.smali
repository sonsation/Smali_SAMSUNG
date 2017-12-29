.class public Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;
.super Landroid/app/DialogFragment;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUDSRestrict"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 954
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-direct {v0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    .line 953
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 2
    .param p0, "parent"    # Lcom/android/settings/datausage/AppDataUsage;

    .prologue
    .line 965
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    if-eqz v0, :cond_1

    .line 966
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 968
    :cond_0
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 969
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dismiss()V

    .line 964
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/datausage/AppDataUsage;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/datausage/AppDataUsage;

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 957
    :cond_0
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    :cond_1
    return-object v1

    .line 958
    :cond_2
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 959
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmUDSRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 960
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 976
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 978
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b125b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 979
    new-instance v2, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;-><init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V

    const v3, 0x7f0b125c

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 992
    new-instance v2, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;-><init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1001
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
