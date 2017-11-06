.class Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;
.super Ljava/lang/Object;
.source "DisabledDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    return-void
.end method
