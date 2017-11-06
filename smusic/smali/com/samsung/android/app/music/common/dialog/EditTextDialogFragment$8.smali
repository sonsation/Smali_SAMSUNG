.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$700(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->updatePositiveButton(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$800(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    goto :goto_1

    .line 290
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$800(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    goto :goto_1

    .line 294
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$800(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$8;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
