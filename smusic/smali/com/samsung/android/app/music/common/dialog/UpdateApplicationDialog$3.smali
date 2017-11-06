.class Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$3;
.super Ljava/lang/Object;
.source "UpdateApplicationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$3;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog$3;->this$0:Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;)V

    .line 147
    return-void
.end method
