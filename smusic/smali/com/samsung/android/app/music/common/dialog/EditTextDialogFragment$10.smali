.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditTextDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->initEditText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;ILandroid/widget/Toast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
    .param p2, "x0"    # I

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "errorCode":I
    invoke-static {}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$900()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/EmojiListUtils;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 378
    :cond_1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 379
    .local v1, "rst":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 380
    or-int/lit8 v0, v0, 0x1

    .line 383
    :cond_2
    if-nez v0, :cond_3

    .line 386
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    .line 387
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 418
    .end local p1    # "source":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .line 391
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$500(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 394
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    .line 395
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const v4, 0x7f0a00d2

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 403
    :cond_4
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 406
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$500(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 407
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$502(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;I)I

    .line 408
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$600(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$10;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const v4, 0x7f0a00ef

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x32

    .line 409
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 408
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_6
    move-object p1, v1

    .line 418
    goto :goto_0
.end method
