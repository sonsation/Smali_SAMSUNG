.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "newPlaylistName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreateRenamePlaylistName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$500(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const v3, 0x7f0a0152

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 249
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->dismissAllowingStateLoss()V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$6;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onClickPositiveButton()V

    goto :goto_0
.end method
