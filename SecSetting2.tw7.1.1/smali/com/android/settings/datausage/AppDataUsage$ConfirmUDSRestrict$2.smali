.class Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;->this$1:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 996
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get10()Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get10()Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 995
    :cond_0
    return-void
.end method
