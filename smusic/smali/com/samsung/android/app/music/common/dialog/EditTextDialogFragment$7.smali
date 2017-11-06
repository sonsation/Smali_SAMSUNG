.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$7;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onClickNegativeButton()V

    .line 274
    return-void
.end method
