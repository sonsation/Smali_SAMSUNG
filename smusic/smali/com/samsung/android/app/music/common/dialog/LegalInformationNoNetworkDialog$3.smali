.class Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;
.super Ljava/lang/Object;
.source "LegalInformationNoNetworkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->setPositiveButton(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 80
    .local v0, "positiveButton":Landroid/widget/Button;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$3;->val$listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method
