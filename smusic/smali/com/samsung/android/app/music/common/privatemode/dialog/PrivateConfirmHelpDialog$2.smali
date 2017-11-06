.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;
.super Ljava/lang/Object;
.source "PrivateConfirmHelpDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$moveToPrivate:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Landroid/widget/CheckBox;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$2;->val$moveToPrivate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    return-void
.end method
