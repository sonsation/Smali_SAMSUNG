.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :cond_0
    return-void
.end method
