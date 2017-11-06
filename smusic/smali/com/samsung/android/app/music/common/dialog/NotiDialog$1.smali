.class Lcom/samsung/android/app/music/common/dialog/NotiDialog$1;
.super Ljava/lang/Object;
.source "NotiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/NotiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/NotiDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/NotiDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/NotiDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 37
    return-void
.end method
