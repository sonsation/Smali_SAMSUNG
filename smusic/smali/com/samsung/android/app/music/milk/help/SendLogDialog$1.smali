.class Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;
.super Ljava/lang/Object;
.source "SendLogDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/help/SendLogDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/help/SendLogDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;->this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;->this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;->this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->sendErrorLog(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;->this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a039b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;->this$0:Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;->dismiss()V

    .line 26
    return-void
.end method
